import express from "express";

// Utils
import get from "lodash/get";

// Authentication
import { authentication } from "./authentication";

// DB
import { executeQueryOnDB } from "./dataTransfer";

// Calculations
import { calculateWordToAsk, getColorsByKnowledge } from "./calculation/calculateByKnowledgeLevels";
import { calculateDataToSave } from "./calculation/calculateFinalResult";
import { calculateInitialScores } from "./calculation/calculateInitialScores";

// Interfaces
import { GameStatistics, WordWithScores } from "sharedInterfaces";

// Utils
import random from "lodash/random";

const app = express();
const port = 9000;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get("/users", async (req, res) => {
	const data = await executeQueryOnDB("SELECT * FROM USERS", []);
	res.status(200).send(data);
});

/* MY WORDS APIs */

app.get("/my-words/:id", async (req, res) => {
	const userID = req.params.id;
	const { numberOfDisplayedRows } = req.query;
	const activeWords = await executeQueryOnDB('SELECT * FROM words WHERE "ownerId" = $1 AND "deletionDate" IS NULL ORDER BY english ASC LIMIT $2', [
		userID,
		numberOfDisplayedRows,
	]);
	const deletedWords = await executeQueryOnDB(
		'SELECT * FROM words WHERE "ownerId" = $1 AND "deletionDate" IS NOT NULL ORDER BY english ASC LIMIT $2',
		[userID, numberOfDisplayedRows],
	);

	if (activeWords.error) {
		console.log(activeWords);
		res.status(409).json(activeWords);
	}
	if (deletedWords.error) {
		console.log(activeWords);
		res.status(409).json(deletedWords);
	} else {
		res.status(200).send({ activeWords, deletedWords });
	}
});

app.post("/my-words", async (req, res) => {
	const { ownerId, english, hungarian, exampleSentences, notes, type, favourite, deletionDate, statistics }: WordWithScores = req.body;
	const { memoryLevel, actualScore, finalScore } = calculateInitialScores(req.body);

	const response = await executeQueryOnDB(
		`INSERT INTO words(
		"ownerId", 
		english, 
		hungarian, 
		"exampleSentences", 
		notes, 
		type, 
		favourite, 
		"deletionDate", 
		"memoryLevel", 
		"actualScore", 
		"finalScore", 
        statistics)
		VALUES ( $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING *`,
		[
			ownerId,
			english,
			JSON.stringify(hungarian),
			JSON.stringify(exampleSentences),
			notes,
			type,
			favourite,
			deletionDate,
			memoryLevel,
			actualScore,
			finalScore,
			statistics,
		],
		true,
	);
	if (response.error) {
		console.log(response);
		res.status(409).json(response);
	} else {
		res.status(201).send(response);
	}
});

app.put("/my-words", async (req, res) => {
	const { ownerId, english, hungarian, exampleSentences, notes, type, favourite, deletionDate, statistics, id }: WordWithScores = req.body;
	const { memoryLevel, actualScore, finalScore } = calculateInitialScores(req.body);

	const response = await executeQueryOnDB(
		`UPDATE words
		SET 
		"ownerId" = $1, 
		english = $2, 
		hungarian = $3, 
		"exampleSentences" = $4, 
		notes = $5, 
		type = $6, 
		favourite = $7, 
		"deletionDate" = $8, 
		"memoryLevel" = $9, 
		"actualScore" = $10, 
		"finalScore" = $11,
        statistics = $12
		WHERE id = $13
		RETURNING *`,
		[
			ownerId,
			english,
			JSON.stringify(hungarian),
			JSON.stringify(exampleSentences),
			notes,
			type,
			favourite,
			deletionDate,
			memoryLevel,
			actualScore,
			finalScore,
			statistics,
			id,
		],
		true,
	);

	if (response.error) {
		console.log(response);
		res.status(409).json(response);
	} else {
		res.status(200).send(response);
	}
});

app.delete("/my-words", async (req, res) => {
	const { id } = req.body;
	const response = await executeQueryOnDB(`DELETE FROM words WHERE id = $1 RETURNING *`, [id], true);

	if (response.error) {
		console.log(response);
		res.status(409).json(response);
	} else {
		res.status(200).send(response);
	}
});

/* LET'S PLAY APIs */

