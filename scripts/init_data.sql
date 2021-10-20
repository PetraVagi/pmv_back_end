/* users */
INSERT INTO public.users(name, gender)
VALUES ('Petra', 'woman'),
	('Attila', 'man');
/* words */
INSERT INTO public.words(
		"ownerId",
		english,
		hungarian,
		"exampleSentences",
		notes,
		type,
		favourite,
		"deletionDate",
		"memoryLevel",
		"actualScore",
		"finalScore",
		statistics
	)
VALUES (
		1,
		'ditch',
		'["árok", "csatorna", "körülárkol"]',
		'["Why do you have a ditch in front of your house?"]',
		'A narrow channel dug in the ground, typically used for drainage alongside a road or the edge of a field.',
		'word',
		true,
		null,
		50,
		20,
		40,
		'{
			"english": 8,
			"hungarian": [8, 1, 3]
		}'
	),
	(
		2,
		'candid',
		'["őszinte", "nyílt", "pártatlan"]',
		'["His responses were remarkably candid.", "Candid is my new favourite word."]',
		null,
		'word',
		true,
		null,
		0,
		0,
		40,
		'{
			"english": 0,
			"hungarian": [0, 0, 0]
		}'
	),
	(
		1,
		'correct',
		'["helyes", "korrekt", "helytálló", "kijavít", "helyesbít", "korrigál", "javít"]',
		'["Make sure you have been given the correct information"]',
		'Free from error.',
		'word',
		true,
		null,
		90,
		72,
		80,
		'{
			"english": 10,
			"hungarian": [12, 8, 6, 9, 5, 10, 12]
		}'
	),
	(
		2,
		'achieve',
		'["elér", "megvalósít"]',
		'["He achieved his ambition to become a journalist"]',
		null,
		'word',
		true,
		null,
		27,
		8,
		30,
		'{
			"english": 2,
			"hungarian": [5, 1]
		}'
	);
/* grammatical structures */
INSERT INTO public.grammatical_structures(
		title,
		subtitle,
		forming,
		notes,
		"basicSentences",
		"realLifeUsages"
	)
