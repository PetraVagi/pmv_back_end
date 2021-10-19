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
	finalScore: number /* FIXME: This is missing from the DB */;
	/* statistics: WordStatistics; */
}

/* TODO: A shared repo for interfaces would be a better solution than the current double administration of these interfaces */
