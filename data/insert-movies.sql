-- Script generato automaticamente da csv-to-sql.ts
-- Data: 1746807914620

-- Assicurati che questi utenti esistano nel database
-- Se non esistono, inseriscili
INSERT OR IGNORE INTO User (id, email, name) VALUES 
('user1', 'gioelegentile.it@gmail.com', 'Gioele Gentile'),
('user2', 'andonie.thunder@gmail.com', 'Andonie Thunder'),
('user3', 'nigrogianmarco@gmail.com', 'Gianmarco Nigro'),
('user4', 'ilariapetruccini@gmail.com', 'Ilaria Petruccini'),
('user5', 'triofollek@gmail.com', 'Triofoll EK'),
('user6', 'marco.digirolamo92@gmail.com', 'Marco Di Girolamo'),
('user7', 'restanicola92@gmail.com', 'Nicola Resta'),
('user8', 'francipavone997@gmail.com', 'Franci Pavone'),
('user9', 'vincenzo.vurro@gmail.com', 'Vincenzo Vurro'),
('user10', 'Solidorostefano@gmail.com', 'Stefano Solidoro'),
('user13', 'alessio.perro10@gmail.com', 'Alessio Perro'),
('user14', 'Francesco.tarallo93@gmail.com', 'Francesco Tarallo');

