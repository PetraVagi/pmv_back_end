export type WordType = "word" | "expression";
export type LanguageType = "english" | "hungarian";

export interface WordStatistics {
	english: number;
	hungarian: number[];
}
export interface Word {
	id: number;
	ownerId: number;
	english: string;
	hungarian: string[];
	exampleSentences: string[];
	notes: string | null;
	type: WordType;
	favourite: boolean;
	deletionDate: Date | null;
	memoryLevel: number;
}
export interface WordWithScores extends Word {
	actualScore: number;
	finalScore: number;
	statistics: WordStatistics;
}

/* Used in Game feature */
export interface KnowledgeLevel {
	language: LanguageType;
	index?: number;
	point: number;
}

export type ProgressColorType = "progressBlue" | "progressRed" | "progressGreen";

export interface TagColor extends KnowledgeLevel {
	color: ProgressColorType;
}

export interface GameStatistics {
	english: boolean;
	hungarian: boolean[];
}
