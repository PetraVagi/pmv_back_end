import express from "express";
import { getUsers } from "./queries";
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

app.get("/users", getUsers);

app.listen(port, () => {
	console.log(`App running on port ${port}.`);
});
