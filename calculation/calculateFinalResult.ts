// Utils
import get from "lodash/get";
import set from "lodash/set";
import round from "lodash/round";
import cloneDeep from "lodash/cloneDeep";

// Interfaces
import { WordWithScores, GameStatistics, WordStatistics } from "../interfaces";

function calculateScoresToSave(word: WordWithScores, gameStatistics: GameStatistics): { actualScore: number; memoryLevel: number } {
	const englishScore = gameStatistics.english ? 1 : 0;
	const hungarianScore = gameStatistics.hungarian.filter((s: boolean) => s === true).length;
	const scoreNow = englishScore + hungarianScore;
	const actualScore = word.actualScore + scoreNow;

	return { actualScore, memoryLevel: round((actualScore / word.finalScore) * 100, 2) };
}

function calculateStatisticsToSave(word: WordWithScores, gameStatistics: GameStatistics): WordStatistics {
	const statisticsToSave = cloneDeep(word.statistics) || { english: 0, hungarian: word.hungarian.map(() => 0) };

	function checkAndSetLanguageStatistics(path: any[]) {
		if (get(gameStatistics, path, false) === true) {
			const languageLevel = get(statisticsToSave, path, 0);
			set(statisticsToSave, path, languageLevel + 1);
		}
	}

	checkAndSetLanguageStatistics(["english"]);

	word.hungarian.forEach((h: string, index: number) => {
		checkAndSetLanguageStatistics(["hungarian", index]);
	});

	return statisticsToSave;
}

function calculateDeletionDateToSave(word: WordWithScores, actualScore: number): Date | null {
	// set deletionDate, if you don't have to practice this word anymore
	if (actualScore > word.finalScore) {
		return new Date();
	}
	return null;
}

export function calculateDataToSave(word: WordWithScores, gameStatistics: GameStatistics): WordWithScores {
	const { actualScore, memoryLevel } = calculateScoresToSave(word, gameStatistics);
	const statisticsToSave = calculateStatisticsToSave(word, gameStatistics);
	const deletionDate = calculateDeletionDateToSave(word, actualScore);

	return { ...word, actualScore, memoryLevel, statistics: statisticsToSave, deletionDate };
}