-- Inserisci le opere (Works)
INSERT INTO Work (externalId, type, title, director, description, imageUrl, releaseDate, genres, createdAt)
VALUES
(4552, 'movie', 'Two Sisters', '김지운', 'Dopo aver passato un lungo periodo in un istituto per malattie mentali a seguito della morte della madre, le due sorelle Bae Soo-yeon e Bae Soo-mi, fanno ritorno a casa, dove ad attenderle, oltre al padre, c''è anche la sua nuova compagna, la giovane Eun-Joo. Nonostante le apparenti buone intenzioni iniziali della donna nei confronti delle ragazze, il clima fra loro e la matrigna è tesissimo. Inoltre in casa, sembra esserci una presenza inquietante, di cui solo le ragazze sembrano accorgersi. Il padre, dal canto suo, sembra ignorare completamente le richieste d''aiuto delle figlie, come se intorno a lui non stesse accadendo assolutamente nulla.', '/5gWqetgQaY6MHEyNeLngT3w0jSj.jpg', '1055462400000', 'Dramma,Horror,Mistero', '1746798086907'),
(487631, 'movie', 'Adorazione', 'Fabrice Du Welz', 'Il dodicenne Paul si innamora di Gloria, un''adolescente schizofrenica che è in cura nell''istituto psichiatrico in cui lavora sua madre. Paul decide allora di aiutare gloria a fuggire dopo aver commesso un crimine. Insieme, intraprenderanno un viaggio che rivelerà quanto pericolose siano la pazzia di Gloria e la devozione di Paul nei suoi confronti.', '/f95LICCPR6zXckUE5L9HMfuXtor.jpg', '1579651200000', 'Dramma', '1746798087382'),
(348, 'movie', 'Alien', 'Ridley Scott', 'L''astronave Nostromo sbarca su un pianeta da cui proviene un SOS, ma la colonia sembra essere disabitata. I coloni sono stati in realtà sterminati da una razza aliena che ha trasformato la base in una gigantesca covata.', '/uWJJHA9YOYxR4wk12QtubfW9aEf.jpg', '296438400000', 'Horror,Fantascienza', '1746798087847'),
(7857, 'movie', 'Amarcord', 'Federico Fellini', 'La vicenda, ambientata dall''inizio della primavera del 1932 all''inizio della primavera del 1933 (riferimento certo visto la corsa della VII edizione della Mille Miglia), in una Rimini onirica ricostruita a Cinecittà, come la ricordava Fellini in sogno, narra la vita nell''antico borgo (o e'' borg, come a Rimini conoscono il quartiere di San Giuliano) e dei suoi più o meno particolari abitanti: le feste paesane, le adunate del "Sabato fascista", la scuola, i signori di città, i negozianti, il suonatore cieco, la donna procace ma un po'' attempata alla ricerca di un marito, il venditore ambulante, il matto, l''avvocato, quella che va con tutti, la tabaccaia dalle forme giunoniche, i professori di liceo, i fascisti, gli antifascisti e il magico conte di Lovignano, ma soprattutto i giovani del paese; adolescenti presi da una prepotente "esplosione sessuale".', '/cRqiuvomxe1ZxXaqsYHBg6PXcyK.jpg', '125020800000', 'Commedia,Dramma', '1746798088311'),
(915935, 'movie', 'Anatomia di una caduta', 'Justine Triet', 'Sandra, Samuel e il loro figlio ipovedente Daniel vivono da un anno in una remota località di montagna. Quando Samuel viene trovato morto fuori casa, viene aperta un''indagine per morte in circostanze sospette. Nell''incertezza, Sandra viene incriminata: è stato un suicidio o un omicidio? Un anno dopo Daniel assiste al processo della madre, una vera e propria dissezione del rapporto tra i genitori.', '/kSbp0b7QEB8xcyW0YK6RcdWLhG0.jpg', '1692748800000', 'Thriller,Mistero,Crime', '1746798088773'),
(340666, 'movie', 'Animali notturni', 'Tom Ford', 'Susan riceve dall''ex marito un manoscritto su cui l''uomo vuole un''opinione. In quello che potrebbe essere un futuro libro, si racconta la storia di una vacanza destinata a trasformarsi in tragedia. Mentre si lascia prendere dallo scritto, Susan si ritrova a ricordare il suo primo matrimonio e ad affrontare alcune oscure verità che la riguardano.', '/vXuLuft5x9vvzfePGGzANjSJf9L.jpg', '1478217600000', 'Dramma,Thriller', '1746798089235'),
(17609, 'movie', 'Antichrist', 'Lars von Trier', 'Il film, che riprende la teoria secondo la quale il mondo sarebbe stato creato da Satana e non da Dio, vede una coppia che, in seguito alla morte del figlio caduto da una finestra, cerca un po'' di pace andando a trascorrere un breve periodo di vacanza nei boschi, provando così a recuperare il loro rapporto, caduto in una crisi profonda. Le esperienze di cui saranno testimoni, però, sono quanto di più terrificante ed inumano si possa mai immaginare...', '/1npvm5xly8UdxWiG5Gh1GB8Ay15.jpg', '1242777600000', 'Dramma,Horror,Thriller', '1746798089700'),
(185, 'movie', 'Arancia meccanica', 'Stanley Kubrick', 'Alex è un giovane senza arte né parte, figlio di proletari e dedito a furti, stupri e omicidi. Fa capo a una banda di spostati, denominati drughi. Dopo aver usato violenza alla moglie di uno scrittore finisce in carcere. Viene sottoposto ad angherie ma si fa amico un prete. Pur di essere scarcerato accetta il "trattamento lodovico", che consiste nell''assistere a filmati di violenza. Quando esce scopre che i genitori hanno subaffittato la sua stanza. Senza poter reagire, dovrà subire violenza da alcuni mendicanti vendicativi, dai drughi diventati poliziotti e dallo scrittore che ha perso la moglie e che ora si trova su una sedia a rotelle. Tenta il suicidio e all''ospedale riceve una visita di cortesia da parte del primo ministro.', '/vJS2cN4tyJu1OOhastxW85AMzt0.jpg', '61948800000', 'Fantascienza,Crime', '1746798090161'),
(714888, 'movie', 'Argentina 1985', 'Santiago Mitre', 'Ispirato alla vera storia dei procuratori Julio Strassera e Luis Moreno Ocampo, che nel 1985 osarono indagare e perseguire i responsabili della fase più sanguinosa della dittatura militare argentina. Senza lasciarsi intimidire dall’ancora notevole influenza che l’esercito aveva sulla loro fragile, nuova democrazia, Strassera e Moreno Ocampo formarono un giovane team legale di improbabili eroi per ingaggiare la loro battaglia di Davide contro Golia. Costantemente minacciati, insieme alle loro famiglie, lottarono contro il tempo per dare giustizia alle vittime della giunta militare.', '/bfXS8ux77Qdvvn8daOMzIv0AWGo.jpg', '1664409600000', 'Dramma,Storia,Crime', '1746798090629'),
(242224, 'movie', 'Babadook', 'Jennifer Kent', 'Sono sei anni che è morto il marito di Amelia e sei anni che è nato Samuel, il suo unico figlio, cresciuto senza padre da una madre single in grandi difficoltà economiche e distrutta dallo stress causato dalla sua iperattività. Il bambino non dorme bene, la tiene sveglia, spaventa i compagni, si fa riprendere a scuola, è violento, non ha molti amici per via di un temperamento esagitato e la stessa madre arriva quasi ad odiarlo. Le cose non migliorano quando nella loro vita si materializza un libro di favole diverso dagli altri, molto nero, cupo e spaventoso che viene prontamente messo via dopo la prima lettura ma continua a ripresentarsi fino a che la sua storia di un uomo nero che ti entra dentro fino a condizionarti non comincia lentamente ad avverarsi e intrappola i due nella loro stessa casa.', '/7jkDAK1axdu5QPkISlehOyEVw37.jpg', '1400716800000', 'Dramma,Horror', '1746798091092'),
(25649, 'movie', 'Bad Guy', 'Kim Ki-duk', 'Siamo al parco, e un uomo si avventa su una ragazza per darle un bacio. Lei si ribella, urla. Il suo fidanzato rimane esterrefatto. L''arrivo delle forze di un gruppo di militari, allontana il molestatore. Kim Ki-Duk ci introduce così, il “Bad guy” Han-Gi e la apparentemente angelica Sun-Hwa. I due si incontreranno tempo dopo in posizioni antitetiche. Lui a gestire un bordello negli “slums” di Seul, lei come prostituta alle prime armi.', '/aacdUq1YHwbKPmuL0GaNiwVYhhr.jpg', '1010707200000', 'Dramma,Thriller,Romance', '1746798091553'),
(798286, 'movie', 'Beau ha paura', 'Ari Aster', 'Beau è un uomo paranoico che non ha mai conosciuto il padre e ha un rapporto tormentato con la madre. Quando scopre che la madre è morta, Beau intraprende un viaggio verso casa che ben presto si trasforma in un’odissea surreale.', '/xixQ5abpEF0qyvuTcRsND0tmwsv.jpg', '1681430400000', 'Commedia,Avventura,Fantasy', '1746798092018'),
(45958, 'movie', 'Biutiful', 'Alejandro González Iñárritu', 'Questa è la storia di un uomo in caduta libera. Sulla strada verso la redenzione, l''oscurità illumina la sua via. In comunicazione con la vita nell''aldilà, Uxbal è un eroe tragico e padre di due figli che sente il pericolo della morte, lotta contro una realtà corrotta e un destino che lavora contro di lui per perdonare, per amare e per sempre.', '/2RGgtKbSzhuUvQQmWpEdOfHsAu2.jpg', '1287532800000', 'Dramma', '1746798092490'),
(335984, 'movie', 'Blade Runner 2049', 'Denis Villeneuve', 'Trent''anni dopo gli eventi del primo film, un nuovo blade runner, l''Agente K della Polizia di Los Angeles  scopre un segreto sepolto da tempo che ha il potenziale di far precipitare nel caos quello che è rimasto della società. La scoperta di K lo spinge verso la ricerca di Rick Deckard, un ex-blade runner della polizia di Los Angeles sparito nel nulla da 30 anni.', '/sPMX3MNTB0DqC6iCveIGKZN5AyN.jpg', '1507075200000', 'Fantascienza,Dramma', '1746798092959'),
(68, 'movie', 'Brazil', 'Terry Gilliam', 'Sam Lowry è un tecnocrate in una società futuristica che è inutilmente contorta e inefficiente. Sogna una vita dove può volare via dalla tecnologia, dalla burocrazia opprimente e trascorrere l''eternità con la donna dei suoi sogni. Cercando di correggere l''arresto illegittimo di Harry Buttle, Lowry incontra la donna che insegue sempre nei suoi sogni, Jill Layton. Nel frattempo, la burocrazia lo ha indicato come responsabile di una serie di attentati terroristici, e le vite di Sam e Jill sono in pericolo.', '/oyF7GCllibKOR346S1lPzVaspT7.jpg', '477705600000', 'Commedia,Fantascienza', '1746798093422'),
(736732, 'movie', 'Le buone stelle - Broker', '是枝裕和', 'Una vicenda che ruota intorno alle cosiddette "baby boxes": i luoghi dove i genitori coreani abbandonano i bambini che hanno messo al mondo ma che non possono o non vogliono tenere con sé, in modo che possano essere adottati e cresciuti da qualcun altro.', '/kcOzTA7897Rrrbkazt6NUQklK73.jpg', '1654646400000', 'Dramma,Commedia,Crime', '1746798093885'),
(491584, 'movie', 'Burning - L''amore brucia', 'Lee Chang-dong', 'Jong-su è un aspirante scrittore che vive di espedienti. Quando incontra per caso Hae-mi non la riconosce, ma la ragazza si ricorda di lui e lo persuade a prendersi cura del suo gatto. Jong-su si innamora, ma Hae-mi parte per l''Africa: al suo ritorno è accompagnata dal misterioso e facoltoso Ben.', '/3N9guRAk61NqLO7lECy8a5Gn2PA.jpg', '1526515200000', 'Mistero,Dramma,Thriller', '1746798094352'),
(1026227, 'movie', 'C''è ancora domani', 'Paola Cortellesi', 'È primavera e tutta la famiglia è in fermento per l''imminente fidanzamento dell''amata primogenita Marcella (Romana Maggiora Vergano), che, dal canto suo, spera solo di sposarsi in fretta con un bravo ragazzo di ceto borghese, Giulio (Francesco Centorame), e liberarsi finalmente di quella famiglia imbarazzante.', '/hc9SHN0vB6iyr6MBYI6bKrpDHvJ.jpg', '1698278400000', 'Dramma,Commedia,Storia', '1746798094812'),
(420187, 'movie', 'Fuga dall''Albania', 'Mario Salieri', 'The story begins in Albania where the heroine, Helen, suffers the abuse of her father, a former member of the Albanian Communist Militia. Troubling and extreme events in her life soon cause Helen to flee her homeland for Florence, Italy where she meets up with her friend Sylvia who works as a maid for a wealthy family. She soon learns that her boyfriend in Albania has been arrested for killing her cruel father. Though at first desperate to return home to help, Helen soon forgets her boyfriend''s plight as she is seduced into a wicked life of vice and perversion by the wealthy family with whom she is staying. Helen finds herself spinning out of control in a frenzied cinematic vortex of sex, beer and manipulation. Helen does eventually return home to Albania, but only to discover there, her own erotic destiny.', '/y3ksQu2LHFwwCYHJh1I5JiuTlyw.jpg', '883612800000', '', '1746798095270'),
(997294, 'movie', 'Close Your Eyes', 'Víctor Erice', 'Years after his mysterious disappearance, Julio Arenas, a famous Spanish actor, is back in the news thanks to a television program.', '/czUKm6JUutIg55EcRJ7CRAAzFMU.jpg', '1692144000000', 'Dramma,Mistero', '1746798095785'),
(16, 'movie', 'Dancer in the Dark', 'Lars von Trier', 'E'' il 1964, Selma è emigrata con suo figlio dall''Europa dell''Est in America. Lavora notte e giorno per salvare suo figlio dalla stessa malattia che affligge lei e che la renderà cieca. Il segreto della sua energia di vivere è il suo amore per i musical. Quando la vita è troppo dura, le basta fingere di trovarsi nel meraviglioso mondo dei musical, dove riesce a trovare la felicità che il mondo non le riesce a dare.', '/yi3TJZewx5QbmaqLm6mPlZ3hEwj.jpg', '967766400000', 'Dramma,Crime', '1746798096245'),
(774370, 'movie', 'Dog Man', 'Peter Hastings', 'Un cane poliziotto e il suo padrone, un agente di polizia umano, vengono feriti sul lavoro. Uno strampalato intervento chirurgico fonde i due e salva loro la vita. Così nasce Dog Man, che ha giurato di proteggere e servire, ma anche di giocare a riporto, sedersi e rotolarsi. Con questa nuova identità, si sforza di piacere al capo e fermare le trame malvagie del supercriminale felino Gino il gatto.', '/eP5w2Kxz4KVGSqXTmbTEQemC0Wv.jpg', '1737676800000', 'Famiglia,Commedia,Avventura,Animazione', '1746798096705'),
(38810, 'movie', 'Dogtooth', 'Γιώργος Λάνθιμος', 'Una famiglia fa vivere i propri figli segregati nella propria villetta. Essi sono completamente isolati dal mondo reale, un mondo estremamente diverso da quello posticcio ed assurdo in cui si trovano dalla loro nascita. Christina, una collega del padre che l''uomo fa prostituire per dare una vita sessuale forzata al figlio, sarà la molla che porterà la sorella maggiore ad esplorare una parte della verità negata e a sconvolgere i malati equilibri della famiglia.', '/vInCRfJLpQ05OCgwjj01zyZdOHe.jpg', '1256169600000', 'Dramma', '1746798097166'),
(134374, 'movie', 'Pain & Gain - Muscoli e denaro', 'Michael Bay', 'Black comedy dall''ambientazione decisamente insolita, ma ispirata ad una storia vera, quella della "Sun Gym Gang" di Miami. Nel mondo del culturismo e del traffico di steroidi i protagonisti, interpretati da Mark Wahlberg e Dwayne Johnson, si troveranno coinvolti in un affare di estorsione e rapimento che non andrà per il verso giusto.', '/gWkhKFF5NGu2bB3pR1AI7eRjARU.jpg', '1366243200000', 'Commedia,Crime,Azione', '1746798097625'),
(141, 'movie', 'Donnie Darko', 'Richard Kelly', 'Il liceale Donnie Darko, in preda ad un attacco di insonnia, esce dalla casa dei genitori e incontra uno spaventoso coniglio gigante di nome Frank, che gli dice che il mondo finirà tra 28 giorni, 6 ore, 42 minuti e 12 secondi.', '/rJPGEGIlFSGM8TDKr2ZPO5xhJH9.jpg', '979862400000', 'Fantasy,Dramma,Mistero', '1746798098085'),
(758866, 'movie', 'Drive My Car', '濱口竜介', 'Sebbene non sia ancora in grado di riprendersi dalla scomparsa della moglie, l''attore e regista teatrale Yusuke Kafusu accetta di mettere in scena Zio Vanja a un festival di Hiroshima. Qui, conosce Misaki, una giovane riservata che le è stata assegnata come autista. Nel corso dei loro spostamenti, la crescente sincerità delle loro conversazioni costringe entrambi ad affrontare il loro passato.', '/bhW5CK4vrrGB3CemMrtwwkU9vo9.jpg', '1629244800000', 'Dramma', '1746798098541'),
(853, 'movie', 'Il nemico alle porte', 'Jean-Jacques Annaud', 'Stalingrado è stretta nella morsa nazista e ogni metro di terreno viene conteso armi in pugno. Il tiratore scelto Vassili Zaitsev abbatte uno dopo l''altro i tedeschi. Il commissario politico Danilov fa di lui un potente mezzo di propaganda. È l''eroe sovietico per eccellenza che non sbaglia un colpo. Un maggiore tedesco, König, decide di sfidarlo sul suo stesso terreno: la precisione nella mira. I due danno inizio a un inseguimento che porterà allo scontro finale.', '/5Bn5BOSVeqcNT1WYXw0Upzm6xF9.jpg', '983318400000', 'Dramma,Guerra,Storia,Romance', '1746798099002'),
(34647, 'movie', 'Enter the Void', 'Gaspar Noé', 'Oscar e sua sorella Linda sono appena arrivati a Tokyo. Oscar è un piccolo spacciatore e Linda lavora come spogliarellista in un nightclub. Una notte, Oscar cade in una retata della polizia e viene ferito a morte in una sparatoria. Mentre è disteso a terra morente, la sua anima, fedele alla sorella a cui aveva promesso che non l''avrebbe mai abbandonata, vaga per la città rifiutando di lasciare il mondo in cui ha vissuto. L''anima così vaga per Tokyo, le sue visioni divengono sempre più distorte, sempre più vicine ad un incubo. Il passato, il presente e il futuro si mischiano in un''unica allucinazione.', '/8wDYwDgyZcUyuxXBmeIq9qo98bm.jpg', '1273017600000', 'Fantasy,Dramma', '1746798099459'),
(985, 'movie', 'Eraserhead - La mente che cancella', 'David Lynch', 'Henry Spencer vive da solo in uno squallido appartamento fra le allucinazioni della sua mente malata. Durante un grottesco pranzo in casa dei suoceri, apprende che la sua ragazza Mary è incinta, e viene obbligato a sposarla. Nascerà una creatura orrenda e frignante che la madre, disgustata, abbandona alle cure di Henry.', '/cXunrMGW8maQf5rLoKTS7Zmi3hv.jpg', '244252800000', 'Horror,Fantasy', '1746798099917'),
(38, 'movie', 'Se mi lasci ti cancello', 'Michel Gondry', 'Joel e Clementine sono una coppia molto innamorata. Un giorno però, la ragazza, stanca della sua relazione ormai in fase di declino, decide, mediante un esperimento scientifico, di farsi asportare dalla mente la parte relativa alla storia con Joel. Il giovane, una volta venuto a conoscenza di questo fatto, sceglie di fare altrettanto ma durante il procedimento cambia idea.', '/uDuAYpBfFQvFMnlt2w8xUUZiWrr.jpg', '1079654400000', 'Fantascienza,Dramma,Romance', '1746798100373'),
(1156125, 'movie', 'Il male non esiste', '濱口竜介', 'Takumi e la figlia Hana vivono nel villaggio di Mizubiki, nei pressi di Tokyo. Come altre generazioni prima di loro, conducono una vita modesta assecondando i cicli e l’ordine della natura. Un giorno, gli abitanti del villaggio vengono a conoscenza del progetto di costruire, vicino alla casa di Takumi, un glamping, inteso a offrire ai residenti delle città una piacevole fonte di “evasione” nella natura. Quando due funzionari di Tokio giungono al villaggio per tenere un incontro, diventa chiaro che il progetto avrà un impatto negativo sulla rete idrica locale, e ciò causa il malcontento generale. Le intenzioni contraddittorie dell’agenzia mettono in pericolo sia l’equilibrio ecologico dell’altopiano sia lo stile di vita degli abitanti, con profonde ripercussioni sulla vita di Takumi.', '/8e5Ez58etPqAPv7tNVDXfIZnyVc.jpg', '1701820800000', 'Dramma', '1746798100826'),
(13807, 'movie', 'Exiled', '杜琪峯', 'Macau, 1998. Chiunque cerca di lucrare nel passaggio dall''amministrazione portoghese a quella cinese. I disillusi killer di professione si domandano dove porterà quasto cammino. In questo scenario, due assassini di Hong Kong giungono a Macau con il compito di uccidere un killer che ha cercato di voltare pagina.', '/gLL3rp1FKrFYdlQvJRCWeEOQXKC.jpg', '1157500800000', 'Azione,Crime,Thriller', '1746798101320'),
(1946, 'movie', 'eXistenZ', 'David Cronenberg', 'eXistenZ, un gioco basato su tecnologie avanzate ideato dai dirigenti della Antenna Research, ha ottenuto un grande successo di pubblico. Dietro il gioco si cela l''ingegno di Allegra Geller, una donna determinata e attraente. Ciò che rende eXistenZ così reale è il fatto che il dispositivo che lo aziona, il game pod, si inserisce direttamente nel sistema nervoso del giocatore tramite un connettore spinale. Ma delle forze anti eXistenZ, che sulla testa di Allegra hanno messo una taglia, sabotano il gioco.', '/hmalPlavAnuun6pzjzg57wKkLhl.jpg', '924048000000', 'Azione,Thriller,Fantascienza', '1746798101779'),
(334536, 'movie', 'February - L''innocenza del male', 'Osgood Perkins', 'Kat (Kiernan Shipka) e Rose (Lucy Boynton) sono due matricole iscritte ad un Istituto cattolico femminile, il Bramford Collage: l''unica cosa che sembrano avere in comune e il fatto di essere le sole due studentesse a non tornare a casa per la pausa di metà semestre. Rose ha inventato una scusa per non fare i bagagli mentre i genitori di Kat sembrerebbero essersi dimenticati di andarla a prendere. Sole, tutt''altro che amiche, le ragazze si ritrovano a vivere una convivenza forzata all''interno di un campus deserto. Alla loro vicenda si affianca quella di Joan (Emma Roberts), giovane donna dal passato oscuro, forse fuggita da un reparto psichiatrico.Quella che doveva essere una settimana contraddistinta principalmente da noia, si trasforma lentamente in un incubo fatto di terrore e sangue…', '/yc74X4ZJYJ2oFkSFFCuYmRtzlMo.jpg', '1490918400000', 'Horror,Mistero', '1746798102241'),
(550, 'movie', 'Fight Club', 'David Fincher', 'Un uomo di trent''anni è insofferente su tutto e la notte non riesce più a dormire. In cerca di qualche luogo dove scaricare la propria ansia si mette a frequentare quei corsi dove gruppi di malati gravi si riuniscono e confessano agli altri le rispettive situazioni. Mentre si lascia andare alla commozione e al pianto di fronte a quello che vede, l''uomo fa la conoscenza prima di Marla Singer poi di Tyler Durden. Lei è una ragazza a sua volta alla deriva, incapace di scelte o decisioni; lui è un tipo deciso e vigoroso con un''idea precisa in testa. Tyler fa saltare per aria l''appartamento dell''uomo e i due vanno a vivere insieme in una casa fatiscente. Deciso a coinvolgerlo nel suo progetto, Tyler lo fa entrare in un ''Fight Club'', uno stanzone sotterraneo dove ci si riunisce per picchiarsi e in questo modo sentirsi di nuovo vivi...', '/rtNLQ8HbPElzEfrHjrzSr07prKT.jpg', '939945600000', 'Dramma', '1746798102704'),
(8088, 'movie', 'Gli abbracci spezzati', 'Pedro Almodóvar', 'Un uomo scrive, vive e ama nell''oscurità. Quattordici anni prima ha sofferto un terribile incidente di macchina nell''isola di Lanzarote. Nell''incidente ha perso non solo la vista, ma anche Lena, la donna della sua vita. Quest''uomo usa due nomi, Harry Caine, ludico pseudonimo con il quale firma i suoi lavori letterari, i racconti e le sceneggiature, e Mateo Blanco, il suo vero nome di battesimo, con il quale vive e firma i film che dirige. Dopo l''incidente Mateo Blanco si riduce al suo pseudonimo, Harry Caine. Se non può più dirigere film si impone di sopravvivere con l''idea che Mateo Blanco è morto a Lanzarote accanto alla sua amata Lena. Nell''attualità, Harry Caine vive grazie alle sceneggiature che scrive e all''aiuto della sua fedele direttrice di produzione di un tempo, Judit Garcia, e di Diego, il figlio di lei, segretario, dattilografo e guida per ciechi...', '/vpdMXqlOyC89ZpMCot7GbP4WWqK.jpg', '1237334400000', 'Dramma,Romance,Thriller', '1746798103164'),
(14537, 'movie', 'Harakiri', 'Masaki Kobayashi', 'Agli inizi del XVII secolo, il ronin (un samurai senza padrone) Hanshiro Tsugumo, si presenta alle porte della casa Iyi. Chiede che, data sua disgrazia, gli sia concesso un luogo dove commettere suicidio rituale. Con l''intento di dissuaderlo, l''intendente gli narra di un altro ronin, presentatosi qualche tempo prima con la stessa richiesta. Ma un''altra verità si cela dietro la ritualità del samurai...', '/or0zUyUJTOI90kvol3OhVluY7nA.jpg', '-230256000000', 'Azione,Dramma,Storia', '1746798103624'),
(103328, 'movie', 'Holy Motors', 'Leos Carax', 'Una giornata dell''esistenza di Monsieur Oscar, che di professione passa da una vita ad un''altra, da un personaggio ad un altro, scortato ad ogni appuntamento da una limousine bianca, guidata lungo le strade di Parigi da Céline, misteriosa signora bionda. Un''esistenza stimolante e distruttiva, che Oscar sostiene di condurre ancora "per la bellezza del gesto", che gli impone di essere creativo ogni volta, e di quel motore dell''azione di cui il mondo sembra sempre più fare a meno.', '/ySZIi7sxQ6OTETlK1qjA1efNozP.jpg', '1341187200000', 'Dramma,Fantasy', '1746798104081'),
(49797, 'movie', 'I Saw the Devil', '김지운', 'Dopo aver scoperto che la sua fidanzata è stata brutalmente uccisa, l''agente segreto Dae-Hoon è a pezzi. Con l''aiuto di suo suocero, mette a punto un piano per scovare l''assassino e vendicarsi. Presto riesce a identificarlo e lo massacra, senza però ucciderlo. Vuole continuare a provare il gusto di inseguire la sua preda per servirgli una vendetta ancor più dolorosa e spaventosa.', '/zp5NrmYp80axIGiEiYPmm1CW6uH.jpg', '1281571200000', 'Thriller,Horror', '1746798104550'),
(24188, 'movie', 'Il sorpasso', 'Dino Risi', 'Bruno Cortona estroverso e superficiale quarantenne, incontra casualmente, nella Roma spopolata di Ferragosto, lo studente universitario Roberto Mariani, timido e studioso, e lo convince ad unirsi a lui per una scorribanda automobilistica. Sono due temperamenti diversissimi, e il giovane prova per il suo occasionale compagno un misto di repulsione e di attrazione.', '/9vumJKydNxcFtcFNYPIvFeHXVBQ.jpg', '-223257600000', 'Dramma,Commedia', '1746798105012'),
(2654, 'movie', 'Il seme della follia', 'John Carpenter', 'Trent viene ingaggiato dall''editore Harglow per ritrovare Sutter Cane, scrittore di libri horror di successo. Tuttavia Trent è convinto che la presunta scomparsa dello scrittore possa essere una trovata pubblicitaria per lanciare l''uscita del nuovo libro. Prima di partire alla ricerca di Cane, Trent legge i suoi libri (che in qualche modo lo colpiscono) e, ricomponendo le relative copertine, scopre che Cane dovrebbe trovarsi in una remota cittadina del New England, Hobb''s End, che si credeva essere solo un luogo di finzione dei suoi romanzi. Trent e l''assistente di Harglow raggiungono Hobb''s End, dove la finzione e la realtà diventano difficili da distinguere: accadono eventi soprannaturali, probabilmente dovuti alla lettura di uno dei libri di Sutter Cane, che porteranno l''investigatore ad uno stato di pazzia incontrollabile.', '/wthT7M6IyCY4NnyNcxUpAqQOprn.jpg', '791769600000', 'Horror,Mistero', '1746798105467'),
(26451, 'movie', 'Indagine su un cittadino al di sopra di ogni sospetto', 'Elio Petri', 'Il capo della Squadra Omicidi di Roma taglia la gola di Augusta Terzi, sua masochista amante, e semina volutamente tracce e indizi su sé stesso per dimostrare che, come garante della Legge e rappresentante del Potere, è al di sopra di ogni sospetto. Uscito indenne dalle indagini, si autoaccusa.', '/5eUBcyilUy0sy6AcqNpjgXQX4A4.jpg', '24883200000', 'Dramma,Thriller', '1746798105924'),
(781099, 'movie', 'Inexorable', 'Fabrice Du Welz', 'Alla disperata ricerca di ispirazione per il romanzo successivo al suo bestseller "Inexorable", Marcel Bellmer si trasferisce con la famiglia nella vecchia villa di famiglia della moglie.', '/dBccFlBYLXewO8x9ptuKM6lHCDI.jpg', '1648684800000', 'Thriller', '1746798106393'),
(13995, 'movie', 'Capitan America', 'Albert Pyun', 'Steve Rogers è l''invincibile eroe che lotta per la conquista di libertà e democrazia. Il personaggio di Captain America viene dal fumetto e va ad aggiungersi agli altri eroi (Superman, Batman ecc.) che sono stati "promossi" in prima visione cinematografica.', '/jQl8LZfvaOrmjMiw8ZyWpx1Cwqv.jpg', '661132800000', 'Azione,Avventura,Fantascienza,Guerra', '1746798106861'),
(889737, 'movie', 'Joker: Folie à Deux', 'Todd Phillips', 'Arthur Fleck è recluso nel manicomio di Arkham in attesa di essere processato per i crimini commessi come Joker. Mentre lotta con la sua doppia identità, Arthur non solo scopre il vero amore, ma trova anche la musica che ha sempre avuto dentro di sé.', '/vWtTVfbwYrLgWOHe7ooaACAHXX4.jpg', '1727740800000', 'Dramma,Crime,Thriller', '1746798107455'),
(870360, 'movie', 'Un''avventura spaziale - Un film dei Looney Tunes', 'Peter Browngardt', 'Porky Pig e Daffy Duck sono un po'' giù di morale dopo che un misterioso oggetto volante ha squarciato il tetto della loro casa. Senza fondi per le riparazioni, i due amici rischiano di perdere la loro casa d''infanzia! Fortunatamente incontrano Petunia Pig, che corre in loro aiuto procurandogli un lavoro nella locale fabbrica di gomme da masticare, dove lavora come scienziata dei sapori. Tutto sembra andare per il meglio, fino a quando Daffy nota qualcosa di strano. Il nuovo gusto di chewing gum, venduto in tutto il mondo, è stato contaminato da una misteriosa melma appiccicosa verde fluo. Non ci vuole molto prima che si rendano conto che la gomma è stara avvelenata da un malvagio alieno che progetta di far saltare in aria la Terra. Porky, Daffy e Petunia si ritrovano così in una corsa contro il tempo per fermare i piani apocalittici del misterioso invasore. Le abilità scientifiche di Petunia, l''ingegno di Porky e la folle determinazione di Daffy, gli permetteranno di salvare il mondo?', '/tQfc5FOzl5xn7CLSBSULOq9mLXi.jpg', '1722470400000', 'Famiglia,Commedia,Avventura,Animazione,Fantascienza', '1746798107925'),
(11482, 'movie', 'L''inquilino del terzo piano', 'Roman Polanski', 'Trelkovski, modesto impiegato di origini polacche, prende possesso a Parigi di un appartamento la cui inquilina precedente, Simon Chule, si è uccisa buttandosi dalla finestra. O, sarebbe meglio dire, è l''appartamento stesso a prendere possesso dell''uomo. Circondato da inquietanti e grotteschi vicini, Trelkovski scopre nell''appartamento orribili tracce dell''ex-inquilina e finisce progressivamente in un tunnel di follia che lo conduce al totale sdoppiamento di personalità nella ragazza.', '/5jyhqmOlqcMxcjtum7v1m3OnubT.jpg', '201916800000', 'Thriller,Horror,Mistero,Dramma', '1746798108387'),
(399174, 'movie', 'L''isola dei cani', 'Wes Anderson', 'Atari Kobayashi è una guardia di dodici anni che vive a Megasaki City, città giapponese di cui è sindaco Kobayashi. Quando, con un decreto esecutivo, tutti i cani domestici vengono esiliati in un''enorme isola adibita ai rifiuti, Atari si allontana da solo alla ricerca del suo cane Spot. Con l''aiuto di nuovi amici, inizierà un epico viaggio che deciderà il destino e il futuro dell''intera Prefettura.', '/6wLru0FE9bAXrQmxykyv7gxJa5f.jpg', '1521763200000', 'Avventura,Commedia,Animazione', '1746798108887'),
(398173, 'movie', 'La casa di Jack', 'Lars von Trier', 'Stati Uniti d''America, 1970. Jack è un ingegnere psicopatico con tendenze ossessivo-compulsive. Dopo aver ammazzato una donna che gli aveva chiesto soccorso per strada, si convince di dover continuare ad uccidere per raggiungere la perfezione. Ogni suo omicidio deve essere un''opera d''arte: sempre più complessa e ingegnosa. Inizia così una partita a scacchi contro la polizia, lunga dodici anni, condotta dal più astuto e spietato omicida seriale.', '/z4K28tlQYgGGCgHti7l3d6h6rOo.jpg', '1530748800000', 'Dramma,Horror,Crime,Thriller', '1746798109345'),
(56231, 'movie', 'La classe operaia va in paradiso', 'Elio Petri', 'La fabbrica italiana degli anni settanta.  Si racconta il rapporto alienato degli operai con la macchina e i tempi di produzione.  Il rapporto con il movimento studentesco, spesso troppo distante e ''astratto'' dai reali problemi degli operai.  Il film è stato girato nella fabbrica "Falconi", di Novara.  Vincitore del Grand Prix per il miglior film al Festival di Cannes 1972.', '/4Nyi46Yj9i6a9xKVx0rt9LC4qpS.jpg', '53913600000', 'Dramma', '1746798109804'),
(439, 'movie', 'La dolce vita', 'Federico Fellini', 'A Roma, in pieno giorno, compare nel cielo una statua di Gesù Cristo trasportata da un elicottero. La visione suscita l''interesse di gran parte della popolazione, dai ragazzi delle periferie alle ricche signore degli attici del centro storico, e un cronista, Marcello Rubini, ne approfitta per far immortalare le scene dai suoi amici fotografi e dal fedele fotoreporter d''assalto Paparazzo.', '/4VeDUBH3btjtCrUkpWAChqVWfAY.jpg', '-312595200000', 'Commedia,Dramma', '1746798110262'),
(46738, 'movie', 'La donna che canta', 'Denis Villeneuve', 'Quando il notaio Lebel, legge a Jeanne e Simon Marwan il testamento della loro madre Nawal, i gemelli restano scioccati nel vedersi porgere due buste, una destinata ad un padre che credevano morto e l''altra ad un fratello di cui ignoravano l''esistenza. Jeanne vede in questo lascito enigmatico, la chiave del silenzio di Nawal, chiusa in un mutismo inesplicabile durante le ultime settimane precedenti la sua morte. Decide di partire subito per il Medio Oriente per riesumare il passato di questa famiglia di cui non sa quasi nulla. Simon, per quanto lo riguarda, non ha bisogno dei capricci postumi di quella madre che è sempre stata lontana e avara di affetto, ma il suo amore per la sorella lo spingerà presto a unirsi a Jeanne per setacciare insieme la terra dei loro antenati sulle tracce di una Nawal ben lontana dalla madre che conoscevano...', '/nQZhQ5bN72hd831DO4MBtwTjy6C.jpg', '1284681600000', 'Dramma,Guerra,Mistero', '1746798110721'),
(406, 'movie', 'L''odio', 'Mathieu Kassovitz', 'In Le Cité, un quartiere periferico parigino, scoppia il vento della rivolta dopo il pestaggio del sedicenne Abdel Ichaha da parte della polizia. I giovani della banlieu scendono in strada e si battono tutta la notte con gli agenti. Tra loro ci sono tre amici: l''ebreo Vinz, il maghrebino Saïd e il nero Hubert Dia, un trio di sfigati, disoccupati, arrabbiati e senza futuro.', '/fO9B1SHiTBm2A1pUh6WQinV8V1x.jpg', '801878400000', 'Dramma', '1746798111175'),
(457955, 'movie', 'La notte ha divorato il mondo', 'Dominique Rocher', 'Una mattina, al risveglio nell''appartamento dove il giorno prima si è tenuta una festa, Sam deve affrontare la realtà: è solo e le strade di Parigi sono piene di morti viventi. Terrorizzato, dovrà proteggersi e organizzarsi per continuare a sopravvivere. Tuttavia, potrebbe non essere il solo a essere scampato alla pandemia.', '/qAbGewLuMSiDycB4KE240QXv1Gr.jpg', '1520380800000', 'Dramma,Horror,Thriller', '1746798111634'),
(1279, 'movie', 'La samaritana', 'Kim Ki-duk', 'Jae-Young e Yeo-Jin sono due amiche del cuore e socie in affari per guadagnare i soldi necessari per un viaggio in Europa. La prima lavora come prostituta, mentre la seconda le procura i "clienti" e fa il palo per avvertire l''amica di eventuali retate della polizia. Un giorno per sfuggire ad un blitz della polizia, Jae-Young si getta da una finestra, restando gravemente ferita alla testa. Sul letto di morte la ragazza esprime all''amica il desiderio di rivedere un''ultima volta l''uomo che ama: un cliente incontrato poco prima. L''uomo freddamente acconsente a rivedere Jae-Young, ma solo dopo che Yeo-Jin gli si conceda. La ragazza accetta a malincuore, ma i due arrtriofollek@gmail.como all''ospedale troppo tardi: Jae-Young è morta.', '/2f2pz7UXwpINGbi6FXVOUnxzUF1.jpg', '1078444800000', 'Dramma', '1746798112165'),
(5156, 'movie', 'Ladri di biciclette', 'Vittorio De Sica', 'Dopo il furto della propria bicicletta, mezzo che gli permetteva di lavorare, un uomo vaga per la città con tutta la famiglia sperando di poterla ritrovare. Preso dalla disperazione non gli resta che rubarne una a sua volta ma viene bloccato dalla polizia, a questo punto il derubato commuovendosi lo lascia andare...', '/1O2sMu2WsM1YjLMdnaUszHbb2T9.jpg', '-676857600000', 'Dramma', '1746798112631'),
(576845, 'movie', 'Ultima notte a Soho', 'Edgar Wright', 'Eloise, ventenne cresciuta con la nonna dopo il suicidio della madre, arriva a Londra con il sogno di diventare stilista. Ha il mito della Swingin'' London e della musica anni ''60, che ascolta continuamente su vecchi 33 giri portatili. Dopo un''infelice esperienza nello studentato della scuola di moda in cui è stata ammessa, si trasferisce in un appartamento di Soho affittato da un''anziana signora. Qui, durante lunghe notti agitate, Eloise sogna di tornare nel passato, nella Londra che ama di più, dove incontra Sandie, un''aspirante cantante che vive il glamour di una città colorata ed esaltante. Poco alla volta, però, Eloise confonde la propria personalità con quella di Sandie e ne scopre la vita in realtà miserabile, scivolando tra realtà e incubo in un''esperienza spaventosa.', '/mNuXKuiywifooo8LnAzMy0W4ZiK.jpg', '1634774400000', 'Horror,Mistero', '1746798113092'),
(500, 'movie', 'Le iene', 'Quentin Tarantino', 'Los Angeles. Una rapina a un importatore di diamanti che avrebbe potuto dare un ottimo bottino con un rischio calcolato si trasforma in una sparatoria che costringe i malviventi a una fuga disordinata. C''è però un punto di ritrovo prestabilito da Joe, il loro capo. Si tratta di un deposito abbandonato che viene raggiunto per primi da Mr. White e Mr. Orange gravemente ferito. Ognuno degli appartenenti alla banda ha finora conosciuto gli altri solo con il nome di un colore per evitare eventuali delazioni. Ma è proprio il dubbio che al loro interno si nasconda un infiltrato della polizia che comincia a tormentare i soggetti che, progressivamente, raggiungeranno il punto di raccolta.', '/noWeDEXd0a8du7tWG9F16Pm3Cvv.jpg', '715392000000', 'Crime,Thriller', '1746798113675'),
(76341, 'movie', 'Mad Max: Fury Road', 'George Miller', 'Ossessionato dal suo turbolento passato, Mad Max crede che il modo migliore per sopravvivere sia muoversi da solo, ma si ritrova coinvolto con un gruppo in fuga attraverso la Terre Desolata su un blindato da combattimento, guidato dall’imperatrice Furiosa. Il gruppo è sfuggito alla tirannide di Immortan Joe, cui è stato sottratto qualcosa di insostituibile. Furibondo, l’uomo ha sguinzagliato tutti i suoi uomini sulle tracce dei ribelli e così ha inizio una guerra spietata.', '/tNvbFT0Gv7uLUmcKSPcnxGb5xj8.jpg', '1431475200000', 'Azione,Avventura,Fantascienza', '1746798114133'),
(766798, 'movie', 'Madres paralelas', 'Pedro Almodóvar', 'Due donne non sposate che sono rimaste incinte per sbaglio e stanno per partorire si incontrano in una stanza d''ospedale: Janis, di mezza età, impenitente e felice; Ana, un''adolescente, piena di rimorsi e spaventata.', '/4WTnwQea0VQBJ4eeo7KD4ZJXkOF.jpg', '1633651200000', 'Dramma', '1746798114593'),
(300669, 'movie', 'Man in the Dark', 'Fede Álvarez', 'Alcuni ragazzi si introducono nella casa di un uomo cieco per commettere un crimine. Considerando le condizioni del padrone di casa i giovani sono convinti che si tratterà di una passeggiata, ma le cose non andranno come previsto.', '/5EG1C1mrak2WsP3xcluRQ74ZbDl.jpg', '1465344000000', 'Horror,Thriller', '1746798115065'),
(539033, 'movie', 'Manta Ray', 'Phuttiphong Aroonpheng', 'Near a coastal village of Thailand, a local fisherman rescues a stranger, who does not speak a word, offers him his friendship and names him Thongchai. When the fisherman suddenly disappears at sea, Thongchai slowly begins to take over his friend''s life—his house, his job and his marriage.', '/adRTcgZhFbM2svocrUHq0eA5ciT.jpg', '1562803200000', 'Dramma', '1746798115523'),
(1913, 'movie', 'Mare dentro', 'Alejandro Amenábar', 'E'' la storia di Ramón Sampedro, un ex marinaio reso tetraplegico da un tuffo in mare. Nonostante l''affetto e la dedizione dei suoi familiari, dopo un trentennio di totale immobilità inizia, con l''aiuto di un''associazione per i diritti umani, una inutile lotta con i tribunali spagnoli per ottenere il diritto a una morte dignitosa. Due donne, Julia un''avvocatessa colpita a sua volta da una malattia degenerativa, e Rosa, un''operaia con due figli piccoli, impegnate ciascuna a suo modo nella causa di Ramón, dovranno fare i conti con i loro sentimenti e con i principi che hanno regolato fino a quel momento le loro vite.', '/wWzJUEzDUrFWs3fDJjgoOUVolDs.jpg', '1094169600000', 'Dramma', '1746798115982'),
(603, 'movie', 'Matrix', 'Lana Wachowski', 'Seguendo un tatuaggio sulla spalla di una ragazza, l''hacker Neo scopre che la cosiddetta "realtà" è solo un impulso elettrico fornito al cervello degli umani da un''intelligenza artificiale. Per sopravvivere alla catastrofe l''umanità ha infatti avuto bisogno delle macchine, ma queste hanno vinto e necessitano degli uomini come fonte di energia. L''illusione in cui li fanno vivere è quindi finalizzata a "coltivarli" meglio. Nessuno è a conoscenza del tempo che è passato da quando il neurosimulatore ha assegnato una data fittizia al tempo. Solo Neo, con l''aiuto del pirata informatico Morpheus e della bella Trinity, può tentare di scoprire la verità, ma non sarà un''impresa facile.', '/yQZX4scmfYtj4ccKFNGZJlOj1y9.jpg', '922838400000', 'Azione,Fantascienza', '1746798116567'),
(839369, 'movie', 'May December', 'Todd Haynes', 'Vent''anni dopo che la loro famigerata storia d''amore sui giornali scandalistici aveva attanagliato la nazione, una coppia sposata crolla sotto la pressione quando arriva un''attrice a fare ricerche per un film sul loro passato.', '/xI4cCTf4uTWlOXO1v1UYD06VahC.jpg', '1700092800000', 'Dramma', '1746798117027'),
(62215, 'movie', 'Melancholia', 'Lars von Trier', 'Justine arriva con il neomarito alla festa delle nozze che il cognato e la sorella Claire le hanno organizzato con un ritmato protocollo. Justine sorride molto ma dentro di sé prova un disagio profondo che la spingerà ad allontanarsi in più occasioni dai festeggiamenti provocando lo sconcerto di molti, marito compreso. Non si tratta però solo di un malessere esistenziale privato. Una grave minaccia incombe sulla Terra: il pianeta Melancholia si sta avvicinando e, benché il mondo scientifico inviti all''ottimismo, il rischio di collisione e di distruzione totale del globo terrestre è più che mai realistico. Tempo dopo, con Melancholia sempre più vicino, sarà Claire a invitare a casa sua la sorella.', '/8Pi0SMvTJYigX6YKorCbxScSa54.jpg', '1306368000000', 'Dramma,Fantascienza', '1746798117501'),
(19, 'movie', 'Metropolis', 'Fritz Lang', 'Nel 2026 in una megalopoli a due livelli gli operai che lavorano come schiavi nei sotterranei sono incitati alla rivolta da un robot femmineo che riproduce le fattezze di una di loro, la mite e pia Maria. L''ha costruito uno scienziato al servizio dei padroni che vuole vendicarsi del potente John Fredersen, dominatore della città. La rivolta provoca un''inondazione che colpisce i quartieri operai finché, sollecitato da Maria, Freder, figlio di Fredersen, fa da mediatore tra padroni e operai. È nato un nuovo patto sociale. Realizzato nel 1926 a costi così alti che rischiarono di far fallire la UFA, fu proiettato a Berlino il 10-1-1927. Ne esistono varie copie, ciascuna diversa dall''altra per durata e montaggio.', '/b9IVtOO89Ays4v0eWfADQ4Lq3wZ.jpg', '-1353888000000', 'Dramma,Fantascienza', '1746798118083'),
(1050035, 'movie', 'L''innocenza', '是枝裕和', 'Minato, che ha 11 anni e vive con sua mamma vedova, inizia a comportarsi in modo strano e torna da scuola sempre più avvilito. Tutto lascia pensare che il responsabile sia un insegnante, così la madre si precipita a scuola per scoprire cosa sta succedendo. Ma la verità si rivelerà essere un’altra e i fatti sveleranno una profonda e toccante storia di amicizia.', '/lCNvxafXD7fBrjBBRyna0iIysCw.jpg', '1685664000000', 'Mistero,Thriller,Dramma', '1746798118666'),
(1018, 'movie', 'Mulholland Drive', 'David Lynch', 'In tarda notte, una limousine percorre Mulholland Drive (una strada che attraversa le colline attorno a Los Angeles, California); al suo interno c''è una donna dai capelli scuri (interpretata da Laura Elena Harring) e due uomini; improvvisamente, l''auto si ferma ed uno dei due uomini punta una pistola contro la donna; subito dopo, però, dei pirati della strada si schiantano contro la limousine. La donna resta miracolosamente illesa, ma ha un''amnesia. Abbandona la scena dell''incidente e scende la collina che porta a Los Angeles, stendendosi nel giardino di un appartamento e mettendosi a dormire. Il giorno successivo, si sveglia e vede la proprietaria dell''appartamento, una donna di mezza età dai capelli rossi, che sta per partire.', '/rWdFXzVAQwzWrtWyMs7hNRPwDXx.jpg', '991785600000', 'Thriller,Dramma,Mistero', '1746798119128'),
(9589, 'movie', 'Christiane F. - Noi i ragazzi dello zoo di Berlino', 'Uli Edel', 'La giovane berlinese Christiane vive con la madre e la sorella in uno squallido quartiere. L''amica Kessie la porta alla famosa discoteca "Sound", dove conosce molti coetanei e impara a fumare e farsi di LSD. Lì incontra anche Datlev, un ragazzo gentile ma dipendente da eroina; i due gradatamente percorreranno ogni passo della tossicodipendenza e cadranno sempre più in basso perdendo inibizioni e senso morale.', '/yub49OTPZC1RcZvl9xHIuvhJkSa.jpg', '355017600000', 'Dramma', '1746798119613'),
(258216, 'movie', 'Nymphomaniac - Volume 1', 'Lars von Trier', 'Una sera di un freddo inverno l''affascinante scapolo Seligman (Stellan Skarsgård) trova Joe (Charlotte Gainsbourg) riversa in un vicolo, dopo essere stata picchiata. Decide di portarla nel suo appartamento, dove le cura le ferite e comincia a farle domande sulla sua vita. Con attenzione, Seligman si ritrova ad ascoltare le parole di Joe, intenta a raccontare in otto differenti capitoli la sua parabola erotica, dalla nascita fino a quel momento. Sfaccettata e ricca di aneddoti, quella di Joe è un''esistenza fatta di incontri e incidenti, di episodi immorali e di desideri da accontentare, di conflitti e di richieste poco convenzionali.', '/lDjlIRYQNzUJJU6aumvgTfvPW9h.jpg', '1387929600000', 'Dramma', '1746798120195'),
(249397, 'movie', 'Nymphomaniac - Volume 2', 'Lars von Trier', 'Joe prosegue la narrazione della sua vita in rapporto con la sessualità mentre l''anziano Seligman la ascolta suggerendo, talvolta, inattesi paralleli. Apprendiamo così che il blocco dell''orgasmo con cui si chiudeva il primo volume continua e Jerome è costretto ad accettare che Joe cerchi altri uomini per trovare soddisfazione. Questo però non impedisce che nasca un figlio la cui presenza non contribuirà però a cementare la coppia. Tra esperienze con africani ed esplorazioni del proprio versante masochistico, Joe scoprirà anche l''interesse per un rapporto lesbico.', '/9UgZwabZYnKYNcfNknoLiZpjUwd.jpg', '1387929600000', 'Dramma,Mistero', '1746798120776'),
(26955, 'movie', 'Oasis', 'Lee Chang-dong', 'Jong-du è appena uscito di prigione, dopo aver scontato una condanna per omicidio colposo; il giovane incontra casualmente Gong-ju, figlia disabile dell''uomo di cui aveva causato la morte. Tra i due nascerà presto un tenero affetto che sarà duramente osteggiato dalle famiglie di entrambi.', '/aaajiBpeBVbVwovpSQKaMfKRGKw.jpg', '1029369600000', 'Dramma,Romance', '1746798121464'),
(496243, 'movie', 'Parasite', '봉준호', 'Tutta la famiglia di Ki-taek è senza lavoro. Ki-taek è particolarmente interessata allo stile di vita della ricchissima famiglia Park. Un giorno, suo figlio riesce a farsi assumere dai Park e le due famiglie si ritrovano così intrecciate da una serie di eventi incontrollabili.', '/mMM8kcfspicib7AmPTvf97Rarwn.jpg', '1559174400000', 'Commedia,Thriller,Dramma', '1746798121939'),
(976893, 'movie', 'Perfect Days', 'Wim Wenders', 'Hirayama conduce una vita semplice, scandita da una routine perfetta. Si dedica con cura e passione a tutte le attività della sua giornata, dal lavoro come addetto alle pulizie dei bagni pubblici di Tokyo all’amore per la musica, ai libri, alle piante, alla fotografia e a tutte le piccole cose a cui si può dedicare un sorriso. Nel ripetersi del quotidiano, una serie di incontri inaspettati rivela gradualmente qualcosa in più del suo passato.', '/2RA3991JUU5TAqU1OhllxaFOvs.jpg', '1699574400000', 'Dramma', '1746798122412'),
(635731, 'movie', 'Pig - Il piano di Rob', 'Michael Sarnoski', 'Oregon. Un solitario cacciatore di tartufi che vive in una capanna in mezzo ad una foresta è costretto a fare ritorno nella città di Portland per trovare le persone che gli hanno rubato il maiale. Affronta così il suo passato di chef stellato...', '/dkUDmHTna4awZmzdnLvdopMz1oj.jpg', '1626393600000', 'Dramma,Thriller,Mistero', '1746798123786'),
(792307, 'movie', 'Povere creature!', 'Γιώργος Λάνθιμος', 'Bella Baxter viene riportata in vita dal brillante e poco ortodosso scienziato Dr. Godwin Baxter. Affamata della mondanità che le manca, Bella fugge con Duncan Wedderburn, un avvocato elegante e dissoluto, in una vorticosa avventura attraverso i continenti.', '/fTPjIMo1CaXEdElemT4ykxyM8fC.jpg', '1701907200000', 'Fantascienza,Romance,Commedia', '1746798124441'),
(912480, 'movie', 'Red Rooms', 'Pascal Plante', 'The high-profile case of serial killer Ludovic Chevalier has just gone to trial, and Kelly-Anne is obsessed. When reality blurs with her morbid fantasies, she goes down a dark path to seek the final piece of the case’s puzzle.', '/uBJvbf0g9rcsYElcwZCMYU0Vrj8.jpg', '1691712000000', 'Crime,Thriller,Horror', '1746798125007'),
(505192, 'movie', 'Un affare di famiglia', '是枝裕和', 'Dopo uno dei loro furti, Osamu e suo figlio si imbattono in una ragazzina in mezzo ad un freddo glaciale. Dapprima riluttante ad accoglierla, la moglie di Osamu acconsente ad occuparsi di lei dopo aver appreso le difficoltà che la aspettano. Benché la famiglia sia così povera da riuscire a malapena a sopravvivere commettendo piccoli reati, sembrano vivere felici insieme finché un incidente imprevisto porta alla luce segreti nascosti che mettono alla prova i legami che li uniscono.', '/ocxZHsZKzZuSvIdsApTHbylPJbg.jpg', '1527897600000', 'Dramma,Crime,Thriller', '1746798125509'),
(833339, 'movie', 'Speak No Evil', 'Christian Tafdrup', 'In vacanza in Toscana, una famiglia danese fa amicizia con una famiglia olandese. Mesi dopo, la coppia danese riceve dagli olandesi l''invito a far visita loro nella loro casa di campagna, decidendo di accettare la proposta e di passare lì il fine settimana. Tuttavia, non passa molto tempo prima che la gioia del ricongiungimento lasci il posto ai malintesi.', '/9xljnKK2jEqjEviWxftvKHFG4jX.jpg', '1647475200000', 'Horror,Thriller,Dramma', '1746798126658'),
(586461, 'movie', 'Swallow', 'Carlo Mirabella-Davis', 'Hunter ha una vita all''apparenza perfetta. Incinta, è felice e in armonia nella vita di tutti i giorni. Dall''oggi al domani, però, comincia a inghiottire oggetti in maniera incontrollabile.', '/40Zrwud1EVxNvcjQkotZo7jmr4L.jpg', '1579046400000', 'Dramma,Thriller,Horror', '1746798127133'),
(1008042, 'movie', 'Talk to Me', 'Danny Philippou', 'Un gruppo di giovani amici scopre come evocare i demoni facendo uso di un''antica mano imbalsamata, finché uno di loro si spinge troppo oltre aprendo irrimediabilmente le porte al mondo degli spiriti. Perseguitato così da visioni soprannaturali, il gruppo si trova inconsapevolmente al centro di una possessione devastante che porterà a porsi una domanda importante: meglio fidarsi dei vivi o dei morti?', '/xisotUBBDV4haNlpJsuPF0GggSd.jpg', '1690329600000', 'Horror', '1746798127600'),
(13855, 'movie', 'The Chaser', '나홍진', 'Jung-ho è un ex-poliziotto passato dall''altra parte della barricata che fa il protettore per un gruppo di prostitute. Ha però un problema: da qualche tempo alcune delle sue ragazze sono sparite. Quando riceve una chiamata da un cliente manda una delle sue ragazze, Mi-Jin, ma si accorge che c''è un legame tra il numero di telefono del cliente e le ragazze scomparse: prima di sparire erano tutte state richieste da quell''uomo. Inizia così una frenetica ricerca per salvare Mi-Jin, sperando di ritrovarla ancora in vita.', '/nChElNDgCIwFnNXNEMpk1WGGgTH.jpg', '1202947200000', 'Crime,Thriller,Azione', '1746798128557'),
(306947, 'movie', 'The Invitation', 'Karyn Kusama', 'Will ed Eden un tempo si amavano. Dopo aver perso tragicamente il loro figlio, Eden è scomparsa prima di ripresentarsi due anni dopo, di punto in bianco, con un nuovo marito. Totalmente diversa da prima, Eden è stranamente cambiata e ha intenzione di riallacciare i rapporti con Will e con tutti coloro che si era lasciata alle spalle. Nel corso di una cena in una casa che una volta era sua, Will in preda ai tormenti si convince che Eden e i suoi nuovi amici hanno in mente un misterioso e terrificante piano.', '/qs0aBlZ0Cw9eJ8SxG4wPd44CBPm.jpg', '1460073600000', 'Thriller,Horror', '1746798129051'),
(301365, 'movie', 'The Neon Demon', 'Nicolas Winding Refn', 'Quando l’aspirante modella Jesse si trasferisce a Los Angeles, la sua giovinezza e vitalità vengono fagocitate da un gruppo di donne ossessionate dalla bellezza,disposte ad usare ogni mezzo per prenderle ciò che ha.', '/xecpbH1yzrOirRWE48QJGCwDana.jpg', '1464652800000', 'Thriller,Horror', '1746798129703'),
(269776, 'movie', 'The lonely hearts killers', 'Fabrice Du Welz', 'Michel, un donnaiolo omicida, incontra online l''introversa Gloria e le regala una vorticosa avventura di una notte. Offrendosi come complice nei suoi crimini seducenti, gli amanti squilibrati si imbarcano in un''odissea mortale amplificata da sesso selvaggio, gelosia sfrenata e appassionate incursioni nelle arti oscure. Questo shocker intelligente e cruento infonde nuova vita al genere horror malato d''amore per servire un racconto agghiacciante di disperazione incandescente e devozione terrificante.', '/jdBTlCfbIUHr8XWgBvpuCw6kz0S.jpg', '1416960000000', 'Horror,Dramma,Thriller', '1746798130161'),
(310131, 'movie', 'The Witch', 'Robert Eggers', 'New England, XVII secolo. William e Katherine conducono una devota vita cristiana insieme ai loro cinque figli in una zona ai margini dell''impraticabile deserto. Quando il loro figlio neonato svanisce e il raccolto va a male, la famiglia comincia a disintegrarsi e tutti finiscono con il darsi addosso a vicenda. Il vero pericolo però è il male sovrannaturale che si nasconde nel vicino bosco.', '/cJpvTuOl4OV8TgDib4ilYqPVAfe.jpg', '1455840000000', 'Horror,Fantasy,Dramma', '1746798130620'),
(7345, 'movie', 'Il petroliere', 'Paul Thomas Anderson', 'Daniel Plainview è un cercatore d''argento che, alla fine dell''800 trova il petrolio nell''Ovest degli Stati Uniti. La sua ricchezza diventa considerevole, ma l''uomo, sempre più accecato da una misantropia assoluta, allontanerà da sé anche il figlio, precipitando sempre più nell''avidità del possesso.', '/2eH78Nz708yFVrcaZAE2bspY5q5.jpg', '1198627200000', 'Dramma', '1746798131081'),
(627, 'movie', 'Trainspotting', 'Danny Boyle', 'Edimburgo. Mark Renton, ladruncolo per necessità, ha scelto un''onesta e sincera tossicodipendenza. Begbie, uno psicopatico violento e alcolizzato spaventa perfino i suoi amici, ma non si sognerebbe nemmeno di toccare la droga. Spud, un disperato, ma amabile eroinomane. Sick Boy, un narciso dalle conoscenze enciclopediche su Sean Connery, in grado di tenere sotto controllo la propria dipendenza dall''eroina. Poi c''è Tommy che non si droga, è un maniaco delle escursioni all''aria aperta e di Iggy Pop. Ai margini della storia, ci sono le ragazze del gruppo.', '/rW8igIeFq2reJPgUYK5gukdSVVB.jpg', '825033600000', 'Dramma,Crime', '1746798131653'),
(1391, 'movie', 'Anche tua madre', 'Alfonso Cuarón', 'Julio e Tenoch sono due amici diciassettenni che hanno una gran voglia di crescere. Nel corso di una festa conoscono una ventottenne spagnola, Louisa, che corteggiano in coppia. Costei è un misto di vitalità e di tristezza, ma è capace di accettare la proposta di un viaggio in tre verso una spiaggia denominata Boca del Cielo che i due in realtà non sanno dove si trovi.', '/8MBu6LXCdkE5KHhfweqQ1DVSTFB.jpg', '991958400000', 'Dramma,Romance', '1746798132123'),
(38473, 'movie', 'Una tomba per lucciole', '日向寺太郎', 'Il film è incentrato sulla storia di due fratelli, Setsuko e Seita, che vivono in Giappone durante la Seconda Guerra Mondiale.  Dopo la morte della madre, uccisa da un raid aereo, vengono ospitati a casa di alcuni parenti. Ma quando il conflitto inizia ad inasprirsi, i due bambini scappano dalla città, e trovano riparo in un''abitazione abbandonata.  In attesa della fine del conflitto, e del ritorno del padre (partito in guerra) i due bambini cercano di sopravvivere aiutandosi a vicenda.', '/kQ29Tp6L43o1hVbyXxdtxAtLtZ3.jpg', '1215216000000', 'Dramma,Guerra', '1746798132615'),
(219, 'movie', 'Volver - Tornare', 'Pedro Almodóvar', 'Raimunda, una giovane madre de la Mancha, trova rifugio dal suo passato a Madrid, dove vive col suo compagno Paco e la figlia adolescente, Paula. Durante un tentativo di abuso da parte del patrigno, Paula lo pugnala a morte. Scoperta la tragedia, Raimunda ''abbraccia'' la figlia e la legittima difesa, coprendo l''omicidio e occultando il cadavere. Questo evento disgraziato rievoca fantasmi dolorosi e mai svaniti. Dall''aldilà torna Irene, sua madre, a chiederle perdono e a riparare la colpa.', '/qU6UQTgrRAo6B4qfVcdITmCuEVg.jpg', '1142553600000', 'Commedia,Dramma,Romance', '1746798133213'),
(744857, 'movie', 'When Evil Lurks', 'Demián Rugna', 'Gli abitanti di un piccolo paese rurale scoprono che tra loro sta per nascere un demone. Tentano disperatamente di scappare prima che nasca il male, ma potrebbe essere troppo tardi.', '/e1K5ESnTmRzj0YaUIRrIfShtTe4.jpg', '1696464000000', 'Horror,Thriller', '1746798133669'),
(783675, 'movie', 'The First Slam Dunk', '井上雄彦', 'Ryōta Miyagi è sempre stato legato al basket grazie al fratello maggiore Sota, deceduto in un incidente in mare quando Ryōta era piccolo. Ora playmaker della squadra di basket della Shohoku, Ryōta si prepara con i suoi compagni a sfidare "l''imbattibile" Sannoh, il team campione del torneo nazionale.', '/A93VYgcBAdBbvdApUtmvLtLe6sf.jpg', '1670025600000', 'Animazione,Commedia,Dramma', '1746798134128'),
(504253, 'movie', 'Voglio mangiare il tuo pancreas', '牛嶋新一郎', 'La giovane Sakura è gravemente malata e non le restano molti giorni da vivere, ma nessuno lo sa. Finché il timido e introverso Haruki non lo scopre, in maniera del tutto casuale. Tra i due nasce un complicato rapporto di amicizia, che insegnerà molto a entrambi sulla vita e sull''affetto reciproco.', '/2ezMKcw090lTq7dA7AY0lr2gOP1.jpg', '1535760000000', 'Animazione,Dramma,Romance', '1746798134590'),
(378064, 'movie', 'La forma della voce', '山田尚子', 'Ogaki. Il liceale Shoya Ishida sta per saltare dal ponte per suicidarsi, ma all''ultimo desiste. Cinque anni prima, ai tempi della scuola elementare, nella classe di Shoya arriva Shoko Nishimiya, una ragazza sordomuta: l''accoglienza dei suoi compagni da timida diviene in breve tempo ostile. Per quanto Shoko si sforzi di essere gentile e disponibile con tutti, un gruppetto, capitanato da Shoya, si accanisce contro di lei. Cinque anni dopo Shoya ancora non è in grado di darsi pace per i torti inflitti a Shoko, anche perché la conseguenza delle sue azioni passate è la totale solitudine.', '/kebTSlQRdLCh8sLqkh0B0KaR8i.jpg', '1474070400000', 'Animazione,Dramma,Romance', '1746798135056'),
(149, 'movie', 'Akira', '大友克洋', 'Nel 1988 il centro di Tokyo viene distrutto da una gigantesca e misteriosa esplosione che scatena il terzo conflitto mondiale. Nel 2019 il mondo riemerge lentamente dalla devastazione. A Neo Tokyo, ricostruita attorno al cratere provocato dalla prima deflagrazione, i militari portano avanti esperimenti su ragazzi dotati di poteri straordinari. Tetsuo, teppista amico di Kaneda, scatena le attenzioni dei vertici militari e viene prima catturato e poi sottoposto a controlli meticolosissimi: che sia lui il nuovo Akira? In lui vi è forse traccia del potere che distrusse Tokyo trent''anni prima?', '/jyM3CQptzgnJC82CyWQxVEn7xQm.jpg', '581904000000', 'Animazione,Fantascienza,Azione', '1746798135555'),
(652837, 'movie', 'Josée, la tigre e i pesci', 'タムラコータロー', 'Lo studente universitario Tsuneo una mattina incontra una vecchia che spinge una enorme carrozzina: dentro c’è Kimiko, una ragazza colpita da paralisi cerebrale incapace di muovere le gambe. Tsuneo finisce per seguirle nella squallida abitazione che condividono, e nonostante il guscio in cui Kimiko sembra essersi rinchiusa, comincerà a farsi vivo sempre più spesso.', '/vyu50PCv29Ddp0RiCzEOlQ4uuDU.jpg', '1608854400000', 'Animazione,Dramma,Romance', '1746798136012'),
(372058, 'movie', 'Your Name.', '新海誠', 'Mitsuha è una studentessa che vive in una piccola città rurale e desidera trasferirsi a Tokyo, nella grande metropoli dove ogni sogno si può realizzare. Taki è uno studente di liceo che vive proprio a Tokyo, ha un lavoro part-time in un ristorante italiano, ma vorrebbe lavorare nel campo dell’arte o dell’architettura. Una notte, Mitsuha sogna di essere un giovane uomo, si ritrova in una stanza che non conosce, ha nuovi amici e lo skyline di Tokyo si apre dinnanzi al suo sguardo. Nello stesso momento Taki sogna di essere una ragazzina che vive in una piccola città di montagna che non ha mai visitato. Ma quale sarà il segreto che si cela dietro questi strani sogni incrociati?', '/8cFxeflG3pVRJcy339HwImTOUlc.jpg', '1472169600000', 'Animazione,Romance,Dramma', '1746798136473'),
(916224, 'movie', 'Suzume', '新海誠', 'La storia ha come protagonista una ragazza di 17 anni, Suzume, che vive in una tranquilla cittadina del Kyushu. Un giorno incontra un giovane viaggiatore che sta cercando una misteriosa "porta" e decide di seguirlo. Proprio la ragazza scopre l''esistenza di un vecchio portale tra le rovine delle montagne. La leggenda narra l''esistenza di diverse porte collegate tra loro in tutto il Giappone e che la chiusura di una di esse porti terribili sciagure.', '/z05lvxEuMZNgf7VwqBs87GTJJPU.jpg', '1668124800000', 'Animazione,Dramma,Avventura,Fantasy', '1746798136943'),
(110420, 'movie', 'Wolf Children - Ame e Yuki i bambini lupo', '細田守', 'I protagonisti, Ame e Yuki, sono due bambini apparentemente normali, che conducono una vita semplice con la madre Hana. Ma in realtà celano un segreto cruciale: il loro papà è un licantropo sparito misteriosamente e i bambini condividono la sua terribile eredità metamorfica… Come educarli?', '/2P7Uj8dyOmhzS66SaLyfceD1BjM.jpg', '1342828800000', 'Animazione,Famiglia,Dramma,Fantasy', '1746798137402'),
(916192, 'movie', 'The Tunnel to Summer, the Exit of Goodbyes', '田口智久', 'Secondo alcune voci, il tunnel di Urashima consente, attraversandolo, di raggiungere ciò che il cuore desidera… in cambio di alcuni anni della tua vita. Quando Kaoru si imbatte nel tunnel della leggenda, il ragazzo pensa a Karen, sorellina che ha perso anni prima in un incidente. Indeciso sul da farsi, a convincerlo a sfidare spazio e tempo è Anzu, studentessa appena trasferitasi. Ma cosa vorrà la giovane da Kaoru? E cosa rimarrà a quest’ultimo, dopo che il tunnel avrà finito con lui?', '/so3KRcToWtDaR2Ece4DkVFBFvNe.jpg', '1662681600000', 'Animazione,Dramma,Romance,Fantasy,Fantascienza', '1746798137860'),
(615165, 'movie', 'A te che conosci l’azzurro del cielo - Her Blue Sky', '長井龍雪', 'Dopo la morte dei propri genitori, Akane inizia a prendersi cura della sorella minore Aoi, la quale da quel momento inizia a sentire un profondo debito di riconoscenza. Per stare con Aoi, Akane aveva tuttavia rinunciato a trasferirsi a Tokyo con il fidanzato Shinnosuke, tanto che i due non si erano più tenuti in contatto. Il giovane – dopo tredici anni dal loro ultimo incontro – ritorna tuttavia nella città delle due ragazze, in circostanze misteriose.', '/lVBd9fRkpyEgitoDE9qstLCX6og.jpg', '1570752000000', 'Animazione,Romance', '1746798138320'),
(71883, 'movie', 'Redline', '小池健', 'Redline è il nome della gara automobilistica illegale più grande dell''universo che si svolge una volta ogni cinque anni in un luogo dello spazio che viene rivelato solo un minuto prima della partenza. Il pilota protagonista JP vuole partecipare e ha bisogno di qualificarsi ottenendo una buona posizione alla gara Yellowline, ma prima di tagliare il traguardo qualcosa non va per il verso giusto.', '/fQ0UYOHuU6n2qsoYZ44pG59sFzb.jpg', '1250208000000', 'Animazione,Azione,Fantascienza', '1746798138812'),
(530079, 'movie', 'Ride Your Wave', '湯浅政明', 'Hinako Mukaimizu è una diciannovenne che, dopo essere stata intrappolata nel suo appartamento da un incendio, viene soccorsa da Minato Hinageshi, un pompiere di ventuno anni caratterizzato da un forte desiderio di aiutare il prossimo. I due si innamorano, tuttavia Minato muore all''improvviso, cercando di salvare una persona che stava annegando. La giovane scopre però che, cantando "Brand New Story", un brano che i due giovani amavano particolarmente, Minato riappare all''interno dell''acqua. Hinako scopre però che ciò non avviene per caso, ma ha lo scopo di farle prendere coscienza su cosa sia la vita e sul suo futuro.', '/1MyTFWvJ8lTsMC1AcbK07hcJ0hp.jpg', '1561075200000', 'Animazione,Romance,Commedia,Dramma,Fantasy', '1746798139273'),
(364111, 'movie', 'The Anthem of the Heart', '長井龍雪', 'La storia è ambientata a Chichibu, dove una ragazzina di nome Jun Naruse ha la tendenza a gridare i suoi veri sentimenti alle persone, ma che così facendo finisce sempre per ferirle. Un giorno, una fata a forma di uovo afferma di poterle risolvere il suo problema e così, dopo che Jun accetta il suo aiuto, questi le toglie la facoltà di parlare. Al liceo la vita di Jun cambierà di nuovo, quando scoprirà cosa sono la musica e l''amicizia.', '/7bJHM6t6j3YLjDNTwe4hyghKqSr.jpg', '1442620800000', 'Animazione,Dramma,Musica,Romance', '1746798139732'),
(315465, 'movie', 'The Boy and the Beast', '細田守', 'Kyuta è un bambino senza genitori. Smarritosi per le vie di Tokio, si ritrova in un universo parallelo dove incontra Kumatetsu, una creatura simile ad un orso che lotta per vivere. Kumatetsu prende Kyuta sotto la sua protezione e gli insegna tutti i segreti dell''arte del combattimento. Ormai cresciuto, il giovane Kyuta torna a Tokio mosso dal desiderio di riscoprire le sue origini. Lì scoprirà l’amore e una verità che non credeva più possibile...Ma proprio nel momento in cui sembrava raggiunta la serenità, i nemici del passato si ripresentano minando la sicurezza dell’intera città. Sarà pronto Kyuta per dimostrare a Kumatetsu di essere il più forte?', '/kzKJxfIdZ70nsPfKyq7hlYlJwSx.jpg', '1436572800000', 'Azione,Avventura,Animazione,Dramma,Famiglia,Fantasy', '1746798140308');


