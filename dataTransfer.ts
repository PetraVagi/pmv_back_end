import { pool } from "./dbConnection";

export async function getDataFromDB(query: string, returnFirstRow?: boolean) {
	try {
		const result = await pool.query(query, []);
		return returnFirstRow ? result.rows[0] : result.rows;
	} catch (err) {
		console.log(err.stack);
	}
}
