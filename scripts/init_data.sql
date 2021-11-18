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
            }, 
			{
				"description": "Ha valami korábban elkezdődött és a jelenben is tart és benne van, hogy mióta. (Ezzel kapcsolatban ld. a Present Continuous-t!) (FOR, SINCE - HOW LONG?, SINCE WHEN?) (A „for”-ral és a „how long”? gal kapcsolatban ld. a Simple Past és Present Perfect összehasonlítását!)", 
				"example": "He has known his girlfriend for six years."
			}, 
			{
				"description": "Egy olyan múlt idejű cselekvés, amihez nem tartozik múlt idejű időhatározó.", 
				"example": "I have broken my leg."
			}, 
			{
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
        'If / when, after, before...',
        'Jövő időre vonatkozó feltételes és időhatározói mellékmondatok',
        'A következő esetekben nem használható az egyszerű jövő idő (I will):',
        'WHEN vs IF: When = amikor: Akkor használjuk, ha olyan dologról beszélünk, ami biztos, hogy megtörténik. If = ha: Akkor használjuk, ha valami lehet, hogy bekövetkezik, de még egyáltalán nem biztos.',
        '[]',
        '[
            {
                "description": "Időhatározói mellékmondatokban, vagyis minden olyan mellékmondatban, ami a when - amikor, after - miután, before - mielőtt, by the time - amikorra, amire, while - amíg, as soon as - mihelyt, until - amíg nem, amíg stb. kötőszóval kezdődik. Jövő idejű értelemben ezekben a az egyszerű jelen (SIMPLE PRESENT) vagy a befejezett jelen idő (PRESENT PERFECT) használható. Általában while és before kötőszavaknál csak Simple Presentet használunk.",
                "example": "Before I go to bed, I will finish my homework. As soon as I finish / have finished correcting the test-papers, I will call him."
            },
			{
                "description": "When kötőszó használata és igeidők: A Present Perfect csak akkor használható a „when” kötőszóval, ha a cselekvések között előidejűség áll fenn. Ha két esemény egy időben következik be, csak a Simple Present használható.",
                "example": "When I have done the homework, we can have dinner. When I write my homework, I will concentrate on it."
            },
			{
                "description": "Jövő időre vonatkozó feltételes mellékmondatokban.",
                "example": "She will be very happy if you give it to her."
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
        'Future Perfect',
        'Befejezett jövő',
        'will have + ige 3. alakja',
        null,
        '["He will have worked.", "He will not (won''t) have worked.", "Will he have worked?"]',
        '[
            {
                "description": "Olyan cselekvés kifejezésére, amely a jövő egy adott pillanatára befejeződik, lezárul. Jellemző kötőszó: by the time. Jellemző határozók: by tomorrow, by this time next week, by this time next month, by this time next year stb.",
                "example": "By the time you return I will have finished the report. By tomorrow I will have translated the letter."
            },
            {
                "description": "Olyan cselekvés kifejezésére, amely korábban elkezdődött, a jövő egy adott pillanatában is folyamatosan zajlik, sőt még azután is folyamatban lesz. Ha az igének van folyamatos alakja, akkor a Future Perfect Continuous-t kell használni. Ld. Future Perfect Continuous.",
                "example": "By this time next year they will have been married for two years."
            }
		]'
    ),
    (
        'Future Perfect Continuous',
        'Befejezett folyamatos jövő',
        'will have been + ige + -ing',
        null,
        '["He will have been working.", "He will not (won''t) have been working.", "Will he have been working?"]',
        '[
            {
                "description": "Olyan cselekvés kifejezésére, amely korábban elkezdődött, a jövő egy adott pillanatában is folyamatosan zajlik, sőt még azután is folyamatban lesz. Jellemző időhatározók: by this time tomorrow, by this time next week, by this time next month, by next year, by Friday stb. Ha az igének nem lehet folyamatos alakja, akkor a Future Perfect-et kell használni. Ld. Future Perfect.",
                "example": "By this time next year they will have been married for two years."
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
        'Simple Present, Present Continuous (with future meaning) versus To be going to',
        'Jövő idő kifejezése különböző igeidőkkel',
        '',
        null,
        '[]',
        '[
            {
                "description": "SIMPLE PRESENT - Egyszerű jelen: Ha valamilyen menetrendszerű dologról (vonat, repülő, busz indulása, érkezése), programról (pl. rádió-, TV-műsor, moziműsor), boltok, múzeumok nyitvatartásáról, egyéb programok kezdésének és befejezésének időpontjáról beszélünk, egyszerű jelen időt használunk.",
                "example": "When does your bus leave? When does the film start? The show finishes at 8."
            },
			{
                "description": "PRESENT CONTINUOUS - Folyamatos jelen: Olyan jövőbeli cselekvés kifejezésére használjuk, amit előre megszerveztünk és elrendeztünk.",
                "example": "I''m not free tomorrow afternoon, because I''m playing tennis with Sue."
            },
			{
                "description": "TO BE GOING TO: Olyan cselekvés kifejezésére használjuk, amit a jövőben szeretnénk véghez vinni (határozott szándékunk), de a körülményeket még nem rendeztük el. Nagyon hasonlít a Present Continuous jövő idejű használatához, de a lényeges különbség abban rejlik, hogy míg a „to be going to”-val csak szándékot fejezünk ki, a Present Continuous-szal már eggyel továbbléptünk, hiszen a körülményeket is úgy rendeztük, hogy az a cselekvés mindenképpen be is következhessen.",
                "example": "Nov I''m fed up with everything. I''m going to see my boss and I''m going to talk to him. (Erről a főnök nem valószínű, hogy tud, csak én szeretnék már végre beszélni vele, akkor is, ha ő nem akarja, vagy nem ér rá. Meg fogom kísérelni.)  I''ve just fixed an appointment with my boss. I''m seeing him on Monday. (Itt egy előre megbeszélt találkozóról van szó. Előtt gondoskodtam arról, hogy ez a találkozó mindenképpen megvalósuljon. Tehát a főnökkel is előre egyeztettem. Ilyenkor általában már egy konkrét időpontot is megadtunk."
            }
		]'
    ),
    (
        'Used to, Would',
        'Valaha',
        '',
        null,
        '["He used to play cards.", "He didn''t use to play cards.", "Did he use to play cards?"]',
        '[
            {
                "description": "Olyan cselekvés kifejezésére, amelyet a múltban (valaha) rendszeresen végeztünk, de már felhagytunk vele. Az irodalmi nyelvben a Used to helyett, ilyen értelemben, gyakran használják a Would segédigét.",
                "example": "I used to go running every morning. Every morning he would go to the sea."
            },
			{
				"description": "A USED TO DO SG szerkezettel rendszeresen történt, múlt idejű cselekvéseket tudsz kifejezni. A used to azt jelenti: régen, régebben.",
				"example": "She used to be fat. They used to live here."
			},
			{
				"description": "A BE USED TO DOING SG szerkezettel olyan cselekvéseket fejezzünk, amihez az alany hozzá van szokva",
				"example": "I work in a bakery so I''m used to getting up early. I''m not used to driving in big cities."
			},
			{
				"description": "A BE USED TO DOING SG szerkezetet lehet használni létige nélkül is.",
				"example": "I''m used to this weather."
			},
			{
				"description": "Érdemes megjegyezni a GET USED TO DOING szerkezetet, amely azt jelenti: hozzászokik valamihez.",
				"example": "You have to get used to this."
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
                "description": "TO BE TO / NOT TO szerkezetet a múltidőben két féleképpen használhatjuk. Mindkettő ugyanazt jelenti, hogy: ''Úgy volt, hogy eladják a házukat.''",
                "example": "They were to sell their house. They were to have sold their house."
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
                "description": "TO BE ABLE TO = Képes valamire Használhatjuk egyszerű jelenben, egyszerű múltban, egyszerű jövőben, befejezett jelenben és befejezett múltidőben is.",
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
                "description": "MUST = Biztos, hogy... - Minden bizonnyal bekövetkezik valami.",
                "example": "He must arrive in the next ten minutes."
            },
			{
                "description": "MUST HAVE + IGE 3. ALAKJA = Biztos, hogy...  - Minden bizonnyal bekövetkezett valami.",
                "example": "He must have arrived home."
            },
			{
                "description": "MUST = kell, kötelesség kifejezésére (belső kényszer, de ez már nem igaz a nyelvre napjainkban). Csak állító és jelen idejű alaja van. Tagadásra a „have to” megfelelő igeidejű, tagadó alakját használjuk.",
                "example": "I must leave, because it''s getting dark and I''m afraid of the dark."
            },
			{
                "description": "HAVE TO = kell, kötelesség kifejezésére (külső kényszer)",
                "example": "I have to leave because my train leaves soon."
            },
			{
                "description": "MUSTN''T = tilos, nem szabad",
                "example": "You mustn''t smoke here."
            },
			{
                "description": "NEED TO DO / DON''T NEEDN''T DO = szükséges, kell / nem szükséges, nem kell. Egyszerű és befejezett jelen, ill. múlt időben és jövő időben használható.",
                "example": "I needed to go here. I didn''t need to go there."
            },
			{
                "description": "NEED DO / NEEDN''T DO = szükséges, kell / nem szükséges, nem kell. Csak jelen időben használható.",
                "example": "I need go there. I needn''t go there."
            }
		]'
    ),
    (
        'SHOULD Modal verb',
        'SHOULD módbeli segédige',
        '',
        null,
        '[]',
        '[
            {
                "description": "SHOULD / SHOULDN''T = Kellene / nem kellene, nem lenne szabad csinálni valamit",
                "example": "He should give up smoking."
            },
			{
                "description": "SHOULD HAVE/ SHOULDN''T HAVE + ige 3. alakja = Kellett volna / nem kellett volna, nem lett szabad csinálni valamit",
                "example": "He should have given up smoking."
            },
			{
                "description": "OUGHT TO/ OUGHTN''T TO; OUGHT TO HAVE/ OUGHTN''T TO HAVE = Ugyanazt jelenti, mint a should, de gyakrabban fordul elő hivatalos szüvegekben (pl. törvényekben)",
                "example": "We ought to reply to his letter. Ought they not to have told you the news? Ought she to lose weight? She oughtn''t to lose weight."
            },
			{
                "description": "NEEDN''T HAVE + ige 3. alakja = nem kellett volna, nem lett volna szükséges",
                "example": "I needn''t have gone to school. = Nem kellett volna iskolába mennem (de elmentem, és ott vettem észre, hogy szünet van)."
            },
			{
                "description": "SHOULD egyéb használata: a) bizonyos igék és főnevek után (kötőmód) --> suggest / suggestion, recommend / reccomendation, propose / proposal, insist, demand (Should nélkül is helyes, beszélt nyelvben szívesebben használják a to nélküli igenevet)",
                "example": "Azt javasolta, hogy utazzak külföldre. = He suggested that I should travel abroad. Ragaszkodott hozzá, hogy te is gyere. = He insisted that you should come too. (He insisted that you come too.) "
            },
			{
                "description": "SHOULD egyéb használata: b) bizonyos melléknevek után --> important, essential, vital, neccessary (Should nélkül is helyes, beszélt nyelvben szívesebben használják a to nélküli igenevet)",
                "example": "Fontos, hogy ott legyél. = It is important that you should be there. (It is important that you be there.)"
            },
			{
                "description": "SHOULD egyéb használata: c) bizonyos melléknevek után --> strange, funny, interesting, surprised, surprising, natural, typical",
                "example": "Érdekes, hogy ezt mondod. = It'' strange that you should say that. Jellemző, hogy azt csinálja = It''s typical that he should do that."
            },
			{
                "description": "SHOULD egyéb használata: d) If után, ha azt szeretnénk kifejezni, hogy valami esetleg bekövetkezhet.",
                "example": "Ha esetleg előbb befejeznéd a munkát, menj haza. = If you should finish you work earlier, go home."
            },
			{
                "description": "SHOULD egyéb használata: e) Azt is kifejezi, hogy mit tennék a másik helyében.",
                "example": "You are going to regret it, I shouldn''t do that."
            }
		]'
    ),
    (
        'MAY and MIGHT Modal verbs',
        'MAY és MIGHT módbeli segédige',
        '',
        null,
        '[]',
        '[
			{
                "description": "MAY / MAY NOT = Valószínű, hogy valami bekövetkezik / nem következik be.",
                "example": "Valószínű, hogy nem találkozik vele. = He may (not) meet her."
            },
			{
                "description": "MAY HAVE / MAY NOT HAVE + IGE 3. ALAKJA = Valószínű, hogy valami bekövetkezett / nem következett be.",
                "example": "Valószínű, hogy nem találkozott vele. = He may (not) have met her."
            },
			{
                "description": "MIGHT / MIGHT NOT = Lehet, hogy valami bekövetkezik / nem következik be.",
                "example": "Lehet, hogy (nem) találkozik vele. = He might (not) meet him."
            },
			{
                "description": "MIGHT HAVE / MIGHT NOT HAVE + IGE 3. ALAKJA = Lehet, hogy valami bekövetkezett / nem következett be.",
                "example": "Lehet, hogy (nem) találkozott vele. = He might (not) have met him."
            },
			{
                "description": "TO BE LIKELY TO DO = Valószínű, hogy... (may és might helyett használthatjuk)",
                "example": "Valószínű, hogy otthon van. = He is likely to be at home."
            },
			{
                "description": "MAY AS WELL / MIGHT AS WELL = Akár be is következhet valami.",
                "example": "Akár meg is eheted. = You may / might as well eat it."
            },
			{
                "description": "MAY / CAN = Engedélyt kérhetünk / adhatunk valamire. may - udvarias, formális, can - bizalmas, informális. A MAY-t ilyen értelemben csak jelen időben használhatjuk.",
                "example": "Nem léphet be. = You may not enter."
            },
			{
                "description": "TO BE ALLOWED TO = Engedélyt kérhetünk / adhatunk valamire. A MAY segédigével ellentétben egyszerű jelen, egyszerű múlt, egyszerű jövő, befejezett jelen és befejezett jövő időben is használható.",
                "example": "Nem léphetnek be. = They are not allowed to enter. --> Többi igeidőben: Tey were not allowed to enter. They won''t be allowed to enter. They have not been allowed to enter for years. They had not been allowed to enter before they got permission."
            },
			{
                "description": "LET SY DO STH = Hagyja, engedi, hogy valaki valamit csináljon (nem segédige, de hasonló a fentiek jelentéséhez)",
                "example": "Nem engedtem meg, hogy begyere. = I didn''t let you come in."
            }
		]'
    ),
    (
        'DARE Modal verb',
        'DARE módbeli segédige',
        '',
        null,
        '[]',
        '[
			{
                "description": "DARE (TO) DO / DON''T DARE (TO) DO = mer, merészel / nem mer. Egyszerű és befejezett jelen valamint egyszerű és befejezett múlt időben, továbbá egyszerű jövő időben használjuk. Ebben az értelemben a mai angol nyelvben inkább a „have the courage to do sth” vagy a „to be afraid to do sth” kifejezést használják.",
                "example": "Nem merem megtenni. = I don''t dare to do it. I don''t have the courage to do it. I''m afraid to do it."
            },
			{
                "description": "DARE(D) DO / DARE(D) NOT DO = a) mer, merészel / nem mer. Csak egyszerű jelen és egyszerű  múlt időben használhatjuk.",
                "example": "Nem merem megtenni. = I daren''t do it."
            },
			{
                "description": "DARE(D) DO / DARE(D) NOT DO = b) méltatlankodás, felháborodás kifejezésére.",
                "example": "Hogy mered ezt mondani? = How dare you say it?"
            },
			{
                "description": "YOU DARE/ DON''T YOU DARE = Csak azt merészeld! Ne merészeld!",
                "example": "Ne merészeld megpróbálni! = Don''t you dare try it!"
            },
			{
                "description": "I DARE SAY = a) Valószínűnek, elképzelhetőnek tartom. (Nem pedig „Ki merem jelenteni, merem állítani, hogy...”) b) Elhiszem, hogy úgy van, de ez a helyzeten nem változtat.",
                "example": "Valószínű, hogy ő csak egy csaló. = I dare say that he is only a swindler. Elhiszem, de meg kell mutatnia a személyi igazolványát! = I dare say, but you have to show me your ID."
            },
			{
                "description": "DARE SY TO DO STH = Bíztat, felbuzdít valakit valami olyasmire, ami meghaladja a képességeit.",
                "example": "Hadd lássam, mersz-e egy keréken motorozni? = I dare you to ride your motorbike on one wheel."
            }
		]'
    ),
    (
        'Modal verbs - CAN, COULD, WOULD, WILL',
        'Kérés, óhaj, felajánlás, engedélykérés kifejezése módbeli segédigékkel',
        '',
        null,
        '[]',
        '[
			{
                "description": "Valakit megkérünk valamire. (Mind a 4 címben szereplő segédigét hazsnálhatjuk):",
                "example": "Can you hold the line, please? Would you be so kind as to close the window?"
            },
			{
                "description": "Valakitől kérünk valamit:",
                "example": "Can I have a kilo of apples, please? Could I have a glass of water please?"
            },
			{
                "description": "Valakitől engedélyt kérünk, vagy valamit megengedünk:",
                "example": "Could I use the photocopier? May I borrow your pen for a minute?"
            },
			{
                "description": "Valakinek felajánlunk valamit:",
                "example": "What can I do for you? Can i help you? I will help you."
            },
			{
                "description": "Valakinek felajánljuk valamit a would like segítségével:",
                "example": "Would like me to set a new computer for you?."
            },
			{
                "description": "Valakit valamivel megkínálunk:",
                "example": "Would you like something to drink?"
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
                "description": "HAD BETTER DO / NOT DO = a) Jobb lenne, ha... valaki  csinálna/ nem csinálna valamit.  b) Jobban tenné, ha... / ha nem... A had better kicsit erősebb, mint a should, benne van az, hogy valami negatív következménye lesz a dolognak, ha nem teszed meg.",
                "example": "You''d better take a taxi. I''d better not go there."
            },
            {
                "description": "A HAD BETTER-t általános tanácsok megfogalmazására nem használhatod, mindig csak konkrét élethelyzetekre használhatod, ott viszont igen gyakori! Emiatt nem találsz pl. had better-t egy használati útmutatóban sem, hiszen ott is általános tanácsokat fogalmaznak meg, nem konkrét élethelyzetekben adnak tanácsot.",
                "example": "Nem mondasz olyat, hogy: People had better not watch so much TV. --> People shouldn''t watch so much TV."
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
                "description": "A feltételes mód első típusába azok a mondatok tartoznak, amelyek lehetséges feltételt fejeznek ki és általában a jövőre vonatkoznak. A főmondatban WILL segédigét, a mellékmondatban SIMPLE PRESENT TENSE-t/EGYSZERŰ JELEN IDŐT használunk. Mellékmondatnak mindig az if-fel kezdődő mondat minősül. A főmondat és a mellékmondat sorrendje felcserélhető. Ha az if-es mellékmondat az első helyen áll, akkor vesszővel választjuk el a főmondattól. Ha az if-es mellékmondat a főmondatot követi, akkor nem használunk vesszőt. Kérdésekben a tagmondatok sorrendje felcserélődik, de az előbbi szabály marad!",
                "example": "I will do it if you do it too. If you do it, I will do it too."
            },
			{
                "description": "A feltételes mód második típusa kevésbé valószínű, de még megvalósítható feltételt fejez ki. A főmondatban WOULD segédigét, az if-es mellékmondatban SIMPLE PAST TENSE-t / EGYSZERŰ MÚLT IDŐT használunk. A „to be” múlt idejeként korábban minden személyben a WERE-t használták; ma már azonban a WAS használata is helyes. Kivétel ez alól az ''If I were you..'' (Ha a helyedben lennék...) szerkezet. Ezt mindig ebben a formában használjuk. A mellékmondat és főmondat sorrendje továbbra is felcserélhető, és a vessző használatára ugyanaz a szabály vonatkozik, mint a feltételes mód első típusa esetén.",
                "example": "I would do it if you did it too. If you did it, I would do it too."
            },
			{
                "description": "A feltételes mód harmadik típusa lehetetlen, már nem megvalósítható feltételt fejez ki. A főmondatban a WOULD HAVE / COULD HAVE + IGE 3. alakját, az if-es mellékmondatban a PAST PERFECT TENSE-t / BEFEJEZETT MÚLT IDŐT használjuk. A tagmondatok sorrendjére és a vessző használatára ugyanazok a szabályok érvényesek, mint a feltételes mód első és második típusa esetén. Kérdésekben természetesen megcserélődnek a tagmondatok és a would / could kezdi a mondatot.",
                "example": "I would have done it if you had done it too. If you had done it, I would have done it too. Would you have helped me if I had asked you to?"
            },
			{
                "description": "A vegyes feltételes mód azt jelenti, hogy különböző típusú feltételes módot használunk egy mondaton belül. Például a főmondatot 2. feltételes, a mellékmondatot 3. feltételes módba tesszük.",
                "example": "Megcsinálnám, ha korábban te is megcsináltad volna. I would do it if you had also done it earlier."
            }
		]'
    ),
    (
        'Conditional clauses (if) 2.0',
        'Feltételes mód 2.0',
        'Egyéb fontos tudnivalók a feltételes módról',
        null,
        '[]',
        '[
			{
                "description": "Képesség kifejezése feltételes módban:",
                "example": "If you can do it, I can do it too. If you could do it, I could also do it. If you had been able to do it, I could have done it too."
            },
			{
                "description": "If I were you = ha a helyedben lennék",
                "example": "Ha a helyedben lennék, nem venném meg. = If I were you, I wouldn''t buy it."
            },
			{
                "description": "Even if = még akkor is, ha / akkor sem, ha..",
                "example": "Akkor sem adnám el nekik, ha egymillió dollárt kínálnának érte. = I wouldn''t sell it to them, even if they offered me one million dollars for it."
            },
			{
                "description": "If it weren''t for... = Ha nem lenne..., If it hadn''t been for... = Ha nem lett volna...",
                "example": "Ha nem lenne rossz idő, elmennénk kirándulni. = If it weren''t for the bad weather, we would go on a trip."
            },
			{
                "description": "But for = Ha nem lenne... / Ha nem lett volna...",
                "example": "Ha a szüleid lakása nem lenne, albérletben laknánk. = But for your parents'' flat, we would live in digs. Ha a szüleid lakása nem lett volna, albérletben laktunk volna. = But for your parents'' flat, we would have lived in digs."
            },
			{
                "description": "In case versus if = Arra az esetre, ha..., Abban az esetben, ha... Az in case után csak Simple Present, Simple Past vagy should állhat.",
                "example": "If the weather is bad, I will also take a pullover with me. I will take a pullover with me, in case the weather is bad. Az első esetben csak akkor viszem el a pulóvert, ha rossz idő lesz, ha süt a nap nem viszem magammal. A második esetben akkor is elviszem, ha épp süt a nap, mert később még rosszra fordulhat az idő."
            },
			{
                "description": "If + should = Ha netán..., Ha esetleg...",
                "example": "Ha netán találkoznál vele, add át üdvözletem. = If you should meet him, give him my regards."
            },
			{
                "description": "If + will/would = Ha hajlandó lesz... / Ha hajlandó lenne...",
                "example": "Ha hajlandó lesz megcsinálni, nagyon boldog leszek. = If he will do it, I will be very happy."
            },
			{
                "description": "„If” elhagyása fordított szórenddel:",
                "example": "If I were Jack, I wouldn''t go there. --> Were I Jack, I wouldn''t go there."
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
            },
			{
                "description": "Modális segédigék függő beszédben: A modális segédigék többnyire nem változnak függő beszédben, viszont bizonyos esetekben a jelentés dönti el, hogy módosulnak-e vagy sem.",
                "example": "may - might; may have - might have; might - might; must - ha ''kell'', akkor had to vagy must lesz belőle, ha ''bizonyára'', akkor must; mustn''t - mustn''t; can - could; can''t - ha a ''biztos, hogy nem'' jelentéssel használjuk, akkor can''t marad; could - could; should - should; ought to - ought to; needn''t - needn''t; don''t need to - didn''t need to; would - would; had better - had better; would rather - would rather"
            },
			{
                "description": "Feltételes mód függő beszédben: A feltételes mód második és harmadik típusa egyáltalán nem változik függő beszédben, csak az első feltételesből lesz második feltételes.",
                "example": "If you sell it, I will buy it. --> He said if I sold it, he would buy it. If you sold it, I would buy it. --> He said if I sold it, he would buy it. If you had sold it, I would have bought it. --> He said if I had sold it, he would have bought it."
            },
			{
                "description": "Olyan közlések, amelyek általános vagy örökérvényű igazságot tartalmaznak, és azok még a közlés időpontjában is érvényben vannak, nem változnak.",
                "example": "The Earth goes round the Sun. --> Our teacher said that the Earth goes round the Sun."
            },
			{
                "description": "Időhatározói mellékmondatnál a Simple Past vagy Past Continuous igeidő megmarad, a főmondat állítmánya pedig átkerülhet Past Perfect-be, de nem feltétlenül kell átalakítani.",
                "example": "When she was young she played the violin. --> She said when she was young she played / had played the violin."
            },
			{
                "description": "Az „I wish, would rather, if only” után a múlt időben lévő igék nem változnak.",
                "example": "I would rather you didn''t leave. --> He said he would rather I didn''t leave. I wish it was raining now. --> He wished it was raining then."
            },
			{
                "description": "A határozók változása: now - then / at that time; ago - before / earlier; a few days ago - a few days before / a few days earlier; today - that day; tomorrow - the following day / the next day; yesterday - the day before / the previous day; this morning - that morning; the day after tommorrow - in two days time; the day before yesterday - two days before; next week - the following week / the week after; last week - the previous week / the week before;",
                "example": "I''m eatung an apple now. --> He asked that he was eating an apple then."
            },
			{
                "description": "Eyéb határozószó változások: „This”-ből akkor lesz „that”, ha időpont meghatározásról van szó. A mutatónévmásként használt „this”, „these”, „that”, „those” függő beszédben többnyire „the”-vé alakulnak át. Ha azonban a „this” és a „these” főnevet helyettesítenek, akkor „it” vagy „them” lesz belőlük.",
                "example": "I''ll go home this week. --> She said she would go home that week. I like these shoes. --> He said he liked the shoes. I''ll put these on the wall. --> He said he would put them on the wall."
            }
		]'
    ),
    (
        'Relative clauses (who, which, that...)',
        'Jelzői mellékmondatok',
        'A jelzői mellékmondatok két fő típusa az úgynevezett defining clause (szűkítő mellékmondat) és a clause (bővítő mellékmondat).',
        'Az angol nyelvben a vonatkozó névmásoknak jelentés-megkülönböztető szerepe lehet. A következő névmásokat használhatjuk kötőszóként: who - aki, akik, akit, akiket; whom - akit (Akkor használjuk, ha prepozíció előzi meg.); whose - akinek a..., akiknek a... , aminek a...; which - amely, amelyek, amelyet, ami, amit stb.; that - ami, amit, aki, akit; what -- az a dolog ami, azt a dolgot amit; where - ahol; when - amikor; why - amiért.',
        '[]',
        '[
			{
                "description": "SZŰKÍTŐ MELLÉKMONDAT (Defining clause): Ezek a mellékmondatok a mondat egészének megértéséhez nélkülözhetetlenek. Mivel szorosan kötődnek a főmondathoz, az angol nyelvben még vesszővel sem törjük meg ezt a szoros egységet.",
                "example": "The boy who/that helped me lives next door. The book which/that is lying on the floor is not yours."
            },
			{
                "description": "Szűkítő mellékmondat - Alanyi mellékmondat. Ha a kötőszó alanyi mellékmondatot vezet be, (aki, ami), akkor a kötőszót mindig ki kell tenni.",
                "example": "The girl who/that is sitting next to you is very clever. The room which/that faces the street is very noisy."
            },
			{
                "description": "Szűkítő mellékmondat - Tárgyi mellékmondat: Ha a kötőszó tárgyi mellékmondatot vezet be (akit, amit), akkor akár el is hagyható. Ez akkor is van, ha a kötőszóhoz valamilyen prepozíció tartozik, hiszen a prepozíció is mindig tárgyesetet vonz. Ha a kötőszót elhagyjuk, akkor a prepozíció mindig a mellékmondat végére kerül.",
                "example": "The book (which/that) I  lent you is Joe''s. The book you had been looking for was behind the wardrobe."
            },
			{
                "description": "A mellékmondatban kötőszót nem hagyhatjuk el, ha azt a prepozíció megelőzi. Ebben az esetben azonban csak a „whom” és a „which” kötőszó használható. A „that” és a „who” nem! Összefoglalva tehát, ha prepozíció járul a kötőszóhoz, a következő variációk léteznek:",
                "example": "This is the book about which I want to talk. This is the book which I want to talk about. This is the book that I want to talk about. This is the book I want to talk about. (Ez a leggyakoribb változat.)"
            },
			{
                "description": "BŐVÍTŐ MELLÉKMONDAT (Non-defining clause): Ez a mellékmondat, ahogy az angol megnevezés is mutatja, nem meghatározó a főmondat megértése szempontjából. Akár el is hagyható, hiszen akkor is teljesen világos, hogy a beszélő kire vagy gondol. Valójában csak kibővíti a főmondat értelmét. Mivel nem képez olyan szoros egységet a főmondat alanyával, mint a szűkítő mellékmondat, vesszővel tagoljuk őket.",
                "example": "The doctor who wrote this book got a Nobel prize.  Dr Smith, who wrote this book, got a Nobel prize. Az első mondatban, ha csak az alanyt nézzük, nem derül ki, hogy konkrétan kiről van szó. Bármilyen orvosra gondolhatunk. A második mondat alanya azonban egy konkrét személy, a mellékmondat már csak adalék információval szolgál. Tehát ha elhagyjuk, akkor is tudjuk, hogy kiről van szó."
            },
			{
                "description": "A that kötőszót nem hazsnálhatjuk bővítő mellékmondatban.",
                "example": "My sister, who lives in Canada, got married. (Csak egy nővérem van, aki egyébként Kanadában él)."
            },
			{
                "description": "A kötőszavakat akkor sem hagyhatjuk el, ha azok tárgyi mellékmondatot vezetnek be, illetve ha prepozícióval állnak.",
                "example": "My sister, who you also like, got married."
            }
		]'
    ),
    (
        'Inversion',
        'Fordított szórend',
        'Bizonyos után fordított, azaz kérdő szórendet használunk. Ez csak abban az esetben van így, ha a határozószót vagy a határozót kiemeljük a mondat legelejére.',
        null,
        '["He went home only after the lesson --> Only after the lesson went he home", "I have never seen a whale --> Never have I seen a whale"]',
        '[
			{
                "description": "Hardly ever / Scarcely ever — alig, ritkán",
                "example": "Alig találkozom vele. = I hardly ever meet him / Hardly ever do I meet him."
            },
			{
                "description": "Hardly ... when / Scarcely ... when / No sooner ... than - alighogy",
                "example": "Alighogy beléptek a szobába, máris bekapcsoltåk a TV-t. = They had hardly entered the room when they switched on the TV. Hardly had they entered the room when they switched on the TV."
            },
            {
                "description": "In / under no circumstances — semmiféle körülmények között; In no way — semmiképpen; On no condition — semmiféle feltétel mellett, semmiképpen; On no account — semmiképpen",
                "example": "Semmiféle körülmények között sem fogok elköltözni. = I won''t move in any circumstances. / In no circumstances will I move."
            },
            {
                "description": "Neither / nor... — sem; So — is",
                "example": "Még nem voltam Ausztráliában. Én sem. = I haven''t been to Autralia. Neither have I. / Nor have I."
            },
            {
                "description": "Not till / until... — addig nem, amíg nem",
                "example": "Nem vette észre, hogy ellopták a pénztárcáját, amíg fizetni nem akart. = He didn''t realize that his purse was stolen until he wanted to pay. / Not till he wanted to pay, did he realize that his purse was stolen."
            },
            {
                "description": "Never — soha",
                "example": "Még sohasem jártam New Yorkban. = I have never been to New York. / Never have I been to New York."
            },
            {
                "description": "Not only ... but also — nemcsak ...m hanem ... is",
                "example": "Nemcsak kiabál vele, de meg is veri. = He doesn''t only shout with her, but he also beats her up. / Not only does he shout with her, but he also beats her up."
            },
            {
                "description": "Nowhere — sehol",
                "example": "Sehol sem találtam a pénztárcámat. = I didn''t find my purse anywhere. / Nowhere did I find my purse."
            },
            {
                "description": "Only by — csak a ... által",
                "example": "Csak az ablakot betörve tudott bejutni a házba. = He was able to get into the house only by breaking the window. / Only by breaking the window was he able to get into the house."
            },
            {
                "description": "Only in this way — csak ily módon, csak így",
                "example": "Csak így tudunk találkozni.= We can meet only in this way. / Only in this way can we meet."
            },
            {
                "description": "Only then/when... / after... — csak aztán / amikor ... / azután, hogy ...",
                "example": "Csak amikor újra találkoztunk, tudtuk meg, hogy mi történt. = We learnt what had happened only when we met again. / Only when we met again, did we learn what had happened."
            },
            {
                "description": "KIVÉTEL: Only = egyedül: Ha az „only” azt jelenti, hogy „egyedül, nem pedig „csak”, akkor nem használhatunk fordított szórendet akkor sem, ha a mondat elején áll.",
                "example": "Egyedül Péter látta hogy történt a baleset. = Only Peter saw how the accident happened."
            },
            {
                "description": "Seldom / Rarely — ritkán",
                "example": "Ritkán találkozhatunk ilyen öreg emberrel. = We can rarely / seldom meet such an old man. Seldom / rarely can we meet such an old man."
            },
            {
                "description": "Little — kicsit, keveset, nem nagyon",
                "example": "Nem nagyon értettem, hogy mi történt. = Little did I understand what had happened."
            },
            {
                "description": "As — ahogy, akárcsak",
                "example": "Én is angolt kezdtem tanulni, akárcsak a nővérem. = I started learning English as did my sister."
            },
            {
                "description": "So + melléknév — ilyen, olyan (ha a be igével áll)",
                "example": "Olyan lassú volt, hogy mindenki megelőzte. = He was so slow that everybody overtook him. So slow was he, that everybody overtook him."
            },
            {
                "description": "Such: Csak akkor használhatunk fordított szórendet vele, ha a such a be igével önállóan áll. Jelentése: olyan nagy",
                "example": "Olyan nagy volt a vihar, hogy a házak teteje megrongálódott. = Such was the storm that the roofs of the houses got destroyed."
            },
            {
                "description": "If elhagyásakor",
                "example": "Ha itt lennének, segítenének. = If they were here, they would help us. / Were they here, they would help us."
            }
		]'
    ),
    (
        'Emphasis, cleft sentences',
        'Nyomatékosítás, kiemelés',
        'Az angolban, akárcsak a magyarban, bizonyos mondatrészeket hangsúlyosabbá tehetünk, A következő szerkezeteket használhatjuk hangsúlyozásra.',
        null,
        '[]',
        '[
			{
                "description": "IT IS/WAS ... THAT/WHO  = az / volt az, aki / ami... Ahogy a példák mutatják, az „It is/was...” szerkezet után a személyes névmás alanyesetben áll, kivéve egyes szám első személyben (It was me who...). A mondat elején akkor is az „It is / was...” szerkezetet használjuk, ha az utána következő szó többes számot kívánna meg. Az „It is /was” szerkezet vagy a „who” vagy a „that” kötőszavakkal állhat, de bizonyos esetekben a „when” és „where” kötőszavakkal is előfordulhat.",
                "example": "Alapmondat: Tim lost his documents yesterday. Hangsúlyos mondatok: It was Tim who lost his documents yesterday. It was he who lost his documents. It was yesterday that Tim lost his documents. It was his documents that Tim lost yesterday."
            },
            {
                "description": "Bizonyos esetekben az „It is... who /that” szerkezet állhat módbeli segédigékkel is.",
                "example": "A lánya lehet az, aki mellette ül. = It may be his daughter who is sitting next to him."
            },
            {
                "description": "THIS IS/WAS... / THAT IS/WAS ... — - Ez/Az volt az, ami...",
                "example": "Ez minden, amit tehetek. = That''s all I can do."
            },
            {
                "description": "Ha a „this is”, „that is” szerkezetet nem követi valamilyen konkrét dolog, akkor a „what” kötőszót használjuk.",
                "example": "Ez az, amit én nem értek. = This is what I don''t understand."
            },
            {
                "description": "WHAT... — Az ami... / Ami...",
                "example": "Ami most fontos, az az, hogy mindenki biztonságban van. = What is important now is that everybody is safe."
            },
            {
                "description": "ALL... = Csak a... / Mindaz ami...",
                "example": "Csak szerelemre van szükségem. = All I need is love."
            },
            {
                "description": "Alanyemelés: A mondat tárgyát a mondat elejére helyezzük. Általában mellékneves szerkezetekkel fordul elő.",
                "example": "A német nyelvet nehéz megtanulni. = German is difficult to learn."
            },
            {
                "description": "Az állítmány nyomatékosítása: Általában egyszerű jelen és egyszerű múlt időben használunk nyomatékosítást a DO vagy a DID segédigékkel.",
                "example": "Ha itt lennének, segítenének. = If they were here, they would help us. / Were they here, they would help us."
            },
            {
                "description": "If elhagyásakor",
                "example": "Tényleg tetszik a könyved. = I do like you book."
            },
            {
                "description": "Very: mondatrészek kiemelésére: pontosan, éppen, maga a / az a",
                "example": "A város kellős közepén = In the very centre of the town. Éppen ugyanabban a pillanatban = In the very same moment"
            }
		]'
    ),
    (
        'Embedded questions',
        'Beágyazott kérdések',
        'A beágyazott kérdés két különálló kérdés ötvözete. Ezek az úgynevezett „Mit gondolsz...?” „Mit mondtál...?” típusú kérdések.',
        null,
        '["Mit gondolsz, hol dolgozik? = Where do you think he works?"]',
        '[
            {
                "description": "A magyar nyelvben a két kérdőmondatot könnyen egy mondattá alakíthatjuk, hiszen csak egymás mellé kell tenni őket. Az angolban azonban a második mondat kérdőszava kerül előre, és a főmondatot követően a mellékmondat egyenes szórendben lesz. Ha a főmondat múlt idejű, akkor - akárcsak függó beszédben — a mellékmondat igeidejét is módosítani kell.",
                "example": "Where did you say he worked?"
            },
            {
                "description": "A mai angolban a „do you think” a mondat végére is kerülhet. Ilyenkor mindkét tagmondatban kérdő szórendet használunk.",
                "example": "Mit gondolsz, ki a barátnője? = Who do you think girlfriend is?"
            }
		]'
	),
	(
		'Generic You / One',
		'Általános alany',
		'Ha egy mondatban nincsen alany és a szenvedő szerkezetet sem tudjuk alkalmazni, akkor jön be a képbe az általános alany. Az alany vagy a ''YOU'', vagy a ''ONE'' szó. A ''ONE'' szó esetén a ragozás E/3 szerint történik',
		'Ha a ''YOU'' szó van használva alanyként, akkor a szövegkörnyezet szerint lehet eldönteni, hogy általános alanyról beszélünk vagy sem.',
		'[]',
		'[
			{
                "description": "A következő mondant jelentheti azt, hogy: ''Ezt nem lehet megcsinálni.'', vagy: ''Ezt Te nem tudod megcsinálni.''",
                "example": "You can''t do that."
            },
			{
                "description": "Példamondat a ''ONE'' használatával",
                "example": "One never knows what the future holds."
            }
		]'
	),
	(
		'Both / Either / Neither',
		'Mindkettő / Bármelyik / Egyiksem',
		'A both / either / neither szavaknál a legfontosabb szabály, hogy mindig csak akkor használhatod őket, ha 2 dologról beszélsz. Több dolog esetén nem működnek ezek a szavak.',
		'',
		'[]',
		'[
			{
                "description": "Both...and... = ....is....is",
                "example": "Both Hungary and Slovakia are small countries. / Magyarország is és Szlovákia is kis ország."
            },
			{
                "description": "Either...or...=...vagy...vagy",
                "example": "I''d like to go on holiday either to Italy or to Greece. / Vagy Olaszországba vagy Görögországba szeretnék menni nyaralni."
            },
			{
                "description": "Neither...nor...=...sem...sem (tagadó értelmű: mellette már nem tagadhatsz)",
                "example": "Neither Hungary nor Ukraine is a rich country. / Sem Magyarország, sem Ukrajna nem gazdag ország."
            },
			{
                "description": "Az either...or... egy tagadómondatban pont ugyanazt jelenti, mint a neither..nor... önmagában.",
                "example": "I don''t like either coffee or tea. = I like neither coffee nor tea. / Sem a kávét, sem a teát nem szeretem."
            },
			{
                "description": "A ''BOTH OF'' mindkettő valamiből. Az ''OF'' a both esetében elhagyható.",
                "example": "Both of my notebooks are upstairs. / Mindkét notebookom az emeleten van."
            },
			{
                "description": "A ''EITHER OF'' valamelyik a kettő közül.",
                "example": "Either of my notebooks is upstairs. / Valamelyik notebookom az emeleten van."
            },
			{
                "description": "A ''NEITHER OF'' egyiksem a kettő közül.",
                "example": "Neither of my notebooks are /is upstairs. = Egyik notebookom sincs az emeleten."
            }
		]'
	),
	(
		'Even',
		'Even és társai',
		'Az even jelentése: még ....... is vagy tagadó mondatok esetén még ......... sem. A ........ részre a magyarban mindig fog még valami kerülni a mondatban. Az even a mondatban szinte bármelyik mondatrész elé kerülhet, attól függően, hogy melyiket akarod hangsúlyozni (lásd: 2. és 3. példamondat).',
		'',
		'["She bought a carpet and she even bought an expensive vase / Vett egy szőnyeget és még egy drága vázát is vett.", "She works even at night. / Még éjjel is dolgozik.", "Even Jack was there. / Még Jack is ott volt."]',
		'[
			{
                "description": "Az ''EVEN IF'' jelentése ''még akkor is''. AZ ''EVEN WHEN''jelentése ''még akkor is, amikor (a magyarban sokszor itt is ha szerepel)''",
                "example": "I will buy it even if it costs millions. / Még akkor is megveszem, ha milliókba kerül. , He was doing it even when I told him to stop. / Még akkor is csinálta, amikor rászóltam, hogy hagyja abba."
            },
			{
                "description": "Az ''EVEN THOUGH'' nincs köze az even alapjelentéséhez, tulajdonképpen az although szinonímája, ami azt jelenti: ''HABÁR''",
                "example": "Even though it''s expensive, it doesn''t meet my demands. / Habár drága, nem felel meg az igényeimnek."
            }
		]'
	),
	(
		'The Infinitive of Purpose',
		'Célhatározó szerkezetek',
		'A célhatározó szerkezetek olyan mondatok a magyarban, amelyeket a ''hogy'' kötőszóval kötünk össze.',
		'',
		'[]',
		'[
			{
                "description": "''TO'' kötöszó használatánál mindkét oldalon ugyanaz az alany (az egyik oldalon nincs kitéve)",
                "example": "I went home to relax. / Hazamentem, hogy pihenjek."
            },
			{
                "description": "''IN ORDER TO'' használatánál mindkét oldalon ugyanaz az alany (az egyik oldalon nincs kitéve)",
                "example": "I went home in order to relax. / Hazamentem (annak érdekében), hogy pihenjek."
            },
			{
                "description": "''IN ORDER FOR SY TO DO SG'' használatánál mindkét oldalon különböző az alany!",
                "example": "Scientists work hard in order for people to have better medicine. / A tudósok keményen dolgoznak, hogy az embereknek jobb gyógyszerei legyenek!"
            },
			{
                "description": "''SO AS TO'' / ''SO AS NOT TO'' használatánál mindkét oldalon ugyanaz az alany (az egyik oldalon nincs kitéve)",
                "example": "I put on a coat so as not to catch a cold. / Felvettem egy kabátot, hogy ne fázzak meg."
            },
			{
                "description": "''SO THAT SY WILL / CAN / WOULD / COULD DO SG'' használatánál mindkét oldalon van alany, ami lehet különböző is.",
                "example": "I did sports every day so that I wouldn''t get fat. / Mindennap sportoltam azért, hogy ne legyek dagadt."
            },
			{
                "description": "''LEST SY (SHOULD) DO SG'' használatánál mindkét oldalon van alany, ami lehet különböző is.",
                "example": "I did sports lest I (should) get fat.  (igeidő egyeztetés NEM történik!) / Én sportoltam azért, hogy ne legyek kövér."
            }
		]'
	),
	(
		'Every / All / Each',
		'',
		'A jelentésbeli különbség annyi köztük, mint a magyarban, azaz nagyon kicsi. Az each a leghangsúlyosab!. Általában túl nagyszámú dologra nem használják, inkább kevés dologra mondják. Ha két dologra mondod, akkor csak az each jöhet szóba! Ami nagyon fontos, hogy az each és az every egyes számot vonz, az all pedig többes számot (All the chairs are...)',
		'',
		'["Each chair in the room is black. / Minden egyes szék fekete a teremben.", "Every chair in the room is black. / Minden szék fekete a teremben.", "All the chairs in the room are black. / Az összes szék fekete a teremben."]',
		'[
			{
                "description": "Mindegyik szót használhatod ''OF''-val együtt is. Ilyenkor mindenhol az ''OF'' után már többes számú főnév jön. Az ''EACH OF'' és az ''EVERY ON OF'' az kifejezetten hangsúlyos. Az ''ALL OF'' a leggyakoribb és legtermészetesebb.",
                "example": "All of the boys wanted to win the game. / Mindegyik fiú meg akarta nyerni a játékot., Each of the boys wanted to win the game. / Mindenegyes fiú meg akarta nyerni a játékot., Every one of the boys wanted to win the game. / Mindegyik a fiúk közül meg akarta nyerni a játékot."
            }
		]'
	),
	(
		'Prefer',
		'Prefer szerkezetei',
		'Prefer az angolban a következőket jelenti: jobban szeretem / inkább / jobb'' szeretnék...',
		'',
		'[]',
		'[
			{
                "description": "''PREFER SG TO SG'' Jobban szeretek valamit, mint egy másik valamit.",
                "example": "I prefer Coke to Pepsi. / Jobban szeretem a Cocát, mint a Pepsit., I prefer small villages to big cities. / Jobban szeretem a kis falvakat, mint a nagyvárosokat."
            },
			{
                "description": "''PREFER DOING SG TO DOING SG ELSE'' Jobban szeretek csinálni valamit, mint csinálni egy másvalamit",
                "example": "I prefer playing football to playing basketball. / Jobban szeretek focizni, mint kosarazni., Jack prefers working at night to sleeping. / Jack jobban szeret éjszaka dolgozni, mint aludni."
            },
			{
                "description": "''PREFER TO DO SG RATHER THAN DO SG ELSE'' Szívesebben csinálok valamit inkább, minthogy másvalamit csináljak. Ugyanaz, mint az előző szerkezet, csak más szavakkal.",
                "example": "I prefer to play football rather than play basketball. / Jobban szeretek focizni, mint kosarazni., Jack prefers to work at night rather than sleep. / Jack jobban szeret éjszaka dolgozni, mint aludni."
            },
			{
                "description": "''WOULD PREFER TO DO SG'' A ''WOULD PREFER TO''-t konkrét helyzetekben tudod használni. Pontosan ugyanaz a jelentése itt, mint a would rather szerkezetnek. Jelentése, hogy szívesebben csinálnék valamit.",
                "example": "Would you like to go out? / Szeretnél elmenni valahova?, No, I would prefer to watch TV. / Inkább itthon tévéznék."
            }
		]'
	),
	(
		'No longer / Any longer / No more',
		'',
		'Mindegyik szó azt jelenti, hogy: ''már nem''.',
		'',
		'[]',
		'[
			{
                "description": "Az ''ANY LONGER'' és az ''ANY MORE'' mindig tagadó mondatba kerül, tehát már előtte valamilyen tagadásnak kell lennie.",
                "example": "I don''t live there any longer. / Már nem lakom ott., I don''t live there any more. / Már nem lakom ott."
            },
			{
                "description": "Az ''ANY LONGER'' és az ''ANY MORE'' használható így is.",
                "example": "Nobody lives there any longer. / Már nem lakik ott senki."
            },
			{
                "description": "A ''NO LONGER'' önmaga adja a tagadást, tehát mellette már nem tagadhatsz. A no longer mindig az ige elé kerül!",
                "example": "I no longer live there. = Már nem lakom ott."
            }
		]'
	),
	(
		'Enough',
		'Az ''elég'' használata',
		'',
		'',
		'[]',
		'[
			{
                "description": "Ha az ''ENOUGH'' mellett főnév van, akkor a főnév elé kerül az enough.",
                "example": "I have enough wine, thank you. / Köszönöm, van elég borom., I don''t have enough money. / Nincs elég pénzem."
            },
			{
                "description": "Az angolban a melléknév után van az ''ENOUGH''. A magyarban az ''elég'' a melléknév elé jön.",
                "example": "It''s not cheap enough. / Ez nem elég olcsó."
            }
		]'
	),
	(
		'Quite / Rather',
		'Az ''eléggé'' vagyis ''elég'' használata',
		'Mi a különbség a rather és a quite között? Elviekben a quite az a pozitívabb melléknevek mellé kerül, míg a rather a negatívabb melléknevek mellé (quite young, de rather old). De ezzel a beszélt nyelv nem törődik.
		Szavak, amelyeknél a quite azt jelenti, hogy teljesen, s nem azt, hogy eléggé.
		amazing = csodálatos, lélegzetelállító
		certain = biztos (ugyanaz, mint a sure)
		clear = tiszta, érthető
		complete = kész
		different = különböző
		impossible = lehetetlen
		incredible = hihetetlen
		obvious = nyilvánvaló (It''s quite obvious that... Teljesen nyilvánvaló, hogy...)
		right = igaza van (You''re quite right. Teljesen igazad van.)
		safe = biztonságos
		unbelievable = hihetetlen
		unnecessary = szükségtelen',
		'',
		'[]',
		'[
			{
                "description": "A ''QUITE''-ot egyszerűen beteheted egy melléknév elé",
                "example": "This car is quite fast. / Elég gyors ez a kocsi., I''m quite tired. / Elég fáradt vagyok."
            },
			{
                "description": "Amikor főnév is jön a melléknév után, akkor a névelő a ''QUITE'' után jön!",
                "example": "This is quite a good car. / Ez egy elég jó kocsi., She is quite a tall girl. / Elég magas lány."
            },
			{
                "description": "A ''RATHER''-t egyszerűen beteheted egy melléknév elé:",
                "example": "That''s rather bad news. / Ez elég rossz hír., She''s rather old. / Ő elég idős már."
            },
			{
                "description": "Amikor főnév is jön a melléknév után, akkor a névelő a ''RATHER'' elé és után jöhet!",
                "example": "This is a rather bad car. / Elég béna ez a kocsi., This is rather a bad car. / Elég béna ez a kocsi."
            },
			{
                "description": "A ''QUITE''-nak van egy olyan esete is, amikor simán egy főnév jön utána. Ilyenkor a quite egy nagyon pozitív jelző.",
                "example": "Wow! It''s quite a car. / Apám, micsoda kocsi!, He''s dating quite a girl. / Nem semmi csajszival jár!"
            },
			{
                "description": "A ''QUITE'' bizonyos melléknevek mellett nem azt jelenti, hogy eléggé, hanem azt, hogy teljesen.",
                "example": "I''m quite ready. / Teljesen kész vagyok., Are you quite sure about this? / Teljesen biztos vagy ebben?"
            }
		]'
	),
	(
		'In case',
		'',
		'Az ''IN CASE'' jelentése ''HÁTHA'' vagy ''ARRA AZ ESETRE, HA...''.',
		'',
		'[]',
		'[
			{
                "description": "Példa arra, amikor az ''IN CASE'' azt jelenti, hogy hátha.",
                "example": "Take an umbrella in case it rains. / Vigyél esernyőt, hátha esni fog."
            },
			{
                "description": "Ha a mondat eleje múlt idejű, akkor az in case is csúszik múlt időbe!",
                "example": "I took an umbrella in case it rained. / Vittem esernyőt, hátha esik majd."
            },
			{
                "description": "A ''IN CASE OF'' jelentése valami esetén.",
                "example": "In case of emergency / Vészhelyzet esetén."
            }
		]'
	),
	(
		'Although / Despite / In spite of',
		'Bár / Annak ellenére / Ellenére',
		'''IN SPITE OF SG'' vagy ''DESPITE SG'' jelentése valami ellenére. A kifejezések után csak egy sima főnév jöhet.',
		'',
		'[In spite of the bad weather, we went on the trip. / A rossz idő ellenére, elmentünk kirándulni., Despite the bad weather, we went on the trip. / A rossz idő ellenére, elmentünk kirándulni.]',
		'[
			{
                "description": "Ha komplett mondatot szeretnél betenni ''IN SPITE OF SG'' vagy ''DESPITE SG'' után, akkor kell egy főnév középre, amihez a mondat hozzákapcsolódhat. Ez lesz a: ''THE FACT THAT'' kifejezés.",
                "example": "In spite of the fact that I liked my car, I sold it, Despite the fact that I liked my car, I sold it. = Annak ellenére, hogy szerettem a kocsimat, eladtam."
            },
			{
                "description": "Az ''ALTHOUGH'' is használható annak a kifejezésére, hogy valamit teszünk valami ellenére. Ezt legtöbbször habárnak fordítják, de ez is azt jelenti, hogy annak ellenére, hogy... ''ALTHOUGH'' után csak teljes mondat következhet.",
                "example": "Although I liked my car, I sold it. / Annak ellenére, hogy szerettem a kocsimat, eladtam."
            },
			{
                "description": "A ''DESPITE'' után jöhet egy sima ing-es alak is, csak akkor fontos, hogy az inges alak mellett nincs alany és a túloldali alany az aki logikailag idepasszol.",
                "example": "Despite being a doctor, he didn''t help. = Annak ellenére, hogy orvos, nem segített."
            }
		]'
	),
	(
		'Than / As...As.../ Like',
		'Hasonlító szerkezetek',
		'',
		'',
		'[]',
		'[
			{
                "description": "A ''THAN'' -nel összekötött tagmondatok közül az első tartalmazza a fokozott melléknevet. A második pedig azt, amihez hasonlítjuk.",
                "example": "I''m taller than you. / Magasabb vagyok, mint Te."
            },
			{
                "description": "''AS... AS...'' szerekezet magyarul ''OLYAN...(MELLÉKNÉV), MINT...'' A melléknév mindig sima, nem fokozott!",
                "example": "I''m as tall as you. / Olyan magas vagyok, mint Te."
            },
			{
                "description": "''LIKE'' szerkezettel azt fejezzük ki, hogy valami pontosan / tisztára olyan, mint egy másik dolog.",
                "example": "She is like Britney Spears. / Ő tiszta olyan, mint Britney Spears., Do it like me. / Úgy csináld, mint én."
            }
		]'
	);