-- Inserisci i rating (WorkRating)
INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_4552_user1',
  w.id,
  w.externalId,
  'user1',
  8.5,
  1746798086907,
  1746798086907
FROM Work w
WHERE w.externalId = 4552 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_487631_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798087382,
  1746798087382
FROM Work w
WHERE w.externalId = 487631 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_348_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798087847,
  1746798087847
FROM Work w
WHERE w.externalId = 348 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_348_user7',
  w.id,
  w.externalId,
  'user7',
  9.5,
  1746798087847,
  1746798087847
FROM Work w
WHERE w.externalId = 348 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_348_user10',
  w.id,
  w.externalId,
  'user10',
  10,
  1746798087847,
  1746798087847
FROM Work w
WHERE w.externalId = 348 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_7857_user1',
  w.id,
  w.externalId,
  'user1',
  5,
  1746798088311,
  1746798088311
FROM Work w
WHERE w.externalId = 7857 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_7857_user6',
  w.id,
  w.externalId,
  'user6',
  6,
  1746798088311,
  1746798088311
FROM Work w
WHERE w.externalId = 7857 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_7857_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746798088311,
  1746798088311
FROM Work w
WHERE w.externalId = 7857 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_915935_user1',
  w.id,
  w.externalId,
  'user1',
  8.5,
  1746798088773,
  1746798088773
