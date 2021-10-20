import { WordWithScores } from "./interfaces";
import express from "express";

// Utils
import get from "lodash/get";

// Authentication
import { authentication } from "./authentication";

// DB
import { executeQueryOnDB, getDataFromDB } from "./dataTransfer";

// Calculations
import { calculateWordToAsk, getColorsByKnowledge } from "./calculation/calculateByKnowledgeLevels";
import { calculateDataToSave } from "./calculation/calculateFinalResult";

const app = express();
const port = 9000;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get("/users", async (req, res) => {
	const data = await getDataFromDB("SELECT * FROM USERS", []);
	res.status(200).send(data);
});

/* MY WORDS APIs */

app.get("/my-words/:id", async (req, res) => {
	const userID = req.params.id;
	const { numberOfDisplayedRows } = req.query;
	const activeWords = await getDataFromDB('SELECT * FROM words WHERE "ownerId" = $1 AND "deletionDate" IS NULL ORDER BY english ASC LIMIT $2', [
		userID,
		numberOfDisplayedRows,
	]);
	const deletedWords = await getDataFromDB(
		'SELECT * FROM words WHERE "ownerId" = $1 AND "deletionDate" IS NOT NULL ORDER BY english ASC LIMIT $2',
		[userID, numberOfDisplayedRows],
	);
	/* TODO: Error handling is missing */
	res.status(200).send({ activeWords, deletedWords });
});

app.post("/my-words", async (req, res) => {
	/* TODO: Data validation is missing */
	/* TODO: Authentication is missing */
	const {
		ownerId,
		english,
		hungarian,
		exampleSentences,
		notes,
		type,
		favourite,
		deletionDate,
		memoryLevel,
		actualScore,
		finalScore,
	}: WordWithScores = req.body;

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
		"finalScore")
		VALUES ( $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11) RETURNING *`,
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
		],
	);
	if (response.error) {
		console.log(response);
		res.status(409).json(response);
	} else {
		const savedWord = response.rows[0];
		res.status(201).send(savedWord);
	}
});

app.put("/my-words", async (req, res) => {
	const {
		ownerId,
		english,
		hungarian,
		exampleSentences,
		notes,
		type,
		favourite,
		deletionDate,
		memoryLevel,
		actualScore,
		finalScore,
		id,
	}: WordWithScores = req.body;

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
		"finalScore" = $11
		WHERE id = $12
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
			id,
		],
	);

	if (response.error) {
		console.log(response);
		res.status(409).json(response);
	} else {
		const savedWord = response.rows[0];
		res.status(200).send(savedWord);
	}
});

app.delete("/my-words", async (req, res) => {
	const { id } = req.body;
	const response = await executeQueryOnDB(`DELETE FROM words WHERE id = $1 RETURNING *`, [id]);

	if (response.error) {
		console.log(response);
		res.status(409).json(response);
	} else {
		const savedWord = response.rows[0];
		res.status(200).send(savedWord);
	}
});

/* LET'S PLAY APIs */

app.get("/lets-play", async (req, res) => {
	const numberOfWords = 2;

	const playerIdStrings: string[] = get(req, "query.players", []);
	const playerIds: number[] = playerIdStrings.map((playerId: string) => parseInt(playerId));

	const owners = await getDataFromDB(`SELECT id, name, gender FROM users WHERE id IN ($1, $2)`, [...playerIds]);

	// TODO later use more complex logic for the selection
	const wordsSelectQuery = `SELECT * FROM words WHERE favourite = true AND "ownerId" = $1 ORDER BY id LIMIT ${numberOfWords}`;
	const firstPlayerWords = await getDataFromDB(wordsSelectQuery, [playerIds[0]]);
	const secondPlayerWords = await getDataFromDB(wordsSelectQuery, [playerIds[1]]);

	if (firstPlayerWords.length < numberOfWords || secondPlayerWords.length < numberOfWords) {
		res.status(200).send({ error: `Both players should have at least ${numberOfWords} words for the game!` });
		return;
	}

	// calculate the final words array, where the words are alternately in the list
	const words = [];
	for (let i = 0; i < firstPlayerWords.length; i++) {
		const firstPlayerWord = firstPlayerWords[i];
		const secondPlayerWord = secondPlayerWords[i];
		words.push({ ...firstPlayerWord, ...calculateWordToAsk(firstPlayerWord), tagColors: getColorsByKnowledge(firstPlayerWord) });
		words.push({ ...secondPlayerWord, ...calculateWordToAsk(secondPlayerWord), tagColors: getColorsByKnowledge(secondPlayerWord) });
	}

	// TODO later calculate from the statistics table (users_and_grammatical_structures)
	const grammaticalStructures = await getDataFromDB(`SELECT * FROM grammatical_structures ORDER BY random() LIMIT ${numberOfWords * 2}`);

	const data = { owners, words, grammaticalStructures };
	res.status(200).send(data);
});

app.put("/lets-play/:id", async (req, res) => {
	const { word, gameStatistics } = req.body;

	const { actualScore, memoryLevel, statistics, deletionDate } = calculateDataToSave(word, gameStatistics);

	const response = await executeQueryOnDB(
		`UPDATE words
		SET 
		"memoryLevel" = $1, 
		"actualScore" = $2, 
		"statistics" = $3,
		"deletionDate" = $4
		WHERE id = $5
		RETURNING *`,
		[memoryLevel, actualScore, statistics, deletionDate, req.params.id],
		true,
	);

	if (response.error) {
		console.log(response);
		res.status(409).json(response);
	} else {
		res.status(200).send(response);
	}

	/*  TODO 
		2) save the grammatical knowledge (correctGrammar in state) to some grammatical statistics table
 		*/
});

app.listen(port, () => {
	console.log(`App running on port ${port}.`);
});
