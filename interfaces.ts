export interface User {
	name: string;
	gender: "male" | "female";
	id: number;
}

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
export interface Points {
	[ownerId: number]: number;
}

export interface Usage {
	description: string;
	example: string;
}
export interface GrammaticalStructure {
	id: number;
	title: string;
	subtitle: string;
	forming: string;
	notes: string | null;
	basicSentences: string[];
	realLifeUsages: Usage[];
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