VALUES (
		'Simple present',
		'Egyszerű jelen',
		'Egyes szám harmadik személyben az ige -s ragot kap. Segédige: do, does.',
		null,
		'["I work.", "I don''t work", "Do you work?", "Where do you work?", "Wo works here?", "Wo doesn''t work here?"]',
		'[{
				"description":
					"Ismétlődő cselekvéseknél. Határozószók: always, usually, never, often, sometimes, rarely, seldom, every day, every week, twice a month stb.",
				"example": "I often go abroad in summer."
			},
			{
				"description": "Ha valamiről általánosságban beszélünk.",
				"example": "Waiters work in restaurants"
			},
			{
				"description": "Ha örök igazságról beszélünk.",
				"example": "The Earth goes round the Sun."
			},
			{
				"description": "Ha valamilyen cselekvést közvetítünk pl TV-n, rádión.",
				"example": "...and Éles Józsi throws the ball into the goal!"
			},
			{
				"description": "Ha valamilyen menetrendszerű dologról beszélünk.",
				"example": "The train leaves at 8 o''clock."
			},
			{
				"description": "Here and there után, azonban a szórend megváltozik.",
				"example": "Here comes Jack. DE személyes névmással egyenes szórend: Here he comes."
			}]'
	),
	(
		'Present continuous',
		'Folyamatos jelen',
		'to be + ige + -ing',
		'Leggyakrabban használt, változást kifejező igék: decline - csökken, hanyatlik; fall - esik, csökken; rise - nő, emelkedik; decrease - csökken;
        increase - nő, improve - javul, fejlődik (fejleszt); get better - javul, egyre jobb; get worse - romlik, egyre rosszab; get late/dark - későre jár, sötétedik; 
        get + melléknév - válik valamilyenné; grow - nő (termeszt); grow + melléknév - válik valamilyenné (grow cold, grow old)',
		' ["I am working.", "I''m not working", "Are you working?", "Where are you working?", "Wo is working here?"]',
		'[
            {
                "description":
                    "Ha a cselekvés a kijelentés időpontjában folyamatosan zajlik. Gyakori határozószók: now, at present, at the moment, just now.",
                "example": "We are studying English now."
            },
            {
                "description":
                    "Ha a cselekvés a kijelentés ideje körül zajlik. Ezt a cselekvést még korábban elkezdtük, de nem fejeztük be. A cselekvés egy ideig kitölti az életünket, és az is lehet, hogy a jelen pillanatban éppen nem zajlik.",
                "example": "What are you doing Steven? I am working on a new documentary."
            },
            {
                "description": "Változó helyzet kifejezésére. (A leggyakrabban használt igék a megjegyzésben)",
                "example": "The rate of unemployement is falling."
            },
            {
                "description": "Átmeneti helyzet kifejezésére.",
                "example": "I am studying hard this week because I want to pass the exam."
            },
            {
                "description": "A megszokottól eltérő cselekvés kifejezésére.",
                "example": "I usually do exercises in the evenings but today I am playing cards with my friends."
            },
            {
                "description": "Előre eltervezett, jövőbeli cselekvés kifejezésére.",
                "example": "Tomorrow I''m having lunch with my boss."
            },
            {
                "description":
                    "A beszélő szempontjából túlságosan negatív vagy nagyon pozitív rendszeresen bekövetkező cselekvések kifejezésére. Kötelező határozószók: always, forever vagy constantly.",
                "example": "1. He is always asking stupid things. 2. My husband is fantastic, he is always making dinner."
            }
        ]'
	),
	(
		'Simple present versus Present continuous',
		'Igék, amelyeknek különböző igeidőkben más jelentése van',
		'',
		null,
		'[]',
		'[
            {
                "description": "THINK Simp. Pres. = vélni, gondolni valamit. Pres. Cont. = gondolkodni valamiről, gondolni valamire.",
                "example": "I think you are right. I''m thinking of you."
            },
            {
                "description":
                    "SEE `Can` segédigével = látni. (érzékelést kifejező igéket a `can` segédigével használjuk jelen időben). Pres. Cont. = találkozni valakivel.",
                "example": "I can see a man the the picture. I''m seeing my manager on Monday."
            },
            {
                "description":
                    "SMELL `Can` segédigével = ld. SEE igénél. Simp. Pres. = valaminek valamilyen szaga van. Pres. Cont. = szagol, szimatol.",
                "example": "I can smell that something is burning. It smells bad. Your dog is smelling the flowers."
            },
            {
                "description": "TASTE Simp. Pres. = valaminek valamilyen íze van. Pres. Cont. = kóstol.",
                "example": "The soup tastes bad. I''m just tasting your cake."
            },
            {
                "description": "HAVE Simp. Pres. = birtokol. Pres. Cont. = valamilyen cselekvés kifejezésére használjuk, pl. have dinner.",
                "example": "I have a car. He''s having a shower."
            },
            {
                "description": "BE Simp. Pres. = lenni. Pres. Cont. = viselkedik.",
                "example": "I''m very happy. He is being rude to me."
            },
            {
                "description": "FEEL és LOOK mindkét igeidőben használható jelentéstől függetlenül.",
                "example": "I''m feeling well now. I feel well now."
            }
        ]'
	),
	(
		'Simple past',
		'Egyszerű múlt',
		'ige + -ed, kivéve a rendhagyó igéket. Segédige: did.',
		null,
		'["He worked.", "He did not work.", "Did he work?", "When did he work?", "Who worked here?", "Who didn''t work here?"]',
		'[
            {
                "description": "Rendszeres múltbeli cselekvés kifejezésére.",
                "example": "Last year I always drove to work."
            },
            {
                "description": "Olyan cselekvések kifejezésére, amelyek a múltban már lezajlottak és többet már nem következhetnek be.",
                "example": "I learnt a lot of things at school."
            },
            {
                "description": "Mese, történet elmondásakor.",
                "example": "Then the prince kissed Sleeping Beauty."
            },
            {
                "description":
                    "Múltbeli határozószókkal: ...ago (5 weeks ago), yesterday, last night, last week, in May, on Monday, in 1998, at 5 o''clock etc.",
                "example": "He was born in 1984. I met him 3 years ago."
            },
            {
                "description": "A következő kérdőszavakkal, ha a cselekvés körülményeire akarunk rákérdezni: why? how? when? who? how long ago?...",
                "example": "Why did you go there? When were you in Italy?"
            }
        ]'
	),
	(
		'Past continuous',
		'Folyamatos múlt',
		'was/were + ige + -ing',
		null,
		'["He was working.", "He was not (wasn''t) working.", "Was he working?"]',
		'[
            {
                "description": "Olyan cselekvések kifejezésére, amely a múlt egy adott időpontjában folyamatban volt. Időhatározók: (at) this time last year, this time last month, at 5 0''clock",
                "example": "(At) this time yesterday I was doing my homework."
            },
            {
                "description": "Olyan cselekvések kifejezésére, amely a múlt egy adott időintervallumában folyamatosan zajlott. Időhatároz6k: from 3 to 4, from Monday to Friday, from morning till night.",
                "example": "Yesterday I was doing exercises from six to eight."
            },
            {
                "description": "Olyan folyamatos, múltbeli cselekvés kifejezésére, amelyet egy másik pillanatnyi cselekvés megszakított. Az e1őbbit Past Continuous-ba, az utóbbit Simple Past-ba tesszük. Gyakori kÖt6szavak: when — amikor, while - amíg, miközben, as — ahogy, amint.",
                "example": "While I was going home, it started to rain."
            },
            {
                "description":
                    "A múltban párhuzamosan zajó, egyidejű cselekvések kifejezésére. Gyakori köt6szavak: when — amikor while — amíg",
                "example": "While the teacher was explaining the new grammar structure, the students were looking out of the window."
            },
            {
                "description": "Olyan cselekvések kifejezésére, amelyek a múltban hosszan tartottak és ezt hangsúlyozni is szeretnénk. Gyakori határozók: all day yesterday - tegnap egész nap, all last week - múlt héten végig, all last year - tavaly egész évben.",
                "example": "I was working hard all last month. It was snowing all day yesterday."
            }
        ]'
	),
	(
		'Present Perfect',
		'Befejezett múlt',
		'have/has + ige 3. alakja',
		null,
		'["He has done.", "He has not (hasn''t) done.", "Has he done?"]',
		'[
            {
                "description": "Olyan cselekvés kifejezésére, ahol a történésnél fontosabb a cselekvés eredménye, amely a jelenben is fennáll.",
                "example": "Look! Somebody has broken the window."
            },
            {
                "description": "Ha valami épp a jelen pillanatban következett be. (JUST)",
                "example": "He has just arrived home."
            },
            {
                "description": "Ha az iránt érdeklődnek, hogy a cselekvés végbe ment-e. (EVER). FONTOS: A helyhatározó kifejezésére ilyenkor nem az „in” hanem a „to” prepozíciót használjuk!",
                "example": "Hape you ever been to London?"
            },
            {
                "description":
                    "Ha valami MÁR (ALREADY + , YET ?) bekövetkezett, vagy MÉG NEM (YET -) következett be.",
                "example": "I have already done my homework. Have you done your homework yet? I haven''t done my homework yet."
            },
            {
                "description": "Ha valami már egyszer, kétszer, háromszor stb., többször megtörtént. (ONCE, TWICE, THREE TIMES, SEVERAL TIMES)",
                "example": "I have been abroad twice."
            },
			 {
                "description": "Ez az első, második, harmadik stb. alkalom, hogy valamit csinálunk. (THIS IS THE TIME, THIS IS THE SECOND TIME etc.)",
                "example": "This is the second time that I''ve seen this film."
            },
            {
                "description": "Ha valami még soha nem következett be az életiinkben. (NEVER)",
                "example": "I have never seen a snake."
            },
            {
                "description": "A TODAY, TONIGHT, THIS MORNING, THIS EVENING, THIS AFTERNOON, WEEK, THIS MONTH, THIS YEAR, THIS SUMMER etc. időhatározókkal. (A this és this morning időhatározókkal kapcsolatban ld. a Simple Past és Present Perfect Összehasonlítását!)",
                "example": "We have had three meetings this month."
            },
            {
                "description":
                    "Ha a következó kifejezések szerepelnek a mondatban: SO FAR — eddig, RECENTLY — mostanában, LATELY az utóbbi időben, STILL ... NOT - még mindig nem, IN THE LAST FEW MONTHS / YEARS - az elmúlt pár hétben / hónapban / évben, UP TO NOW — mostanáig.",
                "example": "I have understood everything so far."
            },
            {
                "description": "A WHERE kérdőszóval, ha arra kérdezünk rá, hogy valaki merre járt a kérdés elhangzása előtt.",
                "example": "Where have you been? I have been at the doctor''s."
            }, {
				"description": "Ha valami korábban elkezdódött és a jelenben is tart. (Ezzel kapcsolatban ld. a Present Continuous-t!) (FOR, SINCE - HOW LONG?, SINCE WHEN?) (A „for”-ral és a „how long”? gal kapcsolatban ld. a Simple Past és Present Perfect összehasonlítását!)", 
				"example": "He has known his girlfriend for six years."
			}
        ]'
	);