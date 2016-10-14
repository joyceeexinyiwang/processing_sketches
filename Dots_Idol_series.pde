import processing.dxf.*;

PImage img;
int smallPoint, largePoint;
int count;
String str = "Ginsberg";
String Kaddish =         
                "Strange now to think of you, gone without corsets & eyes, while I walk on the sunny pavement of Greenwich Village. \n" +
                "downtown Manhattan, clear winter noon, and I’ve been up all night, talking, talking, reading the Kaddish aloud, listening to Ray Charles blues shout blind on the phonograph \n" +
                "the rhythm the rhythm—and your memory in my head three years after—And read Adonais’ last triumphant stanzas aloud—wept, realizing how we suffer— \n" +
                "And how Death is that remedy all singers dream of, sing, remember, prophesy as in the Hebrew Anthem, or the Buddhist Book of Answers—and my own imagination of a withered leaf—at dawn— \n" +
                "Dreaming back thru life, Your time—and mine accelerating toward Apocalypse, \n" +
                "the final moment—the flower burning in the Day—and what comes after,   \n" +
                "looking back on the mind itself that saw an American city \n" +
                "a flash away, and the great dream of Me or China, or you and a phantom Russia, or a crumpled bed that never existed— \n" +
                "like a poem in the dark—escaped back to Oblivion— \n" +
                "No more to say, and nothing to weep for but the Beings in the Dream, trapped in its disappearance, \n" +
                "sighing, screaming with it, buying and selling pieces of phantom, worshipping each other,\n" +
                "worshipping the God included in it all—longing or inevitability?—while it lasts, a Vision—anything more? \n" +
                "It leaps about me, as I go out and walk the street, look back over my shoulder, Seventh Avenue, the battlements of window office buildings shouldering each other high, under a cloud, tall as the sky an instant—and the sky above—an old blue place. \n" +
                "or down the Avenue to the south, to—as I walk toward the Lower East Side—where you walked 50 years ago, little girl—from Russia, eating the first poisonous tomatoes of America—frightened on the dock— \n" +
                "then struggling in the crowds of Orchard Street toward what?—toward Newark— \n" +
                "toward candy store, first home-made sodas of the century, hand-churned ice cream in backroom on musty brownfloor boards— \n" +
                "Toward education marriage nervous breakdown, operation, teaching school, and learning to be mad, in a dream—what is this life? \n" +
                "Toward the Key in the window—and the great Key lays its head of light on top of Manhattan, and over the floor, and lays down on the sidewalk—in a single vast beam, moving, as I walk down First toward the Yiddish Theater—and the place of poverty \n" +
                "you knew, and I know, but without caring now—Strange to have moved \n" +
                "thru Paterson, and the West, and Europe and here again, \n" +
                "with the cries of Spaniards now in the doorstoops doors and dark boys on the street, fire escapes old as you \n" +
                "-Tho you’re not old now, that’s left here with me— \n" +
                "Myself, anyhow, maybe as old as the universe—and I guess that dies with us—enough to cancel all that comes—What came is gone forever every time— \n" +
                "That’s good! That leaves it open for no regret—no fear radiators, lacklove, torture even toothache in the end— \n" +
                "Though while it comes it is a lion that eats the soul—and the lamb, the soul, in us, alas, offering itself in sacrifice to change’s fierce hunger—hair and teeth—and the roar of bonepain, skull bare, break rib, rot-skin, braintricked Implacability. \n" +
                "Ai! ai! we do worse! We are in a fix! And you’re out, Death let you out, Death had the Mercy, you’re done with your century, done with God, done with the path thru it—Done with yourself at last—Pure—Back to the Babe dark before your Father, before us all—before the world— \n" +
                "There, rest. No more suffering for you. I know where you’ve gone, it’s good. \n" +
                "No more flowers in the summer fields of New York, no joy now, no more fear of Louis, \n" +
                "and no more of his sweetness and glasses, his high school decades, debts, loves, frightened telephone calls, conception beds, relatives, hands— \n" +
                "No more of sister Elanor,.—she gone before you—we kept it secret—you killed her—or she killed herself to bear with you—an arthritic heart—But Death’s killed you both—No matter— \n" +
                "Nor your memory of your mother, 1915 tears in silent movies weeks and weeks—forgetting, aggrieve watching Marie Dressler address humanity, Chaplin dance in youth, \n" +
                "or Boris Godunov, Chaliapin’s at the Met, hailing his voice of a weeping Czar—by standing room with Elanor & Max—watching also the Capitalists take seats in Orchestra, white furs, diamonds, \n" +
                "with the YPSL’s hitch-hiking thru Pennsylvania, in black baggy gym skirts pants, photograph of 4 girls holding each other round the waste, and laughing eye, too coy, virginal solitude of 1920 \n" +
                "all girls grown old, or dead, now, and that long hair in the grave—lucky to have husbands later— \n" +
                "You made it—I came too—Eugene my brother before (still grieving now and will gream on to his last stiff hand, as he goes thru his cancer—or kill—later perhaps—soon he will think—) \n" +
                "And it’s the last moment I remember, which I see them all, thru myself, now—tho not you\n" +
                "I didn’t foresee what you felt—what more hideous gape of bad mouth came first—to you—and were you prepared? \n" +
                "To go where? In that Dark—that—in that God? a radiance? A Lord in the Void? Like an eye in the black cloud in a dream? Adonoi at last, with you? \n" +
                "Beyond my remembrance! Incapable to guess! Not merely the yellow skull in the grave, or a box of worm dust, and a stained ribbon—Deathshead with Halo? can you believe it? \n" +
                "Is it only the sun that shines once for the mind, only the flash of existence, than none ever was? \n" +
                "Nothing beyond what we have—what you had—that so pitiful—yet Triumph, \n" +
                "to have been here, and changed, like a tree, broken, or flower—fed to the ground—but mad, with its petals, colored, thinking Great Universe, shaken, cut in the head, leaf stript, hid in an egg crate hospital, cloth wrapped, sore—freaked in the moon brain, Naughtless. \n" +
                "No flower like that flower, which knew itself in the garden, and fought the knife—lost \n" +
                "Cut down by an idiot Snowman’s icy—even in the Spring—strange ghost thought—some Death—Sharp icicle in his hand—crowned with old roses—a dog for his eyes—cock of a sweatshop—heart of electric irons. \n" +
                "All the accumulations of life, that wear us out—clocks, bodies, consciousness, shoes, breasts—begotten sons—your Communism—‘Paranoia’ into hospitals. \n" +
                "You once kicked Elanor in the leg, she died of heart failure later. You of stroke. Asleep? within a year, the two of you, sisters in death. Is Elanor happy? \n" +
                "Max grieves alive in an office on Lower Broadway, lone large mustache over midnight Accountings, not sure. l His life passes—as he sees—and what does he doubt now? Still dream of making money, or that might have made money, hired nurse, had children, found even your Immortality, Naomi? \n" +
                "I’ll see him soon. Now I’ve got to cut through—to talk to you—as I didn’t when you had a mouth. \n" +
                "Forever. And we’re bound for that, Forever—like Emily Dickinson’s horses—headed to the End. \n" +
                "They know the way—These Steeds—run faster than we think—it’s our own life they cross—and take with them. \n" +
                "\n" +
                "       Magnificent, mourned no more, marred of heart, mind behind, married dreamed, mortal changed—Ass and face done with murder. \n" +
                "       In the world, given, flower maddened, made no Utopia, shut under pine, almed in Earth, balmed in Lone, Jehovah, accept. \n" +
                "       Nameless, One Faced, Forever beyond me, beginningless, endless, Father in death. Tho I am not there for this Prophecy, I am unmarried, I’m hymnless, I’m Heavenless, headless in blisshood I would still adore \n" +
                "       Thee, Heaven, after Death, only One blessed in Nothingness, not light or darkness, Dayless Eternity— \n" +
                "       Take this, this Psalm, from me, burst from my hand in a day, some of my Time, now given to Nothing—to praise Thee—But Death \n" +
                "       This is the end, the redemption from Wilderness, way for the Wonderer, House sought for All, black handkerchief washed clean by weeping—page beyond Psalm—Last change of mine and Naomi—to God’s perfect Darkness—Death, stay thy phantoms! \n" +
                "\n" +
                "\n" +
                "II \n" +
                "       Over and over—refrain—of the Hospitals—still haven’t written your history—leave it abstract—a few images \n" +
                "       run thru the mind—like the saxophone chorus of houses and years—remembrance of electrical shocks. \n" +
                "       By long nites as a child in Paterson apartment, watching over your nervousness—you were fat—your next move— \n" +
                "       By that afternoon I stayed home from school to take care of you—once and for all—when I vowed forever that once man disagreed with my opinion of the cosmos, I was lost— \n" +
                "       By my later burden—vow to illuminate mankind—this is release of particulars—(mad as you)—(sanity a trick of agreement)— \n" +
                "       But you stared out the window on the Broadway Church corner, and spied a mystical assassin from Newark, \n" +
                "       So phoned the Doctor—‘OK go way for a rest’—so I put on my coat and walked you downstreet—On the way a grammarschool boy screamed, unaccountably—‘Where you goin Lady to Death’? I shuddered— \n" +
                "       and you covered your nose with motheaten fur collar, gas mask against poison sneaked into downtown atmosphere, sprayed by Grandma— \n" +
                "       And was the driver of the cheesebox Public Service bus a member of the gang? You shuddered at his face, I could hardly get you on—to New York, very Times Square, to grab another Greyhound— \n" +
                "       where we hung around 2 hours fighting invisible bugs and jewish sickness—breeze poisoned by Roosevelt— \n" +
                "       out to get you—and me tagging along, hoping it would end in a quiet room in a Victorian house by a lake. \n" +
                "       Ride 3 hours thru tunnels past all American industry, Bayonne preparing for World War II, tanks, gas fields, soda factories, diners, loco-motive roundhouse fortress—into piney woods New Jersey Indians—calm towns—long roads thru sandy tree fields— \n" +
                "       Bridges by deerless creeks, old wampum loading the streambeddown there a tomahawk or Pocahontas bone—and a million old ladies voting for Roosevelt in brown small houses, roads off the Madness highway— \n" +
                "       perhaps a hawk in a tree, or a hermit looking for an owl-filled branch— \n" +
                "       All the time arguing—afraid of strangers in the forward double seat, snoring regardless—what busride they snore on now? \n" +
                "       ‘Allen, you don’t understand—it’s—ever since those 3 big sticks up my back—they did something to me in Hospital, they poisoned me, they want to see me dead—3 big sticks, 3 big sticks— \n" +
                "       ‘The Bitch! Old Grandma! Last week I saw her, dressed in pants like an old man, with a sack on her back, climbing up the brick side of the apartment \n" +
                "       ‘On the fire escape, with poison germs, to throw on me—at night—maybe Louis is helping her—he’s under her power— \n" +
                "       ‘I’m your mother, take me to Lakewood’ (near where Graf Zeppelin had crashed before, all Hitler in Explosion) ‘where I can hide.’ \n" +
                "       We got there—Dr. Whatzis rest home—she hid behind a closet—demanded a blood transfusion. \n" +
                "       We were kicked out—tramping with Valise to unknown shady lawn houses—dusk, pine trees after dark—long dead street filled with crickets and poison ivy— \n" +
                "       I shut her up by now—big house REST HOME ROOMS—gave the landlady her money for the week—carried up the iron valise—sat on bed waiting to escape— \n" +
                "       Neat room in attic with friendly bedcover—lace curtains—spinning wheel rug—Stained wallpaper old as Naomi. We were home. \n" +
                "       I left on the next bus to New York—laid my head back in the last seat, depressed—the worst yet to come?—abandoning her, rode in torpor—I was only 12. \n" +
                "       Would she hide in her room and come out cheerful for breakfast? Or lock her door and stare thru the window for sidestreet spies? Listen at keyholes for Hitlerian invisible gas? Dream in a chair—or mock me, by—in front of a mirror, alone? \n" +
                "       12 riding the bus at nite thru New Jersey, have left Naomi to Parcae in Lakewood’s haunted house—left to my own fate bus—sunk in a seat—all violins broken—my heart sore in my ribs—mind was empty—Would she were safe in her coffin— \n" +
                "       Or back at Normal School in Newark, studying up on America in a black skirt—winter on the street without lunch—a penny a pickle—home at night to take care of Elanor in the bedroom— \n" +
                "       First nervous breakdown was 1919—she stayed home from school and lay in a dark room for three weeks—something bad—never said what—every noise hurt—dreams of the creaks of Wall Street— \n" +
                "       Before the gray Depression—went upstate New York—recovered—Lou took photo of her sitting crossleg on the grass—her long hair wound with flowers—smiling—playing lullabies on mandolin—poison ivy smoke in left-wing summer camps and me in infancy saw trees— \n" +
                "       or back teaching school, laughing with idiots, the backward classes—her Russian specialty—morons with dreamy lips, great eyes, thin feet & sicky fingers, swaybacked, rachitic— \n" +
                "       great heads pendulous over Alice in Wonderland, a blackboard full of C A T. \n" +
                "       Naomi reading patiently, story out of a Communist fairy book—Tale of the Sudden Sweetness of the Dictator—Forgiveness of Warlocks—Armies Kissing— \n" +
                "       Deathsheads Around the Green Table—The King & the Workers—Paterson Press printed them up in the ’30s till she went mad, or they folded, both. \n" +
                "       O Paterson! I got home late that nite. Louis was worried. How could I be so—didn’t I think? I shouldn’t have left her. Mad in Lakewood. Call the Doctor. Phone the home in the pines. Too late. \n" +
                "       Went to bed exhausted, wanting to leave the world (probably that year newly in love with R         my high school mind hero, jewish boy who came a doctor later—then silent neat kid— \n" +
                "       I later laying down life for him, moved to Manhattan—followed him to college—Prayed on ferry to help mankind if admitted—vowed, the day I journeyed to Entrance Exam— \n" +
                "       by being honest revolutionary labor lawyer—would train for that—inspired by Sacco Vanzetti, Norman Thomas, Debs, Altgeld, Sand-burg, Poe—Little Blue Books. I wanted to be President, or Senator. \n" +
                "       ignorant woe—later dreams of kneeling by R’s shocked knees declaring my love of 1941—What sweetness he’d have shown me, tho, that I’d wished him & despaired—first love—a crush— \n" +
                "       Later a mortal avalanche, whole mountains of homosexuality, Matterhorns of cock, Grand Canyons of asshole—weight on my melancholy head— \n" +
                "       meanwhile I walked on Broadway imagining Infinity like a rubber ball without space beyond—what’s outside?—coming home to Graham Avenue still melancholy passing the lone green hedges across the street, dreaming after the movies—) \n" +
                "       The telephone rang at 2 A.M.—Emergency—she’d gone mad—Naomi hiding under the bed screaming bugs of Mussolini—Help! Louis! Buba! Fascists! Death!—the landlady frightened—old fag attendant screaming back at her— \n" +
                "       Terror, that woke the neighbors—old ladies on the second floor recovering from menopause—all those rags between thighs, clean sheets, sorry over lost babies—husbands ashen—children sneering at Yale, or putting oil in hair at CCNY—or trembling in Montclair State Teachers College like Eugene— \n" +
                "       Her big leg crouched to her breast, hand outstretched Keep Away, wool dress on her thighs, fur coat dragged under the bed—she barricaded herself under bedspring with suitcases. \n" +
                "       Louis in pajamas listening to phone, frightened—do now?—Who could know?—my fault, delivering her to solitude?—sitting in the dark room on the sofa, trembling, to figure out— \n" +
                "       He took the morning train to Lakewood, Naomi still under bed—thought he brought poison Cops—Naomi screaming—Louis what happened to your heart then? Have you been killed by Naomi’s ecstasy? \n" +
                "       Dragged her out, around the corner, a cab, forced her in with valise, but the driver left them off at drugstore. Bus stop, two hours’ wait. \n" +
                "       I lay in bed nervous in the 4-room apartment, the big bed in living room, next to Louis’ desk—shaking—he came home that nite, late, told me what happened. \n" +
                "       Naomi at the prescription counter defending herself from the enemy—racks of children’s books, douche bags, aspirins, pots, blood—‘Don’t come near me—murderers! Keep away! Promise not to kill me!’   \n" +
                "       Louis in horror at the soda fountain—with Lakewood girlscouts—Coke addicts—nurses—busmen hung on schedule—Police from country precinct, dumbed—and a priest dreaming of pigs on an ancient cliff? \n" +
                "       Smelling the air—Louis pointing to emptiness?—Customers vomiting their Cokes—or staring—Louis humiliated—Naomi triumphant—The Announcement of the Plot. Bus arrives, the drivers won’t have them on trip to New York. \n" +
                "       Phonecalls to Dr. Whatzis, ‘She needs a rest,’ The mental hospital—State Greystone Doctors—‘Bring her here, Mr. Ginsberg.’ \n" +
                "       Naomi, Naomi—sweating, bulge-eyed, fat, the dress unbuttoned at one side—hair over brow, her stocking hanging evilly on her legs—screaming for a blood transfusion—one righteous hand upraised—a shoe in it—barefoot in the Pharmacy— \n" +
                "       The enemies approach—what poisons? Tape recorders? FBI? Zhdanov hiding behind the counter? Trotsky mixing rat bacteria in the back of the store? Uncle Sam in Newark, plotting deathly perfumes in the Negro district? Uncle Ephraim, drunk with murder in the politician’s bar, scheming of Hague? Aunt Rose passing water thru the needles of the Spanish Civil War? \n" +
                "       till the hired $35 ambulance came from Red Bank——Grabbed her arms—strapped her on the stretcher—moaning, poisoned by imaginaries, vomiting chemicals thru Jersey, begging mercy from Essex County to Morristown— \n" +
                "       And back to Greystone where she lay three years—that was the last breakthrough, delivered her to Madhouse again— \n" +
                "       On what wards—I walked there later, oft—old catatonic ladies, gray as cloud or ash or walls—sit crooning over floorspace—Chairs—and the wrinkled hags acreep, accusing—begging my 13-year-old mercy— \n" +
                "       ‘Take me home’—I went alone sometimes looking for the lost Naomi, taking Shock—and I’d say, ‘No, you’re crazy Mama,—Trust the Drs.’— \n" +
                "\n" +
                "       And Eugene, my brother, her elder son, away studying Law in a furnished room in Newark— \n" +
                "       came Paterson-ward next day—and he sat on the broken-down couch in the living room—‘We had to send her back to Greystone’— \n" +
                "       —his face perplexed, so young, then eyes with tears—then crept weeping all over his face—‘What for?’ wail vibrating in his cheekbones, eyes closed up, high voice—Eugene’s face of pain. \n" +
                "       Him faraway, escaped to an Elevator in the Newark Library, his bottle daily milk on windowsill of $5 week furn room downtown at trolley tracks— \n" +
                "       He worked 8 hrs. a day for $20/wk—thru Law School years—stayed by himself innocent near negro whorehouses. \n" +
                "       Unlaid, poor virgin—writing poems about Ideals and politics letters to the editor Pat Eve News—(we both wrote, denouncing Senator Borah and Isolationists—and felt mysterious toward Paterson City Hall— \n" +
                "       I sneaked inside it once—local Moloch tower with phallus spire & cap o’ ornament, strange gothic Poetry that stood on Market Street—replica Lyons’ Hotel de Ville— \n" +
                "       wings, balcony & scrollwork portals, gateway to the giant city clock, secret map room full of Hawthorne—dark Debs in the Board of Tax—Rembrandt smoking in the gloom—\n" +
                "       Silent polished desks in the great committee room—Aldermen? Bd of Finance? Mosca the hairdresser aplot—Crapp the gangster issuing orders from the john—The madmen struggling over Zone, Fire, Cops & Backroom Metaphysics—we’re all dead—outside by the bus stop Eugene stared thru childhood— \n" +
                "       where the Evangelist preached madly for 3 decades, hard-haired, cracked & true to his mean Bible—chalked Prepare to Meet Thy God on civic pave— \n" +
                "       or God is Love on the railroad overpass concrete—he raved like I would rave, the lone Evangelist—Death on City Hall—) \n" +
                "       But Gene, young,—been Montclair Teachers College 4 years—taught half year & quit to go ahead in life—afraid of Discipline Problems—dark sex Italian students, raw girls getting laid, no English, sonnets disregarded—and he did not know much—just that he lost— \n" +
                "       so broke his life in two and paid for Law—read huge blue books and rode the ancient elevator 13 miles away in Newark & studied up hard for the future \n" +
                "       just found the Scream of Naomi on his failure doorstep, for the final time, Naomi gone, us lonely—home—him sitting there— \n" +
                "       Then have some chicken soup, Eugene. The Man of Evangel wails in front of City Hall. And this year Lou has poetic loves of suburb middle age—in secret—music from his 1937 book—Sincere—he longs for beauty— \n" +
                "       No love since Naomi screamed—since 1923?—now lost in Greystone ward—new shock for her—Electricity, following the 40 Insulin.   \n" +
                "       And Metrazol had made her fat. \n" +
                "\n" +
                "       So that a few years later she came home again—we’d much advanced and planned—I waited for that day—my Mother again to cook & —play the piano—sing at mandolin—Lung Stew, & Stenka Razin, & the communist line on the war with Finland—and Louis in debt—,uspected to he poisoned money—mysterious capitalisms \n" +
                "       —& walked down the long front hall & looked at the furniture. She \n" +
                "never remembered it all. Some amnesia. Examined the doilies—and the dining room set was sold— \n" +
                "       the Mahogany table—20 years love—gone to the junk man—we still had the piano—and the book of Poe—and the Mandolin, tho needed some string, dusty— \n" +
                "       She went to the backroom to lie down in bed and ruminate, or nap, hide—I went in with her, not leave her by herself—lay in bed next to her—shades pulled, dusky, late afternoon—Louis in front room at desk, waiting—perhaps boiling chicken for supper— \n" +
                "       ‘Don’t be afraid of me because I’m just coming back home from the mental hospital—I’m your mother—’ \n" +
                "       Poor love, lost—a fear—I lay there—Said, ‘I love you Naomi,’—stiff, next to her arm. I would have cried, was this the comfortless lone union?—Nervous, and she got up soon. \n" +
                "       Was she ever satisfied? And—by herself sat on the new couch by the front windows, uneasy—cheek leaning on her hand—narrowing eye—at what fate that day— \n" +
                "       Picking her tooth with her nail, lips formed an O, suspicion—thought’s old worn vagina—absent sideglance of eye—some evil debt written in the wall, unpaid—& the aged breasts of Newark come near— \n" +
                "       May have heard radio gossip thru the wires in her head, controlled by 3 big sticks left in her back by gangsters in amnesia, thru the hospital—caused pain between her shoulders— \n" +
                "       Into her head—Roosevelt should know her case, she told me—Afraid to kill her, now, that the government knew their names—traced back to Hitler—wanted to leave Louis’ house forever. \n" +
                "\n" +
                "       One night, sudden attack—her noise in the bathroom—like croaking up her soul—convulsions and red vomit coming out of her mouth—diarrhea water exploding from her behind—on all fours in front of the toilet—urine running between her legs—left retching on the tile floor smeared with her black feces—unfainted— \n" +
                "       At forty, varicosed, nude, fat, doomed, hiding outside the apartment door near the elevator calling Police, yelling for her girlfriend Rose to help— \n" +
                "       Once locked herself in with razor or iodine—could hear her cough in tears at sink—Lou broke through glass green-painted door, we pulled her out to the bedroom. \n" +
                "       Then quiet for months that winter—walks, alone, nearby on Broadway, read Daily Worker—Broke her arm, fell on icy street— \n" +
                "       Began to scheme escape from cosmic financial murder-plots—later she ran away to the Bronx to her sister Elanor. And there’s another saga of late Naomi in New York. \n" +
                "       Or thru Elanor or the Workmen’s Circle, where she worked, ad-dressing envelopes, she made out—went shopping for Campbell’s tomato soup—saved money Louis mailed her— \n" +
                "       Later she found a boyfriend, and he was a doctor—Dr. Isaac worked for National Maritime Union—now Italian bald and pudgy old doll—who was himself an orphan—but they kicked him out—Old cruelties— \n" +
                "       Sloppier, sat around on bed or chair, in corset dreaming to herself—‘I’m hot—I’m getting fat—I used to have such a beautiful figure before I went to the hospital—You should have seen me in Woodbine—’ This in a furnished room around the NMU hall, 1943. \n" +
                "       Looking at naked baby pictures in the magazine—baby powder advertisements, strained lamb carrots—‘I will think nothing but beautiful thoughts.’ \n" +
                "       Revolving her head round and round on her neck at window light in summertime, in hypnotize, in doven-dream recall— \n" +
                "       ‘I touch his cheek, I touch his cheek, he touches my lips with his hand, I think beautiful thoughts, the baby has a beautiful hand.’— \n" +
                "       Or a No-shake of her body, disgust—some thought of Buchenwald—some insulin passes thru her head—a grimace nerve shudder at Involuntary (as shudder when I piss)—bad chemical in her cortex—‘No don’t think of that. He’s a rat.’ \n" +
                "       Naomi: ‘And when we die we become an onion, a cabbage, a carrot, or a squash, a vegetable.’ I come downtown from Columbia and agree. She reads the Bible, thinks beautiful thoughts all day. \n" +
                "       ‘Yesterday I saw God. What did he look like? Well, in the afternoon I climbed up a ladder—he has a cheap cabin in the country, like Monroe, N.Y. the chicken farms in the wood. He was a lonely old man with a white beard. \n" +
                "       ‘I cooked supper for him. I made him a nice supper—lentil soup, vegetables, bread & butter—miltz—he sat down at the table and ate, he was sad. \n" +
                "       ‘I told him, Look at all those fightings and killings down there, What’s the matter? Why don’t you put a stop to it? \n" +
                "       ‘I try, he said—That’s all he could do, he looked tired. He’s a bachelor so long, and he likes lentil soup.’ \n" +
                "       Serving me meanwhile, a plate of cold fish—chopped raw cabbage dript with tapwater—smelly tomatoes—week-old health food—grated beets & carrots with leaky juice, warm—more and more disconsolate food—I can’t eat it for nausea sometimes—the Charity of her hands stinking with Manhattan, madness, desire to please me, cold undercooked fish—pale red near the bones. Her smells—and oft naked in the room, so that I stare ahead, or turn a book ignoring her. \n" +
                "       One time I thought she was trying to make me come lay her—flirting to herself at sink—lay back on huge bed that filled most of the room, dress up round her hips, big slash of hair, scars of operations, pancreas, belly wounds, abortions, appendix, stitching of incisions pulling down in the fat like hideous thick zippers—ragged long lips between her legs—What, even, smell of asshole? I was cold—later revolted a little, not much—seemed perhaps a good idea to try—know the Monster of the Beginning Womb—Perhaps—that way. Would she care? She needs a lover. \n" +
                "       Yisborach, v’yistabach, v’yispoar, v’yisroman, v’yisnaseh, v’yishador, v’yishalleh, v’yishallol, sh’meh d’kudsho, b’rich hu. \n" +
                "       And Louis reestablishing himself in Paterson grimy apartment in negro district—living in dark rooms—but found himself a girl he later married, falling in love again—tho sere & shy—hurt with 20 years Naomi’s mad idealism. \n" +
                "       Once I came home, after longtime in N.Y., he’s lonely—sitting in the bedroom, he at desk chair turned round to face me—weeps, tears in red eyes under his glasses— \n" +
                "       That we’d left him—Gene gone strangely into army—she out on her own in N.Y., almost childish in her furnished room. So Louis walked downtown to postoffice to get mail, taught in highschool—stayed at poetry desk, forlorn—ate grief at Bickford’s all these years—are gone. \n" +
                "       Eugene got out of the Army, came home changed and lone—cut off his nose in jewish operation—for years stopped girls on Broadway for cups of coffee to get laid—Went to NYU, serious there, to finish Law.— \n" +
                "       And Gene lived with her, ate naked fishcakes, cheap, while she got crazier—He got thin, or felt helpless, Naomi striking 1920 poses at the moon, half-naked in the next bed. \n" +
                "       bit his nails and studied—was the weird nurse-son—Next year he moved to a room near Columbia—though she wanted to live with her children— \n" +
                "       ‘Listen to your mother’s plea, I beg you’—Louis still sending her checks—I was in bughouse that year 8 months—my own visions unmentioned in this here Lament— \n" +
                "       But then went half mad—Hitler in her room, she saw his mustache in the sink—afraid of Dr. Isaac now, suspecting that he was in on the Newark plot—went up to Bronx to live near Elanor’s Rheumatic Heart— \n" +
                "       And Uncle Max never got up before noon, tho Naomi at 6 A.M. was listening to the radio for spies—or searching the windowsill, \n" +
                "       for in the empty lot downstairs, an old man creeps with his bag stuffing packages of garbage in his hanging black overcoat. \n" +
                "       Max’s sister Edie works—17 years bookkeeper at Gimbels—lived downstairs in apartment house, divorced—so Edie took in Naomi on Rochambeau Ave— \n" +
                "       Woodlawn Cemetery across the street, vast dale of graves where Poe once—Last stop on Bronx subway—lots of communists in that area. \n" +
                "       Who enrolled for painting classes at night in Bronx Adult High School—walked alone under Van Cortlandt Elevated line to class—paints Naomiisms— \n" +
                "       Humans sitting on the grass in some Camp No-Worry summers yore—saints with droopy faces and long-ill-fitting pants, from hospital— \n" +
                "       Brides in front of Lower East Side with short grooms—lost El trains running over the Babylonian apartment rooftops in the Bronx— \n" +
                "       Sad paintings—but she expressed herself. Her mandolin gone, all strings broke in her head, she tried. Toward Beauty? or some old life Message? \n" +
                "       But started kicking Elanor, and Elanor had heart trouble—came upstairs and asked her about Spydom for hours,—Elanor frazzled. Max away at office, accounting for cigar stores till at night. \n" +
                "       ‘I am a great woman—am truly a beautiful soul—and because of that they (Hitler, Grandma, Hearst, the Capitalists, Franco, Daily News, the ’20s, Mussolini, the living dead) want to shut me up—Buba’s the head of a spider network—’ \n" +
                "       Kicking the girls, Edie & Elanor—Woke Edie at midnite to tell her she was a spy and Elanor a rat. Edie worked all day and couldn’t take it—She was organizing the union.—And Elanor began dying, upstairs in bed. \n" +
                "       The relatives call me up, she’s getting worse—I was the only one left—Went on the subway with Eugene to see her, ate stale fish— \n" +
                "       ‘My sister whispers in the radio—Louis must be in the apartment—his mother tells him what to say—LIARS!—I cooked for my two children—I played the mandolin—’ \n" +
                "       Last night the nightingale woke me / Last night when all was still / it sang in the golden moonlight / from on the wintry hill. She did. \n" +
                "       I pushed her against the door and shouted ‘DON’T KICK ELANOR!’—she stared at me—Contempt—die—disbelief her sons are so naive, so dumb—‘Elanor is the worst spy! She’s taking orders!’ \n" +
                "       ‘—No wires in the room!’—I’m yelling at her—last ditch, Eugene listening on the bed—what can he do to escape that fatal Mama—‘You’ve been away from Louis years already—Grandma’s too old to walk—’ \n" +
                "       We’re all alive at once then—even me & Gene & Naomi in one mythological Cousinesque room—screaming at each other in the Forever—I in Columbia jacket, she half undressed. \n" +
                "       I banging against her head which saw Radios, Sticks, Hitlers—the gamut of Hallucinations—for real—her own universe—no road that goes elsewhere—to my own—No America, not even a world— \n" +
                "       That you go as all men, as Van Gogh, as mad Hannah, all the same—to the last doom—Thunder, Spirits, lightning! \n" +
                "       I’ve seen your grave! O strange Naomi! My own—cracked grave! Shema Y’Israel—I am Svul Avrum—you—in death? \n" +
                "\n" +
                "       Your last night in the darkness of the Bronx—I phonecalled—thru hospital to secret police \n" +
                "       that came, when you and I were alone, shrieking at Elanor in my ear—who breathed hard in her own bed, got thin— \n" +
                "       Nor will forget, the doorknock, at your fright of spies,—Law advancing, on my honor—Eternity entering the room—you running to the bathroom undressed, hiding in protest from the last heroic fate— \n" +
                "       staring at my eyes, betrayed—the final cops of madness rescuing me—from your foot against the broken heart of Elanor, \n" +
                "       your voice at Edie weary of Gimbels coming home to broken radio—and Louis needing a poor divorce, he wants to get married soon—Eugene dreaming, hiding at 125 St., suing negroes for money on crud furniture, defending black girls— \n" +
                "       Protests from the bathroom—Said you were sane—dressing in a cotton robe, your shoes, then new, your purse and newspaper clippingsno—your honesty— \n" +
                "       as you vainly made your lips more real with lipstick, looking in the mirror to see if the Insanity was Me or a earful of police. \n" +
                "       or Grandma spying at 78—Your vision—Her climbing over the walls of the cemetery with political kidnapper’s bag—or what you saw on the walls of the Bronx, in pink nightgown at midnight, staring out the window on the empty lot— \n" +
                "       Ah Rochambeau Ave.—Playground of Phantoms—last apartment in the Bronx for spies—last home for Elanor or Naomi, here these communist sisters lost their revolution— \n" +
                "       ‘All right—put on your coat Mrs.—let’s go—We have the wagon downstairs—you want to come with her to the station?’ \n" +
                "       The ride then—held Naomi’s hand, and held her head to my breast, I’m taller—kissed her and said I did it for the best—Elanor sick—and Max with heart condition—Needs— \n" +
                "       To me—‘Why did you do this?’—‘Yes Mrs., your son will have to leave you in an hour’—The Ambulance \n" +
                "       came in a few hours—drove off at 4 A.M. to some Bellevue in the night downtown—gone to the hospital forever. I saw her led away—she waved, tears in her eyes. \n" +
                "\n" +
                "       Two years, after a trip to Mexico—bleak in the flat plain near Brentwood, scrub brush and grass around the unused RR train track to the crazyhouse— \n" +
                "       new brick 20 story central building—lost on the vast lawns of madtown on Long Island—huge cities of the moon. \n" +
                "       Asylum spreads out giant wings above the path to a minute black hole—the door—entrance thru crotch— \n" +
                "       I went in—smelt funny—the halls again—up elevator—to a glass door on a Women’s Ward—to Naomi—Two nurses buxom white—They led her out, Naomi stared—and I gaspt—She’d had a stroke— \n" +
                "       Too thin, shrunk on her bones—age come to Naomi—now broken into white hair—loose dress on her skeleton—face sunk, old! withered—cheek of crone— \n" +
                "       One hand stiff—heaviness of forties & menopause reduced by one heart stroke, lame now—wrinkles—a scar on her head, the lobotomy—ruin, the hand dipping downwards to death— \n" +
                "\n" +
                "       O Russian faced, woman on the grass, your long black hair is crowned with flowers, the mandolin is on your knees— \n" +
                "       Communist beauty, sit here married in the summer among daisies, promised happiness at hand— \n" +
                "       holy mother, now you smile on your love, your world is born anew, children run naked in the field spotted with dandelions, \n" +
                "       they eat in the plum tree grove at the end of the meadow and find a cabin where a white-haired negro teaches the mystery of his rainbarrel— \n" +
                "       blessed daughter come to America, I long to hear your voice again, remembering your mother’s music, in the Song of the Natural Front— \n" +
                "       O glorious muse that bore me from the womb, gave suck first mystic life & taught me talk and music, from whose pained head I first took Vision— \n" +
                "       Tortured and beaten in the skull—What mad hallucinations of the damned that drive me out of my own skull to seek Eternity till I find Peace for Thee, O Poetry—and for all humankind call on the Origin \n" +
                "       Death which is the mother of the universe!—Now wear your nakedness forever, white flowers in your hair, your marriage sealed behind the sky—no revolution might destroy that maidenhood— \n" +
                "       O beautiful Garbo of my Karma—all photographs from 1920 in Camp Nicht-Gedeiget here unchanged—with all the teachers from Vewark—Nor Elanor be gone, nor Max await his specter—nor Louis retire from this High School— \n" +
                "\n" +
                "       Back! You! Naomi! Skull on you! Gaunt immortality and revolution come—small broken woman—the ashen indoor eyes of hospitals, ward grayness on skin— \n" +
                "       ‘Are you a spy?’ I sat at the sour table, eyes filling with tears—‘Who are you? Did Louis send you?—The wires—’ \n" +
                "       in her hair, as she beat on her head—‘I’m not a bad girl—don’t murder me!—I hear the ceiling—I raised two children—’ \n" +
                "       Two years since I’d been there—I started to cry—She stared—nurse broke up the meeting a moment—I went into the bathroom to hide, against the toilet white walls \n" +
                "       ‘The Horror’ I weeping—to see her again—‘The Horror’—as if she were dead thru funeral rot in—‘The Horror!’ \n" +
                "       I came back she yelled more—they led her away—‘You’re not Allen—’ I watched her face—but she passed by me, not looking— \n" +
                "       Opened the door to the ward,—she went thru without a glance back, quiet suddenly—I stared out—she looked old—the verge of the grave—‘All the Horror!’ \n" +
                "\n" +
                "       Another year, I left N.Y.—on West Coast in Berkeley cottage dreamed of her soul—that, thru life, in what form it stood in that body, ashen or manic, gone beyond joy— \n" +
                "       near its death—with eyes—was my own love in its form, the Naomi, my mother on earth still—sent her long letter—& wrote hymns to the mad—Work of the merciful Lord of Poetry. \n" +
                "       that causes the broken grass to be green, or the rock to break in grass—or the Sun to be constant to earth—Sun of all sunflowers and days on bright iron bridges—what shines on old hospitals—as on my yard— \n" +
                "       Returning from San Francisco one night, Orlovsky in my room—Whalen in his peaceful chair—a telegram from Gene, Naomi dead— \n" +
                "       Outside I bent my head to the ground under the bushes near the garage—knew she was better— \n" +
                "       at last—not left to look on Earth alone—2 years of solitude—no one, at age nearing 60—old woman of skulls—once long-tressed Naomi of Bible— \n" +
                "       or Ruth who wept in America—Rebecca aged in Newark—David remembering his Harp, now lawyer at Yale \n" +
                "       or Srul Avrum—Israel Abraham—myself—to sing in the wilderness toward God—O Elohim!—so to the end—2 days after her death I got her letter— \n" +
                "       Strange Prophecies anew! She wrote—‘The key is in the window, the key is in the sunlight at the window—I have the key—Get married Allen don’t take drugs—the key is in the bars, in the sunlight in the window. \n" +
                "                                                       Love, \n" +
                "                                                               your mother’ \n" +
                "       which is Naomi—\n" +
                "\n" +
                "Hymmnn\n" +
                "\n" +
                "In the world which He has created according to his will Blessed Praised\n" +
                "Magnified Lauded Exalted the Name of the Holy One Blessed is He!\n" +
                "In the house in Newark Blessed is He! In the madhouse Blessed is He! In the house of Death Blessed is He!\n" +
                "Blessed be He in homosexuality! Blessed be He in Paranoia! Blessed be He in the city! Blessed be He in the Book!\n" +
                "Blessed be He who dwells in the shadow! Blessed be He! Blessed be He!\n" +
                "Blessed be you Naomi in tears! Blessed be you Naomi in fears! Blessed Blessed Blessed in sickness!\n" +
                "Blessed be you Naomi in Hospitals! Blessed be you Naomi in solitude! Blest be your triumph! Blest be your bars! Blest be your last years’ loneliness!\n" +
                "Blest be your failure! Best be your stroke! Blest be the close of your eye! Blest be the gaunt of your cheek! Blest be your withered thighs!\n" +
                "Blessed be Thee Naomi in Death! Blessed be Death! Blessed be Death!\n" +
                "Blessed be He Who leads all sorrow to Heaven! Blessed be He in the end!\n" +
                "Blessed be He who builds Heaven in Darkness! Blessed Blessed Blessed be He! Blessed be He! Blessed be Death on us All!\n" +
                "\n" +
                "III\n" +
                "Only to have not forgotten the beginning in which she drank cheap sodas in the morgues of Newark,\n" +
                "only to have seen her weeping on gray tables in long wards of her universe\n" +
                "only to have known the weird ideas of Hitler at the door, the wires in her head, the three big sticks\n" +
                "rammed down her back, the voices in the ceiling shrieking out her ugly early lays for 30 years,\n" +
                "only to have seen the time-jumps, memory lapse, the crash of wars, the roar and silence of a vast electric shock,\n" +
                "only to have seen her painting crude pictures of Elevateds running over the rooftops of the Bronx\n" +
                "her brothers dead in Riverside or Russia, her lone in Long Island writing a last letter—and her image in the sunlight at the window\n" +
                "‘The key is in the sunlight at the window in the bars the key is in the sunlight,’\n" +
                "only to have come to that dark night on iron bed by stroke when the sun gone down on Long Island\n" +
                "and the vast Atlantic roars outside the great call of Being to its own\n" +
                "to come back out of the Nightmare—divided creation—with her head lain on a pillow of the hospital to die\n" +
                "—in one last glimpse—all Earth one everlasting Light in the familiar black-out—no tears for this vision—\n" +
                "But that the key should be left behind—at the window—the key in the sunlight—to the living—that can take\n" +
                "that slice of light in hand—and turn the door—and look back see\n" +
                "Creation glistening backwards to the same grave, size of universe,\n" +
                "size of the tick of the hospital's clock on the archway over the white door—\n" +
                "\n" +
                "IV\n" +
                "\n" +
                "O mother\n" +
                "what have I left out\n" +
                "O mother\n" +
                "what have I forgotten\n" +
                "O mother\n" +
                "farewell\n" +
                "with a long black shoe\n" +
                "farewell\n" +
                "with Communist Party and a broken stocking\n" +
                "farewell\n" +
                "with six dark hairs on the wen of your breast\n" +
                "farewell\n" +
                "with your old dress and a long black beard around the vagina\n" +
                "farewell\n" +
                "with your sagging belly\n" +
                "with your fear of Hitler\n" +
                "with your mouth of bad short stories\n" +
                "with your fingers of rotten mandolins\n" +
                "with your arms of fat Paterson porches\n" +
                "with your belly of strikes and smokestacks\n" +
                "with your chin of Trotsky and the Spanish War\n" +
                "with your voice singing for the decaying overbroken workers\n" +
                "with your nose of bad lay with your nose of the smell of the pickles of Newark\n" +
                "with your eyes\n" +
                "with your eyes of Russia\n" +
                "with your eyes of no money\n" +
                "with your eyes of false China\n" +
                "with your eyes of Aunt Elanor\n" +
                "with your eyes of starving India\n" +
                "with your eyes pissing in the park\n" +
                "with your eyes of America taking a fall\n" +
                "with your eyes of your failure at the piano\n" +
                "with your eyes of your relatives in California\n" +
                "with your eyes of Ma Rainey dying in an aumbulance\n" +
                "with your eyes of Czechoslovakia attacked by robots\n" +
                "with your eyes going to painting class at night in the Bronx\n" +
                "with your eyes of the killer Grandma you see on the horizon from the Fire-Escape\n" +
                "with your eyes running naked out of the apartment screaming into the hall\n" +
                "with your eyes being led away by policemen to an aumbulance\n" +
                "with your eyes strapped down on the operating table\n" +
                "with your eyes with the pancreas removed\n" +
                "with your eyes of appendix operation\n" +
                "with your eyes of abortion\n" +
                "with your eyes of ovaries removed\n" +
                "with your eyes of shock\n" +
                "with your eyes of lobotomy\n" +
                "with your eyes of divorce\n" +
                "with your eyes of stroke\n" +
                "with your eyes alone\n" +
                "with your eyes\n" +
                "with your eyes\n" +
                "with your Death full of Flowers\n" +
                "\n" +
                "V\n" +
                "\n" +
                "Caw caw caw crows shriek in the white sun over grave stones in Long Island\n" +
                "Lord Lord Lord Naomi underneath this grass my halflife and my own as hers\n" +
                "caw caw my eye be buried in the same Ground where I stand in Angel\n" +
                "Lord Lord great Eye that stares on All and moves in a black cloud\n" +
                "caw caw strange cry of Beings flung up into sky over the waving trees\n" +
                "Lord Lord O Grinder of giant Beyonds my voice in a boundless field in Sheol\n" +
                "Caw caw the call of Time rent out of foot and wing an instant in the universe\n" +
                "Lord Lord an echo in the sky the wind through ragged leaves the roar of memory\n" +
                "caw caw all years my birth a dream caw caw New York the bus the broken shoe the vast highschool caw caw all Visions of the Lord\n" +
                "Lord Lord Lord caw caw caw Lord Lord Lord caw caw caw Lord\n" +
                "         Paris, December 1957—New York, 1959";
String[] KaddishList = Kaddish.split(" ");
int len = KaddishList.length;

void setup() {
  size(600, 1032);
  img = loadImage("http://a1.files.biography.com/image/upload/c_fit,cs_srgb,dpr_1.0,q_80,w_620/MTE5NDg0MDU0OTc5MzgwNzUx.jpg");
  smallPoint = 5;
  largePoint = 30;
  imageMode(CENTER);
  noStroke();
  background(255);
  count = 0;
}

void draw() { 
  float pointillize = smallPoint + int(random(largePoint));
  int x = (int(random(50) - 25)) + mouseX;
  int y = (int(random(50) - 25)) + mouseY;
  color pix = img.get(x, y);
  String t = KaddishList[count];
  fill(pix, 128);
  textSize(pointillize);
  text(t, x, y);
  count = (1 + count) % len;
}