FROM Work w
WHERE w.externalId = 915935 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_340666_user1',
  w.id,
  w.externalId,
  'user1',
  8.5,
  1746798089235,
  1746798089235
FROM Work w
WHERE w.externalId = 340666 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_340666_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746798089235,
  1746798089235
FROM Work w
WHERE w.externalId = 340666 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_340666_user6',
  w.id,
  w.externalId,
  'user6',
  8,
  1746798089235,
  1746798089235
FROM Work w
WHERE w.externalId = 340666 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_340666_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746798089235,
  1746798089235
FROM Work w
WHERE w.externalId = 340666 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_17609_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746798089700,
  1746798089700
FROM Work w
WHERE w.externalId = 17609 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_185_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798090161,
  1746798090161
FROM Work w
WHERE w.externalId = 185 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_185_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746798090161,
  1746798090161
FROM Work w
WHERE w.externalId = 185 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_185_user6',
  w.id,
  w.externalId,
  'user6',
  9,
  1746798090161,
  1746798090161
FROM Work w
WHERE w.externalId = 185 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_185_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746798090161,
  1746798090161
FROM Work w
WHERE w.externalId = 185 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_714888_user6',
  w.id,
  w.externalId,
  'user6',
  7.5,
  1746798090629,
  1746798090629
FROM Work w
WHERE w.externalId = 714888 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_242224_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746798091092,
  1746798091092