app.get("/lets-play", async (req, res) => {
	const numberOfWords = get(req, "query.numberOfWords", []);

	const playerIdStrings: string[] = get(req, "query.players", []);
	const playerIds: number[] = playerIdStrings.map((playerId: string) => parseInt(playerId));

	const owners = await executeQueryOnDB("SELECT id, name, gender FROM users WHERE id IN ($1, $2)", [...playerIds]);

	const wordsSelectQuery = 'SELECT * FROM words WHERE "ownerId" = $1 ORDER BY random() LIMIT $2';
	const firstPlayerWords = await executeQueryOnDB(wordsSelectQuery, [playerIds[0], numberOfWords]);
	const secondPlayerWords = await executeQueryOnDB(wordsSelectQuery, [playerIds[1], numberOfWords]);

	if (firstPlayerWords.length < numberOfWords || secondPlayerWords.length < numberOfWords) {
		res.status(409).json({ error: `Both players should have at least ${numberOfWords} words for the game!` });
		return;
	}

	// calculate the final words array, where the words are alternately in the list
	const words = [];
	const gameStarter = random(1);
	for (let i = 0; i < firstPlayerWords.length; i++) {
		const firstPlayerWord = firstPlayerWords[i];
		const secondPlayerWord = secondPlayerWords[i];

		const firstPlayerWordInGame = {
			...firstPlayerWord,
			...calculateWordToAsk(firstPlayerWord),
			tagColors: getColorsByKnowledge(firstPlayerWord),
		};
		const secondPlayerWordInGame = {
			...secondPlayerWord,
			...calculateWordToAsk(secondPlayerWord),
			tagColors: getColorsByKnowledge(secondPlayerWord),
		};

		if (gameStarter === 0) {
			words.push(firstPlayerWordInGame);
			words.push(secondPlayerWordInGame);
		} else {
			words.push(secondPlayerWordInGame);
			words.push(firstPlayerWordInGame);
		}
	}

	const grammaticalStructures = await executeQueryOnDB("SELECT * FROM grammatical_structures ORDER BY random() LIMIT $1", [numberOfWords * 2]);

	const data = { owners, words, grammaticalStructures };
	res.status(200).send(data);
});

app.put("/lets-play/:wordId", async (req, res) => {
	const {
		word,
		gameStatistics,
		grammaticalStructure,
	}: { word: WordWithScores; gameStatistics: GameStatistics; grammaticalStructure: { id: number; known: boolean } } = req.body;

	// Update word scores
	const { actualScore, memoryLevel, statistics, deletionDate } = calculateDataToSave(word, gameStatistics);
	const wordsResponse = await executeQueryOnDB(
		`UPDATE words
		SET 
		"memoryLevel" = $1, 
		"actualScore" = $2, 
		"statistics" = $3,
		"deletionDate" = $4
		WHERE id = $5
		RETURNING *`,
		[memoryLevel, actualScore, statistics, deletionDate, req.params.wordId],
		true,
	);

	if (wordsResponse.error) {
		console.log(wordsResponse);
		res.status(409).json(wordsResponse);
		return;
	}

	// Checked saved grammatical statistics
	const previousGrammaticalLevel = await executeQueryOnDB(
		`SELECT * FROM users_and_grammatical_structures WHERE "userId" = $1 and "grammaticalStructureId" = $2`,
		[word.ownerId, grammaticalStructure.id],
		true,
	);

	// If the grammatical statistics doesn't exist, insert into the DB
	if (previousGrammaticalLevel === undefined) {
		const response = await executeQueryOnDB(
			`INSERT INTO users_and_grammatical_structures(
            "userId", "grammaticalStructureId", asked, known)
            VALUES ($1, $2, $3, $4)
		    RETURNING *`,
			[word.ownerId, grammaticalStructure.id, 1, grammaticalStructure.known ? 1 : 0],
			true,
		);
		if (response.error) {
			console.log(response);
			res.status(409).json(response);
			return;
		}
	} else {
		// If the grammatical statistics exists, update the DB record
		const response = await executeQueryOnDB(
			`UPDATE users_and_grammatical_structures
		        SET asked = $3, known = $4
		        WHERE "userId" = $1 AND "grammaticalStructureId" = $2
		        RETURNING *`,
			[
				word.ownerId,
				grammaticalStructure.id,
				previousGrammaticalLevel.asked + 1,
				previousGrammaticalLevel.known + (grammaticalStructure.known ? 1 : 0),
			],
			true,
		);
		if (response.error) {
			console.log(response);
			res.status(409).json(response);
			return;
		}
	}

	res.status(200).send(wordsResponse);
});

/* PRACTICE GRAMMATICAL STRUCTURES APIs */

app.get("/practice/grammatical-structures", async (req, res) => {
	const numberOfStructures = 5;

	const grammaticalStructures = await executeQueryOnDB("SELECT * FROM grammatical_structures ORDER BY random() LIMIT $1", [numberOfStructures * 2]);

	res.status(200).send({ grammaticalStructures });
});

app.listen(port, () => {
	console.log(`App running on port ${port}.`);
});
