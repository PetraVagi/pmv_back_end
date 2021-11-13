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
		'["I work.", "I don''t work", "Do you work?", "Where do you work?", "Who works here?", "Who doesn''t work here?"]',
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
        get + melléknév - válik valamilyenné; grow - nő (termeszt); grow + melléknév - válik valamilyenné (grow cold, grow old)
		
		Vannak bizonyos igék, amiket tipikusan nem használunk folyamatos igeidőben. Ezek a következőek: hate - utál; like - szeret; love - szeret; prefer - jobban szeret, inkább; want - akar;
		wish - kíván; feel - érez; hear - hall; see - lát; smell - vmilyen szaga van, szagol; sound - hangzik vmilyennek (It sounds good.); taste - vmilyen íze van; agree - egyetért; deny - tagad; 
		disagree - nem ért egyet; mean - jelent vagy úgy érti, hogy (I mean.... - Úgy értem, hogy...);  promise - ígért; satisfy -  kielégít vmit (igényeket pl.); surprise - meglep;
		believe - hisz; imagine - képzel; know - tud; remember - emlékszik; understand - ért; need - szüksége van vmire;',
		' ["I am working.", "I''m not working", "Are you working?", "Where are you working?", "Who is working here?"]',
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
                "example": "I can see a man in the picture. I''m seeing my manager on Monday."
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
		'SINCE... = ...óta (valamilyen időponttól kezdődően): since May, since last week, since they moved, since then, since they got married (!! Ha az időhatározót mellékmondattal fejezzük ki (pl. Nagyon boldogok, amióta összeházasodtak), akkor a mellékmondatban a „since” után Simple Past-ot, a főmondatban Present Perfect-et kell használni. !!)
		FOR... = ...-e, -ja (valemennyi ideje): for two weeks, for ten minutes, for four years, for three months, for ages',
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
                "example": "Have you ever been to London?"
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
                "description": "Ha valami még soha nem következett be az életünkben, de még megtörténhet. (NEVER)",
                "example": "I have never seen a snake."
            },
            {
                "description": "A TODAY, TONIGHT, THIS MORNING, THIS EVENING, THIS AFTERNOON, WEEK, THIS MONTH, THIS YEAR, THIS SUMMER etc. időhatározókkal. (A this és this morning időhatározókkal kapcsolatban ld. a Simple Past és Present Perfect Összehasonlítását!)",
                "example": "We have had three meetings this month."
            },
            {
                "description": "Ha a következő kifejezések szerepelnek a mondatban: SO FAR — eddig, RECENTLY — mostanában, LATELY az utóbbi időben, STILL ... NOT - még mindig nem, IN THE LAST FEW MONTHS / YEARS - az elmúlt pár hétben / hónapban / évben, UP TO NOW — mostanáig.",
                "example": "I have understood everything so far."
            },
            {
                "description": "A WHERE kérdőszóval, ha arra kérdezünk rá, hogy valaki merre járt a kérdés elhangzása előtt.",
                "example": "Where have you been? I have been at the doctor''s."
            }, {
				"description": "Ha valami korábban elkezdődött és a jelenben is tart és benne van, hogy mióta. (Ezzel kapcsolatban ld. a Present Continuous-t!) (FOR, SINCE - HOW LONG?, SINCE WHEN?) (A „for”-ral és a „how long”? gal kapcsolatban ld. a Simple Past és Present Perfect összehasonlítását!)", 
				"example": "He has known his girlfriend for six years."
			}, {
				"description": "Egy olyan múlt idejű cselekvés, amihez nem tartozik múlt idejű időhatározó.", 
				"example": "I have broken my leg."
			}
			}, {
				"description": "Ha bármilyen újdonságot közölsz, ha bármit elmondasz, hogy megtörtént --> present perfect. A cselekvés részletei --> past simple (egyszerű múlt)", 
				"example": "The President has visited a hospital. He gave presents to the children and kissed one of the nurses."
			}
        ]'
	),
	(
		'Past Simple versus Present Perfect',
		'Időhatározók, amelyeknek különböző igeidőkben más jelentése van',
		'',
		null,
		'[]',
		'[
            {
                "description": "This morning, this afternoon, this summer, this spring, this winter, this autumn. Present Perfect: Olyan időszakban történt múltbeli esemény közlésére, amely időszak a közlés pillanatában még nem zárult le. Past Simple: Olyan időszakban történt múltbeli esemény közlésére, amely időszak a közlés pillanatában már lezárult.",
                "example": "I have eaten an apple this morning. - Ma délelőtt már ettem egy almát (még délelőtt van). ; I ate an apple this morning. - Ma délelőtt ettem egy almát (a közlés pillanata már nem délelőtt van)."
            }, 
			{
                "description": "For..., How long...? Present Perfect: Ha a „for...” és a „How long...?” olyan időszakra utal, amely még nem zárult le. (Ezeket  a mondatokat jelen időben fordítjuk magyarra. Past Simple: Ha a „for...” és a „How long?” olyan időszakra utal, amely már lezárult.",
                "example": "They have been friends for seven years. - Hét éve barátok. ; They were friends for seven years. - Hét évig voltak barátok."
            }, {
				"description": "A „last”-os (last night, last week, last month, last year etc.) időhatározókkal mindig Simple Past-ot használunk. DE az in the last five years, in the last few month for the last five years typusú időhatározókkal mindig Present Perfect-et használunk!", 
				"example": "I went home last night. I have worked a lot in the last few days."
			}
		]'
	),
	(
		'Present Perfect Continuous',
		'Befejezett folyamatos jelen',
		'have/has + been + ige + -ing',
		'A Present Perfect Continuous-nak formailag ugyan van tagadó alakja, de ezt ritkábban használják. Helyette gyakrabban fordul elő a Present Perfect tagadó alakja.',
		'["He has been doing", "He has not (hasn''t) been doing", "Has he been doing?"]',
		'[
            {
                "description": "Olyan cselekvés kifejezésére, amely a múlt egy adott pillanatában elkezdódött, a jelenben is tart, sőt valószínűleg a jövőben is tartani fog. Jellemző időhatározók: SINCE..., FOR..., HOW LONG...? SINCE WHEN...? (ld. a Present Perfect-et)",
                "example": "She has been going to that school for five years. They have been going out together since last week."
            }, 
			{
                "description": "Olyan esetben, ha a cselekvés hosszan tart, (elkezdtük, de még mindig nem fejeztük be) és ezt hangsúlyozni is szeretnénk. Jellemző időhatározók: ALL THIS WEEK, ALL DAY LONG, ALL NIGHT LONG, ALL THIS YEAR",
                "example": "I have been trying to reach him all this week. I have been seeing the doctor all this year. It has been raining all day long."
            }, {
				"description": "Olyan cselekvés kifejezésére, amely a beszéd pillanatáig folyamatosan zajlott, és a jelenben szemmel látható eredménye, következménye, esetleg mellékhatása van.", 
				"example": "Why are your hands dirty? I have been working in the garden."
			}, {
				"description": "Ha a cselekvés a múltban kezdődött, és még a jelenben is tart, vagy éppen véget ér a beszéd pillanatában, DE RÖVID időtartamú esemény. Rövid időtartamokra csak a Present Perfect Continuous jó!", 
				"example": "I have been sitting here for 10 minutes."
			}, {
				"description": "Ha cselekvés a múltban kezdődött, és a jelenben is tart, vagy éppen véget ért, ÉS RÖVID időtartamú, ami nincsen időhatározóval kiegészítve", 
				"example": "I have been sitting here."
			}
		]'
	),
	(
		'Past Perfect',
		'Befejezett múlt',
		'had + ige 3. alakja',
		null,
		'["He had worked.", "He had not (hadn''t) worked.", "Had he worked?"]',
		'[
            {
                "description": "Olyan cselekvés kifejezésére, amely egy másik megadott múltbeli cselekvést megelőzően ment végbe. Jellemző kötőszók: before — mielőtt, after - miután, when — amikor, by the time — amire, amikorra",
                "example": "Before he left for England, he had sold his house. By the time he understood it, everybody had left."
            }, 
			{
                "description": "Olyan cselekvés kifejezésére, amely egy megadott múltbeli cselekvést megelóző időpontban kezdődött, és folyamatosan tartott a megadott múltbeli cselekvésig, sőt még talán tovább is. Ez a szabály csak azokra az igékre érvényes, amelyeknek nincsen folyamatos alakjuk. Más esetben ld. a Past Perfect Continuous-t.",
                "example": "When their child was born, they had been married for two years."
            }
		]'
	),
	(
		'Past Perfect Continuous',
		'Befejezett folyamatos múlt',
		'had been + ige + ing',
		'A Past Perfect Continuous tagadó alakja helyett gyakrabban használjuk a Past Perfect tagadó alakját.',
		'["He had been working.", "He had not (hadn''t) been working.", "Had he been working?"]',
		'[
            {
                "description": "Olyan cselekvés kifejezésére, amely egy megadott múltbeli cselekvést megelőző időpontban kezdődött, és folyamatosan tartott a megadott múltbeli cselekvésig, sőt még talán tovább is. Olyan igékkel, amelyeknek nincsen folyamatos alakjuk, Past Perfect-et használunk. Ld. a Past Perfect-et. Jellemző kötőszók: by the time, when.",
                "example": "By the time the lecture finished, he had been sleeping for half an hour."
            }, 
			{
                "description": "Olyan cselekvés kifejezésére, amely egy múltbeli cselekvésig folyamatosan zajlott, és annak szemmel látható eredménye, vagy következménye volt.",
                "example": "His hair was wet, because he had been walking in the rain."
            }
		]'
	),
	(
		'Future simple',
		'Egyszerű jövő',
		'will + ige',
		null,
		'["He will work.", "He will not (won''t) work.", "Will he work?"]',
		'[
            {
                "description": "Olyan esetben használjuk, ha a beszéd pillanatában döntjük el, hogy mit fogunk csinálni. Spontán elhatározásról van szó.",
                "example": "I''ll go upstairs and get the keys."
            }, 
			{
                "description": "Ha segitséget nyújtunk valamiben, vagy felajánlunk valamit.",
                "example": "I don''t know how to use this camera. I''ll show you."
            }, 
			{
                "description": "Ha valamivel egyetértésben cselekszünk.",
                "example": "Can I have my notebook back? Of course. I''ll give it back to you tomorrow."
            }, {
                "description": "Ha valamit megígérünk.",
                "example": "I''ll learn it. I promise."
            }, {
                "description": "Ha valakit udvariasan megkérünk valamire.",
                "example": "Will you close the window, please?"
            }, 
			{
                "description": "A következő kifejezések után (Ezek általában bizonytalanságot fejeznek ki): I hope, I don''t hope, I expect, I don''t expect, I think, I don''t think, I''m sure, I''m not sure, I wonder, I suppose, I guess, I bet, perhaps, probably.",
                "example": "I hope I will pass the exam. Perhaps he will bring the cassette back."
            },
			{
                "description": "A jövőre vonatkozó feltételes mondatok főmondatában.",
                "example": "You will pass the exam if you learn hard."
            },
			{
                "description": " A „will” E.sz./l. és T.sz./l. személyű alakja a „shall”. Ezt azonban ma már többnyire csak akkor használjuk, amikor tanácsot kérünk valakitól, illetve kikérjük mások véleményét arra vonatkozóan, hogy mit tegyünk.",
                "example": "Shall I close the door? What shall we do tonight? Where shall we meet?"
            }
		]'
	),
	(
		'Future Continuous',
		'Folyamatos jövő',
		'will be + ige + ing',
		null,
		'["He will be working.", "He will not (won''t) be working.", "Will he be working?"]',
		'[
            {
                "description": "Olyan cselekvés kifejezésére, amely a jövő egy adott pillanatában folyamatban lesz. Jellemző időhatározók: at this time tomorrow, this time next year, this time next month, at 5 0''clock.",
                "example": "(At) this time tomorrow I will be doing my homework."
            }, 
			{
                "description": "Olyan cselekvés kifejezésére, amely a jövő egy adott időintervallumában folyamatosan zajlani fog. Jellemző időhatározók: from 3 to 4, from Monday to Friday, from morning till night.",
                "example": "I will be studying hard from morning till night."
            }, 
			{
                "description": "Olyan cselekvés kifejezésére, amely a jövőben hosszan tartani fog, és ezt hangsúlyozni is szeretnénk. Gyakori határozók: all day tomorrow — holnap egész nap, all next week — jövő héten végig, all next year — jövőre egész évben.",
                "example": "I will be working hard all next month."
            }, 
			{
                "description": "Udvarias kérést is ki tudsz fejezni vele, ami a magyarban úgy kezdődik, hogy: ''Véletlenül nem...''.",
                "example": "Will you be going to Budapest today? Will you be using your notebook tonight?"
            }
		]'
	),
	(
		'To be going to do',
		'Jövő idős szerkezetek',
		'to be going to + ige',
		null,
		'["He is going to work.", "He is not (isn''t) going to work.", "Is he going to work?"]',
		'[
            {
                "description": "Ezt a szerkezetet jövőbeli terv vagy erős szándék kifejezésére használjuk.",
                "example": "I am going to travel abroad."
            },
			{
                "description": "Olyan jövőbeli cselekvés kifejezésére, amelyről biztosan tudni, hogy be fog következni, mert ennek szemmel látható jelei vannak.",
                "example": "Look how big Eve''s belly is. She''s going to have a baby."
            },
			{
                "description": "Múlt idejű alakja a „was /were going to”. Jelentése: Úgy volt, hogy...",
                "example": "On Saturday we were going to play tennis but it was raining."
            }
		]'
	);