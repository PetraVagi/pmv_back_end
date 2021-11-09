// Utils
import get from "lodash/get";
import set from "lodash/set";
import round from "lodash/round";
import cloneDeep from "lodash/cloneDeep";

// Interfaces
import { WordWithScores, GameStatistics, MeaningWithPoint } from "sharedInterfaces";

function calculateStatisticsForMeanings(
	meanings: MeaningWithPoint,
	gameStatisticsForMeanings: { [meaning: string]: boolean } | boolean,
): MeaningWithPoint {
	const result = cloneDeep(meanings);

	Object.keys(meanings).forEach((meaning: string) => {
		if (get(gameStatisticsForMeanings, meaning, false) === true || gameStatisticsForMeanings === true) {
			set(result, meaning, get(meanings, meaning, 0) + 1);
		}
	});
	return result;
}

/* 
We store your knowledge levels in the english and hungarian column, 
your knowledge levels are needed for the statistics of the meanings (which one is your weakest and strongest point).
The sum of the object's values should be the ActualScore */
function calculateStatisticsToSave(word: WordWithScores, gameStatistics: GameStatistics): { english: MeaningWithPoint; hungarian: MeaningWithPoint } {
	return {
		english: calculateStatisticsForMeanings(word.english, gameStatistics.english),
		hungarian: calculateStatisticsForMeanings(word.hungarian, gameStatistics.hungarian),
	};
}

function calculateScoresToSave(word: WordWithScores, gameStatistics: GameStatistics): { actualScore: number; memoryLevel: number } {
	const englishScore = gameStatistics.english ? 1 : 0;
	const hungarianScore = Object.values(gameStatistics.hungarian).filter((stat: boolean) => stat === true).length;
	const scoreNow = englishScore + hungarianScore;
	const actualScore = word.actualScore + scoreNow;

	return { actualScore, memoryLevel: round((actualScore / word.finalScore) * 100, 0) };
}

function calculateDeletionDateToSave(word: WordWithScores, actualScore: number): Date | null {
	// set deletionDate, if you don't have to practice this word anymore
	if (actualScore > word.finalScore) {
		return new Date();
	}
	return null;
}

export function calculateDataToSave(word: WordWithScores, gameStatistics: GameStatistics): WordWithScores {
	const { english, hungarian } = calculateStatisticsToSave(word, gameStatistics);
	const { actualScore, memoryLevel } = calculateScoresToSave(word, gameStatistics);
	const deletionDate = calculateDeletionDateToSave(word, actualScore);

	return { ...word, english, hungarian, actualScore, memoryLevel, deletionDate };
}
