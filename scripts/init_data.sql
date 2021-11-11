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
				"description": "Olyan cselekvés kifejezésére, amely a beszéd pillanatáig folyamatosan zajlott, és a jelenben szemmel látható eredménye vagy következménye van.", 
				"example": "Why are your hands dirty? I have been working in the garden."
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
                "example": " I was about to call you. I''m not about to do anything."
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
                "example": " I am able to do it. I was able to do it. I will be able to do it."
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
                "description": " IT''S ABOUT TIME ... / IT''S HIGH TIME sy DID sth = Legfőbb ideje, hogy... (Erós kritika kifejezésére.)",
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
                "description": " IT''S ABOUT TIME ... / IT''S HIGH TIME sy DID sth = Legfőbb ideje, hogy... (Erós kritika kifejezésére.)",
                "example": "It''s high time you gave up smoking. It''s about time you gave up smoking."
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
	);