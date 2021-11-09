// Interfaces
import { WordWithScores } from "sharedInterfaces";

// Utils
import sum from "lodash/sum";
import round from "lodash/round";

export function calculateMemoryLevel(actualScore: number, finalScore: number): number {
	return round((actualScore / finalScore) * 100, 0);
}

export function calculateKnowLedgeLevels(word: WordWithScores): { memoryLevel: number; actualScore: number; finalScore: number } {
	const englishScore = sum(Object.values(word.english));
	const hungarianScore = sum(Object.values(word.hungarian));
	const actualScore = englishScore + hungarianScore;
	const finalScore = Object.values(word.hungarian).length + 1;

	return { memoryLevel: calculateMemoryLevel(actualScore, finalScore), actualScore, finalScore };
}
