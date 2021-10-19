import { pool } from "./dbConnection";

export function getDataFromDB(query: string, returnFirstRow?: boolean) {
	const result = pool.query(query, (error, result) => {
		if (error) {
			throw error;
		}
		return returnFirstRow ? result.rows[0] : result.rows;
	});
	pool.end();
	console.log("result", result);
	return result;
}
