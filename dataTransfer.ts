import { pool } from "./dbConnection";

export async function executeQueryOnDB(query: string, values: any[] = [], returnFirstRow?: boolean) {
	try {
		const result = await pool.query(query, values);
		return returnFirstRow ? result.rows[0] : result.rows;
	} catch (err) {
		const { name, message, stack, detail, table } = err;
		return { error: name, message, stack, detail, table };
	}
}
