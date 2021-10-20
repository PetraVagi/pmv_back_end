import express from "express";
import { authentication } from "./authentication";
import { getDataFromDB } from "./dataTransfer";

// Utils
import get from "lodash/get";

const app = express();
const port = 9000;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get("/", (req, res) => {
	res.send({ info: "Node.js, Express, and Postgres API" });
});

app.post("/:id", (req, res) => {
	console.log(req.params.id);
	console.log(req.body);
	res.send({ info: "Post method" });
});

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

	if (firstPlayerWords.length < numberOfWords || secondPlayerWords < numberOfWords) {
		res.status(200).send({ error: `Both players should have at least ${numberOfWords} words!` });
	}

	// calculate the final words array, where the words are alternately in the list
	// this is only important, because in the first version we are playing on the same computer
	// later you only need to see your opponent's words
	const words = [];
	for (let i = 0; i < firstPlayerWords.length; i++) {
		words.push(firstPlayerWords[i]);
		words.push(secondPlayerWords[i]);
	}

	// TODO later calculate from the statistics table (users_and_grammatical_structures)
	const grammaticalStructures = await getDataFromDB(`SELECT * FROM grammatical_structures ORDER BY random() LIMIT ${numberOfWords * 2}`);

	const data = { owners, words, grammaticalStructures };
	res.status(200).send(data);
});

app.listen(port, () => {
	console.log(`App running on port ${port}.`);
});
