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
                "description": "A „will” E.sz./l. és T.sz./l. személyű alakja a „shall”. Ezt azonban ma már többnyire csak akkor használjuk, amikor tanácsot kérünk valakitól, illetve kikérjük mások véleményét arra vonatkozóan, hogy mit tegyünk.",
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
	),
	(
		'Used to, Would',
		'Valaha',
		'',
		null,
		'["He used to play cards.", "He didn''t used to play cards.", "Did he used to play cards?"]',
		'[
            {
                "description": "Olyan cselekvés kifejezésére, amelyet a múltban (valaha) rendszeresen végeztünk, de már felhagytunk vele. Az irodalmi nyelvben a Used to helyett, ilyen értelemben, gyakran használják a Would segédigét.",
                "example": "I used to go running every morning. Every morning he would go to the sea."
            }
		]'
	),
	(
		'To be to, To be about to, To be due to',
		'Kell, kellene, azon van, hogy...',
		'',
		null,
		'["The train is to arrive at 5.", "Is the train to arrive at 5?", "The train is not to arrive at 5."]',
		'[
            {
                "description": "TO BE TO / NOT TO = kell, kellene, úgy van, hogy... / nem kell, nem kéne, nem szabad",
                "example": "I am to get there by 8. You are not to use a cheat sheet."
            },
			{
                "description": "TO BE ABOUT TO / NOT ABOUT TO = azon van, hogy... / épp csinálni akar valamit",
                "example": "I was about to call you. I''m not about to do anything."
            },
			{
                "description": "TO BE DUE TO / NOT DUE TO = kell, valaminek menetrendszerűien be kell következnie",
                "example": "The train is due to leave at 7. The bus was not due to leave at 8."
            }
		]'
	),
	(
		'CAN Modal verb',
		'CAN módbeli segédige',
		'',
		'A „can” segédige más modális segédige után egyáltalán nem használható, míg a „to be able to” állhat más módbeli segédigék után is (kivéve a „can, could, could have” segédigéket). Módbeli segédigét minden olyan ige követhet, aminek van főnévi igeneves alakja. (Pl. He may be able to do it.)',
		'[]',
		'[
            {
                "description": "CAN = Képes valamire. Csak egyszerű jelen és egyszerű múlt időben (could) használható.",
                "example": "I can do it. I could do it."
            },
			{
                "description": "TO BE ABLE TO = Képes valamire Használhatjuk egyszerű jelen, egyszerű múlt, egyszerű jövő, befejezett jelen és befejezett múlt időben is.",
                "example": "I am able to do it. I was able to do it. I will be able to do it."
            },
			{
                "description": "Érzékelést kifejező igékkel és egyes mentális tevékenységet kifejező igékkel, jelen és múlt időben, mindig a CAN-t és múlt idejú alakját a COULD-ot használjuk.",
                "example": "I can see it. I can hear it."
            },
			{
                "description": "COULD = Általános képesség kifejezésére a múltban.",
                "example": "I could swim well at the age of five."
            },
			{
                "description": "WAS/WERE ABLE TO = Egy bizonyos helyzetben sikerült valamit megcsinálni. (managed to do)",
                "example": "Nobody disturbed me so I was able to finish my work."
            },
			{
                "description": "COULD = Képes lenne / meg tudna csinálni valamit. (Feltételes mód, lehetséges feltétel)",
                "example": "I could sleep."
            },
			{
                "description": "COULD = Valószínűség — Valami bekövetkezhet, megvan rá az esély.",
                "example": "Jack could phone at any minute."
            },
			{
                "description": "COULD HAVE /COULDN''T HAVE+IGE 3. ALAKJA = Képes lett volna / meg tudott volna csinálni valamit.",
                "example": "I could have slept."
            },
			{
                "description": "COULD HAVE /COULDN''T HAVE+IGE 3. ALAKJA = Valószínűség — Valami bekövetkezhetett, megvolt rá az esély, vagy nem következhetett be, mert a körülmények nem engedték.",
                "example": "Jack couldn''t have been there, because he was with me at that time."
            }
		]'
	),
	(
		'MUST Modal verb',
		'MUST módbeli segédige',
		'',
		'A valószínűség kifejezésére használt MUST és MUST HAVE segédigék tagadó alakja a CAN''T és CAN''T HAVE. CAN''T = Biztos, hogy nem következik be valami. Biztos, hogy ma nem jön haza.	He can''t come home today. CANT HAVE + IGE 3. ALAKJA = Biztos, hogy nem következett be valami. Biztos, hogy nem ment oda. He can''t have gone there.',
		'[]',
		'[
            {
                "description": "MUST = MUST = Biztos, hogy... - Minden bizonnyal bekövetkezik valami.",
                "example": "He must arrive in the next ten minutes."
            },
			{
                "description": "MUST HAVE + IGE 3. ALAKJA = Biztos, hogy...  - Minden bizonnyal bekövetkezett valami.",
                "example": "He must have arrived home."
            }
		]'
	),
	(
		'Had better, Would rather, It''s time, It''s high time',
		'',
		'',
		null,
		'[]',
		'[
            {
                "description": "HAD BETTER DO / NOT DO = a) Jobb lenne, ha... valaki  csinálna/ nem csinálna valamit.  b) Jobban tenné, ha... / ha nem...",
                "example": "You''d better take a taxi. I''d better not go there."
            },
			{
                "description": "I WOULD RATHER DO / NOT DO = Inkább...",
                "example": "I''d rather go home now. I''d rather not go to work tomorrow."
            },
			{
                "description": "I WOULD RATHER DO ... THAN ... DO = Inkább..., mint...",
                "example": "I''d rather go out than stay at home. "
            },
			{
                "description": "I WOULD RATHER sy DID / DIDN''T DID sth = Azt szeretném, ha valaki inkább...",
                "example": "I''d rather you stayed at home. I''d rather everybody left now."
            },
			{
                "description": "IT''S TIME (FOR SY) TO DO = Itt az ideje, hogy...",
                "example": "It''s time (for us) to go home now."
            },
			{
                "description": "IT''S TIME sy DID sth = Itt az ideje, hogy... (Általában akkor használjuk ezt a változatot, ha valamit már meg kellett volna csinálni, vagy legalább neki kellett volna látni. Panaszt, kritikát fejezhetünk ki vele.",
                "example": "It''s time we washed the car. It''s very dirty."
            },
			{
                "description": "IT''S ABOUT TIME ... / IT''S HIGH TIME sy DID sth = Legfőbb ideje, hogy... (Erós kritika kifejezésére.)",
                "example": "It''s high time you gave up smoking. It''s about time you gave up smoking."
            }
		]'
	),
	(
		'Conditional clauses (if)',
		'Feltételes mód',
		'',
		'A feltételes mondatok kötőszavai: if = ha; unless = hacsak nem (Az angol mondatban nem kell még egyszer tagadni.); provided  = feltéve, ha ; as long as/so long as = amennyiben, feltéve ha; as if = mintha; suppose/supposing = tegyük fel, hogy...; Ezekre ugyanaz a szabály vonatkozik, mint az if-re (utánuk Simple Present, Simple Past vagy Past Perfect használható)',
		'[]',
		'[
            {
                "description": "A feltételes mód első típusába azok a mondatok tartoznak, amelyek lehetséges feltételt fejeznek ki és általában a jövőre vonatkoznak. A főmondatban WILL segédigét, a mellékmondatban SIMPLE PRESENT TENSE-t/EGYSZERŰ JELEN IDŐT használunk. Mellékmondatnak mindig az if-fel kezdődő mondat minősül. A főmondat és a mellékmondat sorrendje felcserélhető. Ha az if-es mellékmondat az első helyen áll, akkor vesszővel választjuk el a főmondattól. Ha az if-es mellékmondat a főmondatot követi, akkor nem használunk vesszőt.",
                "example": "I will do it if you do it too. If you do it, I will do it too."
            },
			{
                "description": "A feltételes mód második típusa kevésbé valószínű, de még megvalósítható feltételt fejez ki. A főmondatban WOULD segédigét, az if-es mellékmondatban SIMPLE PAST TENSE-t / EGYSZERŰ MÚLT IDŐT használunk. A „to be” múlt idejeként korábban minden személyben a WERE-t használták; ma már azonban a WAS használata is helyes. Kivétel ez alól az ''lf I were you..'' (Ha a helyedben lennék...) szerkezet. Ezt mindig ebben a formában használjuk. A mellékmondat és főmondat sorrendje továbbra is felcserélhető, és a vessző használatára ugyanaz a szabály vonatkozik, mint a feltételes mód első típusa esetén.",
                "example": "I would do it if you did it too. If you did it, I would do it too."
            },
			{
                "description": "A feltételes mód harmadik típusa lehetetlen, már nem megvalósítható feltételt fejez ki. A főmondatban a WOULD HAVE + IGE 3. alakját, az if-es mellékmondatban a PAST PERFECT TENSE-t / BEFEJEZETT MÚLT IDŐT használjuk. A tagmondatok sorrendjére és a vessző használatára ugyanazok a szabályok érvényesek, mint a feltételes mód első és második típusa esetén.",
                "example": "I would have done it if you had done it too. If you had done it, I would have done it too."
            },
			{
                "description": "A vegyes feltételes mód azt jelenti, hogy különböző típusú feltételes módot használunk egy mondaton belül. Például a főmondatot 2. feltételes, a mellékmondatot 3. feltételes módba tesszük.",
                "example": "Megcsinálnám, ha korábban te is megcsináltad volna. I would do it if you had also done it earlier."
            }
		]'
	),
	(
		'I wish..., If only...',
		'Bárcsak...',
		'Kívánság, óhaj kifejezésére a WISH igét és az IF ONLY szerkezetet használhatjuk.',
		null,
		'[]',
		'[
            {
                "description": "WISH / IF ONLY+ ALANY + SIMPLE PAST vagy PAST CONTINUOUS = Ezt a szerkezetet akkor használjuk, ha a jelen helyzettel nem vagyunk megelégedve, de változtatni sajnos nem tudunk rajta. A ''to be'' és a ''to have'', illetve egyéb állapotot kifejező igékkel mindig ezt a szerkezetet használjuk.",
                "example": "I wish the weather was nice. If only I didn''t have to work so much.  I wish / If only he was coming with us now."
            },
			{
                "description": "I WISH / IF ONLY + ALANY + WOULD = Ezt a szerkezetet a fentihez hasonlóan akkor használjuk, ha a beszélő elégedetlen a jelen helyzettel és azt szeretné, hogy valami bekövetkezzék, vagy valaki megtegyen valamit. Illetve, ha olyan kívánságról van szó, amely a későbbiek során még akár be is következhet, és ezért maga a beszélő is tehet valamit. Csak cselekvő igékkel, illetve változást kifejező igékkel használhatjuk.",
                "example": "I wish / If only he would do me this favour. I wish / If only somebody would buy me a flat."
            },
			{
                "description": "I WISH / IF ONLY + ALANY + PAST PERFECT = Ezt a szerkezetet akkor használjuk, ha a múltban valami olyan dolog következett be, aminek a megtörténtjét sajnáljuk, de azon változtatni már nem lehet.",
                "example": "I wish/lf only I had gone to the party.  I wish / If only I hadn''t sold my flat."
            }
		]'
	),
	(
		'Passive voice',
		'Szenvedő szerkezet',
		'A passzív szerkezet állítmánya: TO BE + IGE 3. ALAKJA. A passzív mondatban tehát mindig a TO BE kerül a megfelelő alakba, és azt egyeztetjük számban és személyben a passzív mondat alanyával. Az ige változatlanul harmadik alakban áll.',
		'A szenvedő szerkezet legfontosabb ismérve, hogy a cselekvés alanya a beszélő mondanivalója szempontjából lényegtelen. Az a fontos, ami a cselekvést elszenvedi, vagyis a mondat tárgya. A szenvedő szerkezetű mondatban a tárgy az alany helyére kerül, az alany pedig, amennyiben meg akarjuk nevezni, egy „BY” prepozíziót követően a mondat végére.',
		'["This company builds factories ---> Factories are built (by this company)"]',
		'[
            {
                "description": "Simple present",
                "example": "They build a house. --> A house is built."
            },
			{
                "description": "Present continuous",
                "example": "They are building a house. --> A house is being built."
            },
			{
                "description": "Past simple",
                "example": "They built a house. --> A house was built."
            },
			{
                "description": "Past continuous",
                "example": "They were building a house. --> A house was being built."
            },
			{
                "description": "Present perfect",
                "example": "They have built a house. --> A house has been built."
            },
			{
                "description": "Past perfect",
                "example": "They had built a house. --> A house had been built."
            },
			{
                "description": "Simple future",
                "example": "They will build a house. --> A house will be built."
            },
			{
                "description": "Future continuous",
                "example": "They will be building a house. --> A house will be being built."
            },
			{
                "description": "To be going to",
                "example": "They are going to build a house. --> A house is going to be built."
            },
			{
                "description": "To have to / To be to",
                "example": "They have to build a house. --> A house has to be built."
            },
			{
                "description": "Must / Can / Should etc.",
                "example": "They must build a house. --> A house must be built."
            },
			{
                "description": "Must have / Can have / Should have etc.",
                "example": "They must have built a house. --> A house must have been built."
            }
		]'
	),
	(
		'Passive voice 2.0',
		'Szenvedő szerkezet 2.0',
		'Egyéb fontos tudnivalók a szenvedő szerkezetről',
		null,
		'[]',
		'[
            {
                "description": "Részeshatározóval álló igék szenvedő szerkezetben: A részeshatározót kétféleképpen fejezheti ki az angol nyelv: prepozíciós szerkezettel (to, for) vagy úgynevezett indirekt tárggyal. Mivel az angol nyelvben a részeshatározó is a cselekvés egyik elszenvedője, elfoglalhatja a tárgy helyét, ez alkalommal azonban már prepozíció nélkül. Így, mivel a mondat egyik tárgyaként funkcionál, a szenvedő szerkezet képzési szabályai szerint a passzív mondat alanya lehet, tehát a mondat élére kerülhet. A leggyakoribb kettős tárgyesettel járó igék: offer, pay, show, teach, tell, lend, give, send, write, get, buy, order.",
                "example": "I gave a book to you. --> A book was given to you. I gave you a book. --> You were given a book."
            },
			{
                "description": "It is said that... / It was said that = Azt mondják... / Azt mondták...",
                "example": "a) People say that Tom is very clever. --> b) It is said that Tom is very clever. --> c) Tom is said to be very clever."
            },
			{
                "description": "További példák (jelen és múlt időben is használható): It is thought that...; It is expected that...; It is believed that...; It is known that... etc.",
                "example": "Ezeket a szerkezetet akkor használjuk, amikor nem az a fontos, hogy kik állítanak valamit, hanem az, hogy mit állítanak. Ha a mellékmondat alanyát szeretnénk kiemelni, akkor a „that” kötőszót elhagyjuk, és a mellékmondatot főnévi igeneves szerkezettel kötjük a főmondathoz (c) mondat). További példák: it is understood. It is alleged. It is considered, It is reported."
            },
			{
                "description": "Be supposed to... = Azt mondják, hogy... / kellene, kellett volna",
                "example": "This play is supposed to be very good. I am supposed to be there at five. The bus was supposed to arrive at six."
            },
			{
                "description": "Be not supposed to... = nem szabad, nem kellene",
                "example": "You are not supposed to behave like this. You are not supposed to hurt her."
            },
			{
                "description": "to be done = to get done: A passzív szerkezetben a ''to be'' létigét felválthatja a ''to get''.",
                "example": "Yesterday my bicycle was stolen. --> Yesterday my bicycle got stolen."
            },
			{
                "description": "need to be done = need doing / want to be done = want doing = valamit meg kell csinálni: Ha a ''need'' segédigét vagy a ''want'' igét passzív szerkezet követi, akkor azt az ige ''ing''-es alakja helyettesítheti. Beszélt nyelvben ez a változat a gyakoribb.",
                "example": "The room nneds to be cleaned. --> The room needs cleaning."
            },
			{
                "description": "BY és WITH passzív mondat végén: Ha valamit eszközként használtunk a cselekvés akkor WITH áll a passzív mondat végén. Ha a történésnek valki vagy valami a közvetlen okozója, akkor BY áll a passzív mondat végén.",
                "example": "He was hit with a stone. He was killed by a falling stone."
            },
			{
                "description": "Prepozíciós igék: Prepozíciós ige esetén a prepozíció a passzív igealak után áll.",
                "example": "This problem has to be dealt with."
            }
		]'
	),
	(
		'Causative',
		'Műveltetés',
		'A műveltetés lényege, hogy valamilyen cselekvést mással végeztetünk. A következő öt szerkezet a leggyakrabban használt változata (1—7). Ezen kívül léteznek még hasonló szerkezetek, de azok jelentése nem műveltetés (8—9).',
		null,
		'[]',
		'[
			{
                "description": "TO HAVE STH DONE (BY SY) = a) Megcsináltatni valamit (valakivel), általában szolgáltatásoknál használjuk. A „to have” igét kell a megfelelő igeidőbe tenni. b) Valamilyen sajnálatos esemény kifejezésére. (Általában a szenvedő szerkezet helyettesítésére. Ld. a 9. pontban!)",
                "example": "Next week I''ll have my car washed by the mechanic. Last week I had my car washed by the mechanic. I have just had my car washed by the mechanic."
            },
			{
                "description": "TO GET STH DONE (BY SY) = Ugyanazt jelenti, mint a „to have sth done”, de élőbeszédben ez a gyakrabban használt változat. A „get” is ragozható.",
                "example": "Next week I''ll get the roof repaired. Last week I got the roof repaired. I have just got the roof repaired."
            },
			{
                "description": "TO MAKE SY DO STH = a) kényszeríteni valakit valamire (Ebben az értelemben a to force sy to do sth szinonímája.) b) késztet valakit valamire (Ebben az értelemben a to cause sy to do sth szinonímája.) c) tesz valakit valamilyenné.",
                "example": "They made him eat it. = They forced him to eat it. What made him drink? = What caused him to drink?"
            },
			{
                "description": "DE! To MAKE ONESELF UNDERSTOOD/HEARD... = megérteti magát, hallatja magát...",
                "example": "Although I don''t speak German well, I could make myself understood."
            },
			{
                "description": "TO BE MADE TO = A „to make sy do sth” passzív alakja. Aktív alakban bír, nincs mint „to”, az aktív passzívalak. alakban azonban már van. Ugyanazal a jelentéssel bír, mint az aktív alak.",
                "example": "He was made to eat it. She was made to feel happy."
            },
			{
                "description": "TO GET sy TO DO STH = rávenni valakit valamire",
                "example": "I got my husband to do the washing up."
            },
			{
                "description": "TO HAVE/GET sy DO STH = valakivel megcsináltat valamit",
                "example": "Have the secretary translate the letter. = Fordíttasd le a titkárnővel a levelet!"
            },
			{
                "description": "Műveltetéshez hasonló szerkezet: TO HAVE SY DOING = a) Eléri, hogy valaki valamit képes legyen megcsinálni. b) A „you''ll have sy doing” azt jelenti, hogy valami meg fog történni, az lesz a vége, hogy... (Csak E.sz. / 2. sz.-ben használjuk ilyen értelemben.) c) Az „I won''t have sy doing” azt jelenti, hogy valamit nem engedek meg. (Általában E. sz. / 1. sz.-ben használjuk ilyen értelemben.)",
                "example": "Nemsokára megtanítunk járni. = We''ll have you walking soon. Ha éjjel zajongtok, a szomszédok panaszkodni fognak. = If you make noise at night, you''ll have your  neighbours complaining. Nem engedem meg, hogy bent dohányozzon. = I won''t have him smoking in here."
            },
			{
                "description": "Műveltetéshez hasonló szerkezet: GOT/HAD STH DONE = Egy megtörtént eset elbeszélésére, valamilyen sajnálatos esemény kifejezésére. (A szenvedő szerkezetet helyettesítjük vele.)",
                "example": "I had my purse stolen. I got my nose broken."
            }
		]'
	),
	(
		'Reported / Indirect speech I.',
		'Függő beszéd I. - Állítás',
		'Függő  beszédben a beszélő egy bevezető főmondat után közli mindazt, amit valaki mondott vagy kérdezett. A főmondat igeidejétől függően változhat a mellékmondat igeideje is. Ha a főmondat  jelen időben van, akkor a mellékmondat  igeideje ugyanaz marad, mint ami eredetileg volt. Ha a főmondat múlt időben van, akkor a mellékmondat igeideje is változik, jellemzően egy „igeidővel visszacsúszik”. Minden igeidőnek megvan a függő beszédben használt megfelelője.',
		'A főmondatban természetesen nem csak a „to say” ige állhat, hanem számos más ige is, attól függően, hogy a mellékmondat milyen célból hangzott el. Pl. to complain = panaszkodik, to boast = dicsekszik, to wonder = kíváncsi valamire, to promise = megmígér stb.',
		'[]',
		'[
			{
                "description": "SIMPLE PRESENT --> SIMPLE PAST",
                "example": "Jack eats a lot of chocolate. --> She said that Jack ate a lot of chocolate."
            },
			{
                "description": "PRESENT CONTINUOUS --> PAST CONTINUOUS",
                "example": "Jack is eating chocolate. --> She said that Jack was eating chocolate."
            },
			{
                "description": "SIMPLE PAST --> PAST PERFECT",
                "example": "Jack ate some chocolate. --> She said that Jack had eaten some chocolate."
            },
			{
                "description": "PAST CONTINUOUS --> PAST PERFECT CONTINUOUS",
                "example": "Jack was eating chocolate. --> She said that Jack had been eating chocolate."
            },
			{
                "description": "PAST CONTINUOUS / SIMPLE PAST --> PAST CONTINUOUS / SIMPLE PAST",
                "example": "Jack was eating chocolate when I entered. --> She said that Jack was eating chocolate when she entered."
            },
			{
                "description": "PRESENT PERFECT --> PAST PERFECT",
                "example": "Jack has eaten some chocolate. --> She said that Jack had eaten some chocolate."
            },
			{
                "description": "PRESENT PERFECT CONTINUOUS --> PAST PERFECT CONTINUOUS",
                "example": "Jack has been eating chocolate. --> She said that Jack had been eating chocolate."
            },
			{
                "description": "PAST PERFECT --> PAST PERFECT",
                "example": "Jack had eaten some chocolate. --> She said that Jack had eaten some chocolate."
            },
			{
                "description": "PAST PERFECT CONTINUOUS --> PAST PERFECT CONTINUOUS",
                "example": "Jack had been eating chocolate. --> She said that Jack had been eating chocolate."
            },
			{
                "description": "SIMPLE FUTURE --> WOULD",
                "example": "Jack will eat some chocolate. --> She said that Jack would eat some chocolate."
            },
			{
                "description": "FUTURE CONTINUOUS --> WOULD BE -ING",
                "example": "Jack will be eating chocolate. --> She said that Jack would be eating chocolate."
            },
			{
                "description": "FUTURE PERFECT --> WOULD HAVE + 3. alak",
                "example": "Jack will have eaten some chocolate. --> She said that Jack would have eaten some chocolate."
            },
			{
                "description": "FUTURE PERFECT CONTINUOUS --> WOULD HAVE BEEN -ING",
                "example": "Jack will have been eating chocolate. --> She said that Jack would have been eating chocolate."
            },
			{
                "description": "IS / ARE GOING TO --> WAS / WERE GOING TO",
                "example": "Jack is going to eat chocolate. --> She said that Jack was going to eat chocolate."
            }
		]'
	),
	(
		'Reported / Indirect speech II. - Reported questions',
		'Függő beszéd II. - Kérdés',
		'Függő kérdésben a mellékmondat szórendje egyenes. A függő kérdés nem kérdő mondat! Kétféle függő kérdést különböztetünk meg, attól függően, hogy eldöntendő kérdést, vagy kiegészítendő (kérdőszavas) kérdést teszünk-e függő beszédbe.',
		null,
		'[]',
		'[
			{
                "description": "Eldöntendő kérdés függő beszédben: Az eldöntendő kérdést első lépésben egyenes szórendbe, majd a megfelelő igeidőbe tesszük és az IF vagy WHETHER kötőszavakkal kötjük a főmondathoz. Az „if/whether” = „-e” szócska.",
                "example": "Is she married? --> He asks if/whether she is married. OR He asked if/whether she was married."
            },
			{
                "description": "Kiegészítendő kérdés függő beszédben: A kiegészítendő kérdést függő beszédben szintén egyenes szórendbe és a megfelelő igeidőbe tesszük. Ezt a kérdést az eredeti kérdőszóval kötjük a főmondathoz.",
                "example": "Why is he angry? --> She asks why he is angry. OR She asked why he was angry."
            }
		]'
	),
	(
		'Reported / Indirect speech III. - Reported command, request, advice',
		'Függő beszéd III. - Felszólítás',
		'Felszólítás és tiltás, valamint kérés és tanács idézésekor függő beszédben, az igeidőtől függetlenül, a főmondat után „to” infinitive áll, a megfelelő személyes névmás tárgyesetét követően. Tagadás esetén "not + to infinitive"-et használunk. A bevezető főmondatban általában a következő igék állhatnak a mondat értelmének megfelelően: to ask — megkér, to tell — elmond, mond, to order — parancsol, to request — igényel, kér, to warn — figyelmeztet, to advise — tanácsol, to encourage — ösztönöz, to forbid — megtilt, to beg — könyörög, to recommend — ajánl, javasol, to remind — emlékeztet, to urge — sürget. A „to say” igét itt nem használhatjuk.',
		null,
		'[]',
		'[
			{
                "description": "Felszólítás.",
                "example": "Will you pass my the salt? --> He asked me to pass him the salt."
            },
			{
                "description": "Tagadás",
                "example": "Don''t drive fast. --> He asked me not to drive fast."
            }
		]'
	),
	(
		'Reported / Indirect speech IV.',
		'Függő beszéd IV. - Egyéb tudnivalók',
		'',
		null,
		'[]',
		'[
			{
                "description": "A „Shall I...”, „Shall we...” kezdetű mondatok „I/he should...”, „We/they should...” szerkezetté vagy „to” főnévi igenévvé alakulnak át. Ilyenkor a „whether” kötőszót használjuk.",
                "example": "Shall I eat it or not? --> She hesitated whether she should eat it or not. OR She hesitated whether to eat it or not."
            }
		]'
	);