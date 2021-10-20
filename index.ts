import express from "express";

// Utils
import get from "lodash/get";

// Authentication
import { authentication } from "./authentication";

// DB
import { getDataFromDB } from "./dataTransfer";

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

app.get("/my-words", async (req, res) => {
	const data = await getDataFromDB("SELECT * FROM words WHERE onwer_id = $1", []); //Here we need to use the user_id
});

/* LET'S PLAY APIs */

app.get("/lets-play", async (req, res) => {
	const numberOfWords = 2;

	const playerIdStrings: string[] = get(req, "query.players", []);
	const playerIds: number[] = playerIdStrings.map((playerId: string) => parseInt(playerId));

	const owners = await getDataFromDB(`SELECT id, name, gender FROM users WHERE id IN ($1, $2)`, [...playerIds]);

	// TODO later use more complex logic for the selection
	const wordsSelectQuery = `SELECT * FROM words WHERE favourite = true AND "ownerId" = $1 LIMIT ${numberOfWords}`;
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
	console.log(req.body);
	const { word, gameStatistics } = req.body;

	const wordToSave = calculateDataToSave(word, gameStatistics);
	console.log(wordToSave);
	/*  TODO 
		1) save to database (it would be better, if we didn't need the whole word, just the modified columns)
		2) save the grammatical knowledge (correctGrammar in state) to some grammatical statistics table
 		*/

	res.status(200).send({ siker: "yeesss" });
});

app.listen(port, () => {
	console.log(`App running on port ${port}.`);
});