FROM Work w
WHERE w.externalId = 242224 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_25649_user1',
  w.id,
  w.externalId,
  'user1',
  10,
  1746798091553,
  1746798091553
FROM Work w
WHERE w.externalId = 25649 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_25649_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746798091553,
  1746798091553
FROM Work w
WHERE w.externalId = 25649 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_25649_user6',
  w.id,
  w.externalId,
  'user6',
  10,
  1746798091553,
  1746798091553
FROM Work w
WHERE w.externalId = 25649 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_798286_user1',
  w.id,
  w.externalId,
  'user1',
  8.5,
  1746798092018,
  1746798092018
FROM Work w
WHERE w.externalId = 798286 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_798286_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746798092018,
  1746798092018
FROM Work w
WHERE w.externalId = 798286 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_45958_user5',
  w.id,
  w.externalId,
  'user5',
  8,
  1746798092490,
  1746798092490
FROM Work w
WHERE w.externalId = 45958 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_335984_user1',
  w.id,
  w.externalId,
  'user1',
  10,
  1746798092959,
  1746798092959
FROM Work w
WHERE w.externalId = 335984 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_335984_user5',
  w.id,
  w.externalId,
  'user5',
  8,
  1746798092959,
  1746798092959
FROM Work w
WHERE w.externalId = 335984 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_335984_user8',
  w.id,
  w.externalId,
  'user8',
  9,
  1746798092959,
  1746798092959
