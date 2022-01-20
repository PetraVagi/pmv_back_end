import { WordPracticeType } from "sharedInterfaces";
export interface PracticeSettings {
	practiceTypes: WordPracticeType[];
	practicesWithWrongAnswers: number;
}
