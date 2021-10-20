import { pool } from "./dbConnection";

/* REFACTOR: We have to merge these two functions to a one */

export async function getDataFromDB(query: string, values: any[] = [], returnFirstRow?: boolean) {
	try {
		const result = await pool.query(query, values);
		return returnFirstRow ? result.rows[0] : result.rows;
	} catch (err) {
		console.log(err.stack);
	}
}

export async function executeQueryOnDB(query: string, values: any[] = [], returnFirstRow?: boolean) {
	try {
		const result = await pool.query(query, values);
		return returnFirstRow ? result.rows[0] : result.rows;
	} catch (err) {
		const { name, message, stack, detail, table } = err;
		return { error: name, message, stack, detail, table };
	}
}