FROM Work w
WHERE w.externalId = 335984 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_335984_user9',
  w.id,
  w.externalId,
  'user9',
  10,
  1746798092959,
  1746798092959
FROM Work w
WHERE w.externalId = 335984 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_68_user1',
  w.id,
  w.externalId,
  'user1',
  6,
  1746798093422,
  1746798093422
FROM Work w
WHERE w.externalId = 68 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_68_user3',
  w.id,
  w.externalId,
  'user3',
  8,
  1746798093422,
  1746798093422
FROM Work w
WHERE w.externalId = 68 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_68_user4',
  w.id,
  w.externalId,
  'user4',
  5.5,
  1746798093422,
  1746798093422
FROM Work w
WHERE w.externalId = 68 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_68_user6',
  w.id,
  w.externalId,
  'user6',
  7.5,
  1746798093422,
  1746798093422
FROM Work w
WHERE w.externalId = 68 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_68_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746798093422,
  1746798093422
FROM Work w
WHERE w.externalId = 68 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_736732_user1',
  w.id,
  w.externalId,
  'user1',
  7.5,
  1746798093885,
  1746798093885
FROM Work w
WHERE w.externalId = 736732 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_736732_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746798093885,
  1746798093885
FROM Work w
WHERE w.externalId = 736732 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_736732_user6',
  w.id,
  w.externalId,
  'user6',
  8.5,
  1746798093885,
  1746798093885
FROM Work w
WHERE w.externalId = 736732 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_491584_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798094352,
  1746798094352
FROM Work w
WHERE w.externalId = 491584 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_491584_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746798094352,
  1746798094352
