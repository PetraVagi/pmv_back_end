// Interfaces
import { WordWithScores } from "sharedInterfaces";

// Utils
import round from "lodash/round";
import sum from "lodash/sum";

export function calculateMemoryLevel(actualScore: number, finalScore: number) {
	return round((actualScore / finalScore) * 100, 0);
}

export function calculateInitialScores(word: WordWithScores): { memoryLevel: number; actualScore: number; finalScore: number } {
	const actualScore = word.statistics.english + sum(word.statistics.hungarian);
	const finalScore = (1 + word.hungarian.length) * 10;

	return { memoryLevel: calculateMemoryLevel(actualScore, finalScore), actualScore, finalScore };
}
