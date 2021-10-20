import { WordWithScores } from "./interfaces";
import express from "express";
import { authentication } from "./authentication";
import { executeQueryOnDB, getDataFromDB } from "./dataTransfer";
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
	const activeWords = await getDataFromDB('SELECT * FROM words WHERE "ownerId" = $1 AND "deletionDate" IS NULL LIMIT $2', [
		userID,
		numberOfDisplayedRows,
	]);
	const deletedWords = await getDataFromDB('SELECT * FROM words WHERE "ownerId" = $1 AND "deletionDate" IS NOT NULL LIMIT $2', [
		userID,
		numberOfDisplayedRows,
	]);
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

	const savedWord = response.rows[0];
	res.status(200).send(savedWord);
});

app.listen(port, () => {
	console.log(`App running on port ${port}.`);
});