FROM Work w
WHERE w.externalId = 491584 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_491584_user5',
  w.id,
  w.externalId,
  'user5',
  10,
  1746798094352,
  1746798094352
FROM Work w
WHERE w.externalId = 491584 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_491584_user6',
  w.id,
  w.externalId,
  'user6',
  9,
  1746798094352,
  1746798094352
FROM Work w
WHERE w.externalId = 491584 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_491584_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746798094352,
  1746798094352
FROM Work w
WHERE w.externalId = 491584 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1026227_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746798094812,
  1746798094812
FROM Work w
WHERE w.externalId = 1026227 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1026227_user6',
  w.id,
  w.externalId,
  'user6',
  7,
  1746798094812,
  1746798094812
FROM Work w
WHERE w.externalId = 1026227 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1026227_user9',
  w.id,
  w.externalId,
  'user9',
  7,
  1746798094812,
  1746798094812
FROM Work w
WHERE w.externalId = 1026227 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_420187_user1',
  w.id,
  w.externalId,
  'user1',
  10,
  1746798095270,
  1746798095270
FROM Work w
WHERE w.externalId = 420187 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_420187_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746798095270,
  1746798095270
FROM Work w
WHERE w.externalId = 420187 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_997294_user1',
  w.id,
  w.externalId,
  'user1',
  8.5,
  1746798095785,
  1746798095785
FROM Work w
WHERE w.externalId = 997294 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_16_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798096245,
  1746798096245
FROM Work w
WHERE w.externalId = 16 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_16_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746798096245,
  1746798096245
FROM Work w
WHERE w.externalId = 16 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_16_user6',
  w.id,
  w.externalId,
  'user6',
  10,
  1746798096245,
  1746798096245
FROM Work w
WHERE w.externalId = 16 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_774370_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798096705,
  1746798096705
FROM Work w
WHERE w.externalId = 774370 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_774370_user3',
  w.id,
  w.externalId,
  'user3',
  8,
  1746798096705,
  1746798096705
FROM Work w
WHERE w.externalId = 774370 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_774370_user10',
  w.id,
  w.externalId,
  'user10',
  8,
  1746798096705,
  1746798096705
FROM Work w
WHERE w.externalId = 774370 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38810_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798097166,
  1746798097166
FROM Work w
WHERE w.externalId = 38810 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_134374_user5',
  w.id,
  w.externalId,
  'user5',
  8,
  1746798097625,
  1746798097625
FROM Work w
WHERE w.externalId = 134374 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_141_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746798098085,
  1746798098085
FROM Work w
WHERE w.externalId = 141 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_141_user6',
  w.id,
  w.externalId,
  'user6',
  7.5,
  1746798098085,
  1746798098085
FROM Work w
WHERE w.externalId = 141 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_758866_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798098541,
  1746798098541
FROM Work w
WHERE w.externalId = 758866 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_758866_user5',
  w.id,
  w.externalId,
  'user5',
  10,
  1746798098541,
  1746798098541
FROM Work w
WHERE w.externalId = 758866 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_853_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798099002,
  1746798099002
FROM Work w
WHERE w.externalId = 853 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_853_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746798099002,
  1746798099002
FROM Work w
WHERE w.externalId = 853 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_853_user6',
  w.id,
  w.externalId,
  'user6',
  8,
  1746798099002,
  1746798099002
FROM Work w
WHERE w.externalId = 853 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_853_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746798099002,
  1746798099002
FROM Work w
WHERE w.externalId = 853 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_34647_user1',
  w.id,
  w.externalId,
  'user1',
  9,
  1746798099459,
  1746798099459
FROM Work w
WHERE w.externalId = 34647 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_985_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798099917,
  1746798099917
FROM Work w
WHERE w.externalId = 985 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_985_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746798099917,
  1746798099917
FROM Work w
WHERE w.externalId = 985 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_985_user6',
  w.id,
  w.externalId,
  'user6',
  9,
  1746798099917,
  1746798099917
FROM Work w
WHERE w.externalId = 985 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_985_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746798099917,
  1746798099917
FROM Work w
WHERE w.externalId = 985 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38_user4',
  w.id,
  w.externalId,
  'user4',
  7.5,
  1746798100373,
  1746798100373
FROM Work w
WHERE w.externalId = 38 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38_user6',
  w.id,
  w.externalId,
  'user6',
  9.5,
  1746798100373,
  1746798100373
FROM Work w
WHERE w.externalId = 38 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1156125_user1',
  w.id,
  w.externalId,
  'user1',
  9,
  1746798100826,
  1746798100826
FROM Work w
WHERE w.externalId = 1156125 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13807_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798101320,
  1746798101320
FROM Work w
WHERE w.externalId = 13807 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1946_user1',
  w.id,
  w.externalId,
  'user1',
  8.5,
  1746798101779,
  1746798101779
FROM Work w
WHERE w.externalId = 1946 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1946_user10',
  w.id,
  w.externalId,
  'user10',
  8.5,
  1746798101779,
  1746798101779
FROM Work w
WHERE w.externalId = 1946 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_334536_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798102241,
  1746798102241
FROM Work w
WHERE w.externalId = 334536 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_550_user6',
  w.id,
  w.externalId,
  'user6',
  8,
  1746798102704,
  1746798102704
FROM Work w
WHERE w.externalId = 550 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_550_user9',
  w.id,
  w.externalId,
  'user9',
  7,
  1746798102704,
  1746798102704
FROM Work w
WHERE w.externalId = 550 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_8088_user5',
  w.id,
  w.externalId,
  'user5',
  8.5,
  1746798103164,
  1746798103164
FROM Work w
WHERE w.externalId = 8088 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_14537_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746798103624,
  1746798103624
FROM Work w
WHERE w.externalId = 14537 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_103328_user1',
  w.id,
  w.externalId,
  'user1',
  10,
  1746798104081,
  1746798104081
FROM Work w
WHERE w.externalId = 103328 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_49797_user1',
  w.id,
  w.externalId,
  'user1',
  9,
  1746798104550,
  1746798104550
FROM Work w
WHERE w.externalId = 49797 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_49797_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746798104550,
  1746798104550
FROM Work w
WHERE w.externalId = 49797 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_49797_user6',
  w.id,
  w.externalId,
  'user6',
  9,
  1746798104550,
  1746798104550
FROM Work w
WHERE w.externalId = 49797 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_49797_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746798104550,
  1746798104550
FROM Work w
WHERE w.externalId = 49797 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_24188_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798105012,
  1746798105012
FROM Work w
WHERE w.externalId = 24188 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_2654_user1',
  w.id,
  w.externalId,
  'user1',
  10,
  1746798105467,
  1746798105467
FROM Work w
WHERE w.externalId = 2654 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_2654_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746798105467,
  1746798105467
FROM Work w
WHERE w.externalId = 2654 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_26451_user1',
  w.id,
  w.externalId,
  'user1',
  10,
  1746798105924,
  1746798105924
FROM Work w
WHERE w.externalId = 26451 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_26451_user6',
  w.id,
  w.externalId,
  'user6',
  9,
  1746798105924,
  1746798105924
FROM Work w
WHERE w.externalId = 26451 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_781099_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746798106393,
  1746798106393
FROM Work w
WHERE w.externalId = 781099 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13995_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746798106861,
  1746798106861
FROM Work w
WHERE w.externalId = 13995 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13995_user6',
  w.id,
  w.externalId,
  'user6',
  7.5,
  1746798106861,
  1746798106861
FROM Work w
WHERE w.externalId = 13995 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13995_user9',
  w.id,
  w.externalId,
  'user9',
  6.5,
  1746798106861,
  1746798106861
FROM Work w
WHERE w.externalId = 13995 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_889737_user1',
  w.id,
  w.externalId,
  'user1',
  4,
  1746798107455,
  1746798107455
FROM Work w
WHERE w.externalId = 889737 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_889737_user10',
  w.id,
  w.externalId,
  'user10',
  4,
  1746798107455,
  1746798107455
FROM Work w
WHERE w.externalId = 889737 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_870360_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798107925,
  1746798107925
FROM Work w
WHERE w.externalId = 870360 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_870360_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746798107925,
  1746798107925
FROM Work w
WHERE w.externalId = 870360 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_870360_user6',
  w.id,
  w.externalId,
  'user6',
  8,
  1746798107925,
  1746798107925
FROM Work w
WHERE w.externalId = 870360 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_870360_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746798107925,
  1746798107925
FROM Work w
WHERE w.externalId = 870360 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_11482_user1',
  w.id,
  w.externalId,
  'user1',
  10,
  1746798108387,
  1746798108387
FROM Work w
WHERE w.externalId = 11482 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_11482_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746798108387,
  1746798108387
FROM Work w
WHERE w.externalId = 11482 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_399174_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798108887,
  1746798108887
FROM Work w
WHERE w.externalId = 399174 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_399174_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746798108887,
  1746798108887
FROM Work w
WHERE w.externalId = 399174 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_399174_user6',
  w.id,
  w.externalId,
  'user6',
  8,
  1746798108887,
  1746798108887
FROM Work w
WHERE w.externalId = 399174 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_399174_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746798108887,
  1746798108887
FROM Work w
WHERE w.externalId = 399174 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_398173_user1',
  w.id,
  w.externalId,
  'user1',
  9,
  1746798109345,
  1746798109345
FROM Work w
WHERE w.externalId = 398173 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_398173_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746798109345,
  1746798109345
FROM Work w
WHERE w.externalId = 398173 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_398173_user6',
  w.id,
  w.externalId,
  'user6',
  9,
  1746798109345,
  1746798109345
FROM Work w
WHERE w.externalId = 398173 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_398173_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746798109345,
  1746798109345
FROM Work w
WHERE w.externalId = 398173 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_56231_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798109804,
  1746798109804
FROM Work w
WHERE w.externalId = 56231 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_56231_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746798109804,
  1746798109804
FROM Work w
WHERE w.externalId = 56231 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_56231_user6',
  w.id,
  w.externalId,
  'user6',
  8.5,
  1746798109804,
  1746798109804
FROM Work w
WHERE w.externalId = 56231 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_439_user1',
  w.id,
  w.externalId,
  'user1',
  10,
  1746798110262,
  1746798110262
FROM Work w
WHERE w.externalId = 439 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_439_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746798110262,
  1746798110262
FROM Work w
WHERE w.externalId = 439 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_439_user6',
  w.id,
  w.externalId,
  'user6',
  10,
  1746798110262,
  1746798110262
FROM Work w
WHERE w.externalId = 439 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_439_user9',
  w.id,
  w.externalId,
  'user9',
  10,
  1746798110262,
  1746798110262
FROM Work w
WHERE w.externalId = 439 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46738_user1',
  w.id,
  w.externalId,
  'user1',
  9,
  1746798110721,
  1746798110721
FROM Work w
WHERE w.externalId = 46738 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46738_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746798110721,
  1746798110721
FROM Work w
WHERE w.externalId = 46738 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46738_user6',
  w.id,
  w.externalId,
  'user6',
  9.5,
  1746798110721,
  1746798110721
FROM Work w
WHERE w.externalId = 46738 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46738_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746798110721,
  1746798110721
FROM Work w
WHERE w.externalId = 46738 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_406_user1',
  w.id,
  w.externalId,
  'user1',
  9,
  1746798111175,
  1746798111175
FROM Work w
WHERE w.externalId = 406 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_406_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746798111175,
  1746798111175
FROM Work w
WHERE w.externalId = 406 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_406_user6',
  w.id,
  w.externalId,
  'user6',
  9,
  1746798111175,
  1746798111175
FROM Work w
WHERE w.externalId = 406 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_406_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746798111175,
  1746798111175
FROM Work w
WHERE w.externalId = 406 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_457955_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798111634,
  1746798111634
FROM Work w
WHERE w.externalId = 457955 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1279_user1',
  w.id,
  w.externalId,
  'user1',
  9,
  1746798112165,
  1746798112165
FROM Work w
WHERE w.externalId = 1279 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1279_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746798112165,
  1746798112165
FROM Work w
WHERE w.externalId = 1279 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_5156_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798112631,
  1746798112631
FROM Work w
WHERE w.externalId = 5156 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_5156_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746798112631,
  1746798112631
FROM Work w
WHERE w.externalId = 5156 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_5156_user6',
  w.id,
  w.externalId,
  'user6',
  7.5,
  1746798112631,
  1746798112631
FROM Work w
WHERE w.externalId = 5156 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_576845_user1',
  w.id,
  w.externalId,
  'user1',
  9,
  1746798113092,
  1746798113092
FROM Work w
WHERE w.externalId = 576845 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_500_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798113675,
  1746798113675
FROM Work w
WHERE w.externalId = 500 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_500_user6',
  w.id,
  w.externalId,
  'user6',
  8.5,
  1746798113675,
  1746798113675
FROM Work w
WHERE w.externalId = 500 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_500_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746798113675,
  1746798113675
FROM Work w
WHERE w.externalId = 500 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_user1',
  w.id,
  w.externalId,
  'user1',
  10,
  1746798114133,
  1746798114133
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_user3',
  w.id,
  w.externalId,
  'user3',
  10,
  1746798114133,
  1746798114133
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746798114133,
  1746798114133
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_user5',
  w.id,
  w.externalId,
  'user5',
  9,
  1746798114133,
  1746798114133
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_user6',
  w.id,
  w.externalId,
  'user6',
  10,
  1746798114133,
  1746798114133
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_user7',
  w.id,
  w.externalId,
  'user7',
  9,
  1746798114133,
  1746798114133
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_user8',
  w.id,
  w.externalId,
  'user8',
  9,
  1746798114133,
  1746798114133
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746798114133,
  1746798114133
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_766798_user5',
  w.id,
  w.externalId,
  'user5',
  8,
  1746798114593,
  1746798114593
FROM Work w
WHERE w.externalId = 766798 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_300669_user1',
  w.id,
  w.externalId,
  'user1',
  7.5,
  1746798115065,
  1746798115065
FROM Work w
WHERE w.externalId = 300669 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_300669_user7',
  w.id,
  w.externalId,
  'user7',
  8,
  1746798115065,
  1746798115065
FROM Work w
WHERE w.externalId = 300669 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_539033_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798115523,
  1746798115523
FROM Work w
WHERE w.externalId = 539033 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1913_user5',
  w.id,
  w.externalId,
  'user5',
  9,
  1746798115982,
  1746798115982
FROM Work w
WHERE w.externalId = 1913 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_603_user6',
  w.id,
  w.externalId,
  'user6',
  9,
  1746798116567,
  1746798116567
FROM Work w
WHERE w.externalId = 603 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_603_user9',
  w.id,
  w.externalId,
  'user9',
  10,
  1746798116567,
  1746798116567
FROM Work w
WHERE w.externalId = 603 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_839369_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798117027,
  1746798117027
FROM Work w
WHERE w.externalId = 839369 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_62215_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746798117501,
  1746798117501
FROM Work w
WHERE w.externalId = 62215 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_62215_user6',
  w.id,
  w.externalId,
  'user6',
  9.5,
  1746798117501,
  1746798117501
FROM Work w
WHERE w.externalId = 62215 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_19_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746798118083,
  1746798118083
FROM Work w
WHERE w.externalId = 19 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_19_user6',
  w.id,
  w.externalId,
  'user6',
  8.5,
  1746798118083,
  1746798118083
FROM Work w
WHERE w.externalId = 19 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1050035_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798118666,
  1746798118666
FROM Work w
WHERE w.externalId = 1050035 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1018_user1',
  w.id,
  w.externalId,
  'user1',
  10,
  1746798119128,
  1746798119128
FROM Work w
WHERE w.externalId = 1018 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1018_user3',
  w.id,
  w.externalId,
  'user3',
  10,
  1746798119128,
  1746798119128
FROM Work w
WHERE w.externalId = 1018 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1018_user6',
  w.id,
  w.externalId,
  'user6',
  9,
  1746798119128,
  1746798119128
FROM Work w
WHERE w.externalId = 1018 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1018_user7',
  w.id,
  w.externalId,
  'user7',
  10,
  1746798119128,
  1746798119128
FROM Work w
WHERE w.externalId = 1018 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1018_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746798119128,
  1746798119128
FROM Work w
WHERE w.externalId = 1018 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_9589_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746798119613,
  1746798119613
FROM Work w
WHERE w.externalId = 9589 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_258216_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746798120195,
  1746798120195
FROM Work w
WHERE w.externalId = 258216 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_249397_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746798120776,
  1746798120776
FROM Work w
WHERE w.externalId = 249397 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_26955_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798121464,
  1746798121464
FROM Work w
WHERE w.externalId = 26955 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_496243_user1',
  w.id,
  w.externalId,
  'user1',
  10,
  1746798121939,
  1746798121939
FROM Work w
WHERE w.externalId = 496243 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_496243_user3',
  w.id,
  w.externalId,
  'user3',
  9,
  1746798121939,
  1746798121939
FROM Work w
WHERE w.externalId = 496243 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_496243_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746798121939,
  1746798121939
FROM Work w
WHERE w.externalId = 496243 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_496243_user6',
  w.id,
  w.externalId,
  'user6',
  8.5,
  1746798121939,
  1746798121939
FROM Work w
WHERE w.externalId = 496243 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_496243_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746798121939,
  1746798121939
FROM Work w
WHERE w.externalId = 496243 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_976893_user1',
  w.id,
  w.externalId,
  'user1',
  9,
  1746798122412,
  1746798122412
FROM Work w
WHERE w.externalId = 976893 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_976893_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746798122412,
  1746798122412
FROM Work w
WHERE w.externalId = 976893 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_635731_user1',
  w.id,
  w.externalId,
  'user1',
  7.5,
  1746798123786,
  1746798123786
FROM Work w
WHERE w.externalId = 635731 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_792307_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798124441,
  1746798124441
FROM Work w
WHERE w.externalId = 792307 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_792307_user4',
  w.id,
  w.externalId,
  'user4',
  9.5,
  1746798124441,
  1746798124441
FROM Work w
WHERE w.externalId = 792307 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_792307_user6',
  w.id,
  w.externalId,
  'user6',
  8.5,
  1746798124441,
  1746798124441
FROM Work w
WHERE w.externalId = 792307 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_912480_user1',
  w.id,
  w.externalId,
  'user1',
  9,
  1746798125007,
  1746798125007
FROM Work w
WHERE w.externalId = 912480 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_912480_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746798125007,
  1746798125007
FROM Work w
WHERE w.externalId = 912480 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_505192_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798125509,
  1746798125509
FROM Work w
WHERE w.externalId = 505192 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_505192_user5',
  w.id,
  w.externalId,
  'user5',
  8,
  1746798125509,
  1746798125509
FROM Work w
WHERE w.externalId = 505192 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_833339_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798126658,
  1746798126658
FROM Work w
WHERE w.externalId = 833339 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_833339_user7',
  w.id,
  w.externalId,
  'user7',
  8,
  1746798126658,
  1746798126658
FROM Work w
WHERE w.externalId = 833339 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_586461_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798127133,
  1746798127133
FROM Work w
WHERE w.externalId = 586461 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1008042_user1',
  w.id,
  w.externalId,
  'user1',
  8,
  1746798127600,
  1746798127600
FROM Work w
WHERE w.externalId = 1008042 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13855_user1',
  w.id,
  w.externalId,
  'user1',
  8.5,
  1746798128557,
  1746798128557
FROM Work w
WHERE w.externalId = 13855 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_306947_user1',
  w.id,
  w.externalId,
  'user1',
  7.5,
  1746798129051,
  1746798129051
FROM Work w
WHERE w.externalId = 306947 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_306947_user7',
  w.id,
  w.externalId,
  'user7',
  6,
  1746798129051,
  1746798129051
FROM Work w
WHERE w.externalId = 306947 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_306947_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746798129051,
  1746798129051
FROM Work w
WHERE w.externalId = 306947 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_301365_user1',
  w.id,
  w.externalId,
  'user1',
  9.5,
  1746798129703,
  1746798129703
FROM Work w
WHERE w.externalId = 301365 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_301365_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746798129703,
  1746798129703
FROM Work w
WHERE w.externalId = 301365 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_301365_user6',
  w.id,
  w.externalId,
  'user6',
  10,
  1746798129703,
  1746798129703
FROM Work w
WHERE w.externalId = 301365 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_301365_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746798129703,
  1746798129703
FROM Work w
WHERE w.externalId = 301365 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_269776_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746798130161,
  1746798130161
FROM Work w
WHERE w.externalId = 269776 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_310131_user1',
  w.id,
  w.externalId,
  'user1',
  9,
  1746798130620,
  1746798130620
FROM Work w
WHERE w.externalId = 310131 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_310131_user7',
  w.id,
  w.externalId,
  'user7',
  9,
  1746798130620,
  1746798130620
FROM Work w
WHERE w.externalId = 310131 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_310131_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746798130620,
  1746798130620
FROM Work w
WHERE w.externalId = 310131 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_7345_user1',
  w.id,
  w.externalId,
  'user1',
  10,
  1746798131081,
  1746798131081
FROM Work w
WHERE w.externalId = 7345 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_7345_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746798131081,
  1746798131081
FROM Work w
WHERE w.externalId = 7345 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_7345_user5',
  w.id,
  w.externalId,
  'user5',
  9,
  1746798131081,
  1746798131081
FROM Work w
WHERE w.externalId = 7345 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_7345_user6',
  w.id,
  w.externalId,
  'user6',
  9,
  1746798131081,
  1746798131081
FROM Work w
WHERE w.externalId = 7345 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_627_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746798131653,
  1746798131653
FROM Work w
WHERE w.externalId = 627 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_627_user6',
  w.id,
  w.externalId,
  'user6',
  8,
  1746798131653,
  1746798131653
FROM Work w
WHERE w.externalId = 627 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_627_user9',
  w.id,
  w.externalId,
  'user9',
  7.5,
  1746798131653,
  1746798131653
FROM Work w
WHERE w.externalId = 627 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1391_user5',
  w.id,
  w.externalId,
  'user5',
  9,
  1746798132123,
  1746798132123
FROM Work w
WHERE w.externalId = 1391 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38473_user1',
  w.id,
  w.externalId,
  'user1',
  8.5,
  1746798132615,
  1746798132615
FROM Work w
WHERE w.externalId = 38473 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38473_user3',
  w.id,
  w.externalId,
  'user3',
  9,
  1746798132615,
  1746798132615
FROM Work w
WHERE w.externalId = 38473 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38473_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746798132615,
  1746798132615
FROM Work w
WHERE w.externalId = 38473 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38473_user6',
  w.id,
  w.externalId,
  'user6',
  9,
  1746798132615,
  1746798132615
FROM Work w
WHERE w.externalId = 38473 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_219_user5',
  w.id,
  w.externalId,
  'user5',
  9,
  1746798133213,
  1746798133213
FROM Work w
WHERE w.externalId = 219 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_744857_user1',
  w.id,
  w.externalId,
  'user1',
  6,
  1746798133669,
  1746798133669
FROM Work w
WHERE w.externalId = 744857 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_783675_user5',
  w.id,
  w.externalId,
  'user5',
  10,
  1746798134128,
  1746798134128
FROM Work w
WHERE w.externalId = 783675 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_783675_user6',
  w.id,
  w.externalId,
  'user6',
  10,
  1746798134128,
  1746798134128
FROM Work w
WHERE w.externalId = 783675 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_783675_user8',
  w.id,
  w.externalId,
  'user8',
  10,
  1746798134128,
  1746798134128
FROM Work w
WHERE w.externalId = 783675 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_504253_user5',
  w.id,
  w.externalId,
  'user5',
  10,
  1746798134590,
  1746798134590
FROM Work w
WHERE w.externalId = 504253 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_504253_user8',
  w.id,
  w.externalId,
  'user8',
  10,
  1746798134590,
  1746798134590
FROM Work w
WHERE w.externalId = 504253 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_504253_user13',
  w.id,
  w.externalId,
  'user13',
  9,
  1746798134590,
  1746798134590
FROM Work w
WHERE w.externalId = 504253 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_378064_user5',
  w.id,
  w.externalId,
  'user5',
  9,
  1746798135056,
  1746798135056
FROM Work w
WHERE w.externalId = 378064 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_378064_user8',
  w.id,
  w.externalId,
  'user8',
  10,
  1746798135056,
  1746798135056
FROM Work w
WHERE w.externalId = 378064 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_149_user5',
  w.id,
  w.externalId,
  'user5',
  10,
  1746798135555,
  1746798135555
FROM Work w
WHERE w.externalId = 149 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_149_user6',
  w.id,
  w.externalId,
  'user6',
  9,
  1746798135555,
  1746798135555
FROM Work w
WHERE w.externalId = 149 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_652837_user5',
  w.id,
  w.externalId,
  'user5',
  9.5,
  1746798136012,
  1746798136012
FROM Work w
WHERE w.externalId = 652837 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_372058_user5',
  w.id,
  w.externalId,
  'user5',
  9,
  1746798136473,
  1746798136473
FROM Work w
WHERE w.externalId = 372058 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_372058_user6',
  w.id,
  w.externalId,
  'user6',
  9.5,
  1746798136473,
  1746798136473
FROM Work w
WHERE w.externalId = 372058 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_372058_user8',
  w.id,
  w.externalId,
  'user8',
  10,
  1746798136473,
  1746798136473
FROM Work w
WHERE w.externalId = 372058 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_372058_user13',
  w.id,
  w.externalId,
  'user13',
  9,
  1746798136473,
  1746798136473
FROM Work w
WHERE w.externalId = 372058 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_916224_user5',
  w.id,
  w.externalId,
  'user5',
  9,
  1746798136943,
  1746798136943
FROM Work w
WHERE w.externalId = 916224 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_916224_user8',
  w.id,
  w.externalId,
  'user8',
  9,
  1746798136943,
  1746798136943
FROM Work w
WHERE w.externalId = 916224 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_110420_user5',
  w.id,
  w.externalId,
  'user5',
  8,
  1746798137402,
  1746798137402
FROM Work w
WHERE w.externalId = 110420 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_110420_user6',
  w.id,
  w.externalId,
  'user6',
  10,
  1746798137402,
  1746798137402
FROM Work w
WHERE w.externalId = 110420 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_916192_user5',
  w.id,
  w.externalId,
  'user5',
  8.5,
  1746798137860,
  1746798137860
FROM Work w
WHERE w.externalId = 916192 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_615165_user5',
  w.id,
  w.externalId,
  'user5',
  8,
  1746798138320,
  1746798138320
FROM Work w
WHERE w.externalId = 615165 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_71883_user5',
  w.id,
  w.externalId,
  'user5',
  8,
  1746798138812,
  1746798138812
FROM Work w
WHERE w.externalId = 71883 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_530079_user5',
  w.id,
  w.externalId,
  'user5',
  7.5,
  1746798139273,
  1746798139273
FROM Work w
WHERE w.externalId = 530079 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_364111_user5',
  w.id,
  w.externalId,
  'user5',
  7.5,
  1746798139732,
  1746798139732
FROM Work w
WHERE w.externalId = 364111 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_315465_user5',
  w.id,
  w.externalId,
  'user5',
  8,
  1746798140308,
  1746798140308
FROM Work w
WHERE w.externalId = 315465 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_315465_user6',
  w.id,
  w.externalId,
  'user6',
  7,
  1746798140308,
  1746798140308
FROM Work w
WHERE w.externalId = 315465 AND w.type = 'movie';