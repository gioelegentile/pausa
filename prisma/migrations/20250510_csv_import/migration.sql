-- Script generato automaticamente da csv-to-sql.ts
-- Data: 1746894192948

-- Assicurati che questi utenti esistano nel database
-- Se non esistono, inseriscili
INSERT OR IGNORE INTO User (id, email, name) VALUES 
('bf3989da-315e-5cf6-a218-b670f3406e8e', 'gioelegentile.it@gmail.com', 'Gioele Gentile'),
('3c025345-605f-5ed1-ad22-cc3448dffbe9', 'andonie.thunder@gmail.com', 'Antonio Pace'),
('user3', 'nigrogianmarco@gmail.com', 'Gianmarco Nigro'),
('user4', 'ilariapetruccini@gmail.com', 'Ilaria Petruccini'),
('2e1b9659-f640-5ea7-8748-0524f2c71888', 'triofollek@gmail.com', 'Paul Codio (Paul Codio)'),
('3bb8798f-1ff0-59c3-9da8-1cfa2094c876', 'marco.digirolamo92@gmail.com', 'Marco Di Girolamo'),
('8bde425d-94ee-5042-afa2-28340eaec3eb', 'restanicola92@gmail.com', 'Nicola Resta'),
('user8', 'francipavone997@gmail.com', 'Francesco Pavone'),
('user9', 'vincenzo.vurro@gmail.com', 'Vincenzo Vurro'),
('9931aaec-16c2-5cf9-a135-44afbdbaa1e4', 'Solidorostefano@gmail.com', 'Stefano Solidoro'),
('user13', 'alessio.perro10@gmail.com', 'Alessio Perro'),
('3875feef-943f-5e0a-8ce5-e9a71e97f358', 'Francesco.tarallo93@gmail.com', 'Francesco Tarallo');

-- Inserisci le opere (Works)
INSERT INTO Work (externalId, type, title, director, description, imageUrl, releaseDate, genres, createdAt)
VALUES
(4552, 'movie', 'Two Sisters', 'Kim Jee-woon', 'Dopo aver passato un lungo periodo in un istituto per malattie mentali a seguito della morte della madre, le due sorelle Bae Soo-yeon e Bae Soo-mi, fanno ritorno a casa, dove ad attenderle, oltre al padre, c''è anche la sua nuova compagna, la giovane Eun-Joo. Nonostante le apparenti buone intenzioni iniziali della donna nei confronti delle ragazze, il clima fra loro e la matrigna è tesissimo. Inoltre in casa, sembra esserci una presenza inquietante, di cui solo le ragazze sembrano accorgersi. Il padre, dal canto suo, sembra ignorare completamente le richieste d''aiuto delle figlie, come se intorno a lui non stesse accadendo assolutamente nulla.', '/5gWqetgQaY6MHEyNeLngT3w0jSj.jpg', '1055462400000', 'Dramma,Horror,Mistero', '1746894160428'),
(487631, 'movie', 'Adorazione', 'Fabrice Du Welz', 'Il dodicenne Paul si innamora di Gloria, un''adolescente schizofrenica che è in cura nell''istituto psichiatrico in cui lavora sua madre. Paul decide allora di aiutare gloria a fuggire dopo aver commesso un crimine. Insieme, intraprenderanno un viaggio che rivelerà quanto pericolose siano la pazzia di Gloria e la devozione di Paul nei suoi confronti.', '/f95LICCPR6zXckUE5L9HMfuXtor.jpg', '1579651200000', 'Dramma', '1746894160628'),
(348, 'movie', 'Alien', 'Ridley Scott', 'L''astronave Nostromo sbarca su un pianeta da cui proviene un SOS, ma la colonia sembra essere disabitata. I coloni sono stati in realtà sterminati da una razza aliena che ha trasformato la base in una gigantesca covata.', '/uWJJHA9YOYxR4wk12QtubfW9aEf.jpg', '296438400000', 'Horror,Fantascienza', '1746894160788'),
(7857, 'movie', 'Amarcord', 'Federico Fellini', 'La vicenda, ambientata dall''inizio della primavera del 1932 all''inizio della primavera del 1933 (riferimento certo visto la corsa della VII edizione della Mille Miglia), in una Rimini onirica ricostruita a Cinecittà, come la ricordava Fellini in sogno, narra la vita nell''antico borgo (o e'' borg, come a Rimini conoscono il quartiere di San Giuliano) e dei suoi più o meno particolari abitanti: le feste paesane, le adunate del "Sabato fascista", la scuola, i signori di città, i negozianti, il suonatore cieco, la donna procace ma un po'' attempata alla ricerca di un marito, il venditore ambulante, il matto, l''avvocato, quella che va con tutti, la tabaccaia dalle forme giunoniche, i professori di liceo, i fascisti, gli antifascisti e il magico conte di Lovignano, ma soprattutto i giovani del paese; adolescenti presi da una prepotente "esplosione sessuale".', '/cRqiuvomxe1ZxXaqsYHBg6PXcyK.jpg', '125020800000', 'Commedia,Dramma', '1746894160958'),
(915935, 'movie', 'Anatomia di una caduta', 'Justine Triet', 'Sandra, Samuel e il loro figlio ipovedente Daniel vivono da un anno in una remota località di montagna. Quando Samuel viene trovato morto fuori casa, viene aperta un''indagine per morte in circostanze sospette. Nell''incertezza, Sandra viene incriminata: è stato un suicidio o un omicidio? Un anno dopo Daniel assiste al processo della madre, una vera e propria dissezione del rapporto tra i genitori.', '/kSbp0b7QEB8xcyW0YK6RcdWLhG0.jpg', '1692748800000', 'Thriller,Mistero,Crime', '1746894161131'),
(340666, 'movie', 'Animali notturni', 'Tom Ford', 'Susan riceve dall''ex marito un manoscritto su cui l''uomo vuole un''opinione. In quello che potrebbe essere un futuro libro, si racconta la storia di una vacanza destinata a trasformarsi in tragedia. Mentre si lascia prendere dallo scritto, Susan si ritrova a ricordare il suo primo matrimonio e ad affrontare alcune oscure verità che la riguardano.', '/vXuLuft5x9vvzfePGGzANjSJf9L.jpg', '1478217600000', 'Dramma,Thriller', '1746894161288'),
(17609, 'movie', 'Antichrist', 'Lars von Trier', 'Il film, che riprende la teoria secondo la quale il mondo sarebbe stato creato da Satana e non da Dio, vede una coppia che, in seguito alla morte del figlio caduto da una finestra, cerca un po'' di pace andando a trascorrere un breve periodo di vacanza nei boschi, provando così a recuperare il loro rapporto, caduto in una crisi profonda. Le esperienze di cui saranno testimoni, però, sono quanto di più terrificante ed inumano si possa mai immaginare...', '/1npvm5xly8UdxWiG5Gh1GB8Ay15.jpg', '1242777600000', 'Dramma,Horror,Thriller', '1746894161458'),
(185, 'movie', 'Arancia meccanica', 'Stanley Kubrick', 'Alex è un giovane senza arte né parte, figlio di proletari e dedito a furti, stupri e omicidi. Fa capo a una banda di spostati, denominati drughi. Dopo aver usato violenza alla moglie di uno scrittore finisce in carcere. Viene sottoposto ad angherie ma si fa amico un prete. Pur di essere scarcerato accetta il "trattamento lodovico", che consiste nell''assistere a filmati di violenza. Quando esce scopre che i genitori hanno subaffittato la sua stanza. Senza poter reagire, dovrà subire violenza da alcuni mendicanti vendicativi, dai drughi diventati poliziotti e dallo scrittore che ha perso la moglie e che ora si trova su una sedia a rotelle. Tenta il suicidio e all''ospedale riceve una visita di cortesia da parte del primo ministro.', '/vJS2cN4tyJu1OOhastxW85AMzt0.jpg', '61948800000', 'Fantascienza,Crime', '1746894161619'),
(714888, 'movie', 'Argentina 1985', 'Santiago Mitre', 'Ispirato alla vera storia dei procuratori Julio Strassera e Luis Moreno Ocampo, che nel 1985 osarono indagare e perseguire i responsabili della fase più sanguinosa della dittatura militare argentina. Senza lasciarsi intimidire dall’ancora notevole influenza che l’esercito aveva sulla loro fragile, nuova democrazia, Strassera e Moreno Ocampo formarono un giovane team legale di improbabili eroi per ingaggiare la loro battaglia di Davide contro Golia. Costantemente minacciati, insieme alle loro famiglie, lottarono contro il tempo per dare giustizia alle vittime della giunta militare.', '/bfXS8ux77Qdvvn8daOMzIv0AWGo.jpg', '1664409600000', 'Dramma,Storia,Crime', '1746894161779'),
(25649, 'movie', 'Bad Guy', 'Kim Ki-duk', 'Siamo al parco, e un uomo si avventa su una ragazza per darle un bacio. Lei si ribella, urla. Il suo fidanzato rimane esterrefatto. L''arrivo delle forze di un gruppo di militari, allontana il molestatore. Kim Ki-Duk ci introduce così, il “Bad guy” Han-Gi e la apparentemente angelica Sun-Hwa. I due si incontreranno tempo dopo in posizioni antitetiche. Lui a gestire un bordello negli “slums” di Seul, lei come prostituta alle prime armi.', '/aacdUq1YHwbKPmuL0GaNiwVYhhr.jpg', '1010707200000', 'Dramma,Thriller,Romance', '1746894161958'),
(798286, 'movie', 'Beau ha paura', 'Ari Aster', 'Beau è un uomo paranoico che non ha mai conosciuto il padre e ha un rapporto tormentato con la madre. Quando scopre che la madre è morta, Beau intraprende un viaggio verso casa che ben presto si trasforma in un’odissea surreale.', '/xixQ5abpEF0qyvuTcRsND0tmwsv.jpg', '1681430400000', 'Commedia,Avventura,Fantasy', '1746894162129'),
(45958, 'movie', 'Biutiful', 'Alejandro González Iñárritu', 'Questa è la storia di un uomo in caduta libera. Sulla strada verso la redenzione, l''oscurità illumina la sua via. In comunicazione con la vita nell''aldilà, Uxbal è un eroe tragico e padre di due figli che sente il pericolo della morte, lotta contro una realtà corrotta e un destino che lavora contro di lui per perdonare, per amare e per sempre.', '/2RGgtKbSzhuUvQQmWpEdOfHsAu2.jpg', '1287532800000', 'Dramma', '1746894162298'),
(335984, 'movie', 'Blade Runner 2049', 'Denis Villeneuve', 'Trent''anni dopo gli eventi del primo film, un nuovo blade runner, l''Agente K della Polizia di Los Angeles  scopre un segreto sepolto da tempo che ha il potenziale di far precipitare nel caos quello che è rimasto della società. La scoperta di K lo spinge verso la ricerca di Rick Deckard, un ex-blade runner della polizia di Los Angeles sparito nel nulla da 30 anni.', '/sPMX3MNTB0DqC6iCveIGKZN5AyN.jpg', '1507075200000', 'Fantascienza,Dramma', '1746894162462'),
(68, 'movie', 'Brazil', 'Terry Gilliam', 'Sam Lowry è un tecnocrate in una società futuristica che è inutilmente contorta e inefficiente. Sogna una vita dove può volare via dalla tecnologia, dalla burocrazia opprimente e trascorrere l''eternità con la donna dei suoi sogni. Cercando di correggere l''arresto illegittimo di Harry Buttle, Lowry incontra la donna che insegue sempre nei suoi sogni, Jill Layton. Nel frattempo, la burocrazia lo ha indicato come responsabile di una serie di attentati terroristici, e le vite di Sam e Jill sono in pericolo.', '/oyF7GCllibKOR346S1lPzVaspT7.jpg', '477705600000', 'Commedia,Fantascienza', '1746894162620'),
(736732, 'movie', 'Le buone stelle - Broker', 'Hirokazu Kore-eda', 'Una vicenda che ruota intorno alle cosiddette "baby boxes": i luoghi dove i genitori coreani abbandonano i bambini che hanno messo al mondo ma che non possono o non vogliono tenere con sé, in modo che possano essere adottati e cresciuti da qualcun altro.', '/kcOzTA7897Rrrbkazt6NUQklK73.jpg', '1654646400000', 'Dramma,Commedia,Crime', '1746894162779'),
(491584, 'movie', 'Burning - L''amore brucia', 'Lee Chang-dong', 'Jong-su è un aspirante scrittore che vive di espedienti. Quando incontra per caso Hae-mi non la riconosce, ma la ragazza si ricorda di lui e lo persuade a prendersi cura del suo gatto. Jong-su si innamora, ma Hae-mi parte per l''Africa: al suo ritorno è accompagnata dal misterioso e facoltoso Ben.', '/3N9guRAk61NqLO7lECy8a5Gn2PA.jpg', '1526515200000', 'Mistero,Dramma,Thriller', '1746894162938'),
(1026227, 'movie', 'C''è ancora domani', 'Paola Cortellesi', 'È primavera e tutta la famiglia è in fermento per l''imminente fidanzamento dell''amata primogenita Marcella (Romana Maggiora Vergano), che, dal canto suo, spera solo di sposarsi in fretta con un bravo ragazzo di ceto borghese, Giulio (Francesco Centorame), e liberarsi finalmente di quella famiglia imbarazzante.', '/hc9SHN0vB6iyr6MBYI6bKrpDHvJ.jpg', '1698278400000', 'Dramma,Commedia,Storia', '1746894163089'),
(420187, 'movie', 'Fuga dall''Albania', 'Mario Salieri', 'The story begins in Albania where the heroine, Helen, suffers the abuse of her father, a former member of the Albanian Communist Militia. Troubling and extreme events in her life soon cause Helen to flee her homeland for Florence, Italy where she meets up with her friend Sylvia who works as a maid for a wealthy family. She soon learns that her boyfriend in Albania has been arrested for killing her cruel father. Though at first desperate to return home to help, Helen soon forgets her boyfriend''s plight as she is seduced into a wicked life of vice and perversion by the wealthy family with whom she is staying. Helen finds herself spinning out of control in a frenzied cinematic vortex of sex, beer and manipulation. Helen does eventually return home to Albania, but only to discover there, her own erotic destiny.', '/y3ksQu2LHFwwCYHJh1I5JiuTlyw.jpg', '883612800000', '', '1746894163249'),
(997294, 'movie', 'Close Your Eyes', 'Víctor Erice', 'Years after his mysterious disappearance, Julio Arenas, a famous Spanish actor, is back in the news thanks to a television program.', '/czUKm6JUutIg55EcRJ7CRAAzFMU.jpg', '1692144000000', 'Dramma,Mistero', '1746894163419'),
(16, 'movie', 'Dancer in the Dark', 'Lars von Trier', 'E'' il 1964, Selma è emigrata con suo figlio dall''Europa dell''Est in America. Lavora notte e giorno per salvare suo figlio dalla stessa malattia che affligge lei e che la renderà cieca. Il segreto della sua energia di vivere è il suo amore per i musical. Quando la vita è troppo dura, le basta fingere di trovarsi nel meraviglioso mondo dei musical, dove riesce a trovare la felicità che il mondo non le riesce a dare.', '/yi3TJZewx5QbmaqLm6mPlZ3hEwj.jpg', '967766400000', 'Dramma,Crime', '1746894163579'),
(774370, 'movie', 'Dog Man', 'Peter Hastings', 'Un cane poliziotto e il suo padrone, un agente di polizia umano, vengono feriti sul lavoro. Uno strampalato intervento chirurgico fonde i due e salva loro la vita. Così nasce Dog Man, che ha giurato di proteggere e servire, ma anche di giocare a riporto, sedersi e rotolarsi. Con questa nuova identità, si sforza di piacere al capo e fermare le trame malvagie del supercriminale felino Gino il gatto.', '/eP5w2Kxz4KVGSqXTmbTEQemC0Wv.jpg', '1737676800000', 'Famiglia,Commedia,Avventura,Animazione', '1746894163749'),
(38810, 'movie', 'Dogtooth', 'Yorgos Lanthimos', 'Una famiglia fa vivere i propri figli segregati nella propria villetta. Essi sono completamente isolati dal mondo reale, un mondo estremamente diverso da quello posticcio ed assurdo in cui si trovano dalla loro nascita. Christina, una collega del padre che l''uomo fa prostituire per dare una vita sessuale forzata al figlio, sarà la molla che porterà la sorella maggiore ad esplorare una parte della verità negata e a sconvolgere i malati equilibri della famiglia.', '/vInCRfJLpQ05OCgwjj01zyZdOHe.jpg', '1256169600000', 'Dramma', '1746894163913'),
(134374, 'movie', 'Pain & Gain - Muscoli e denaro', 'Michael Bay', 'Black comedy dall''ambientazione decisamente insolita, ma ispirata ad una storia vera, quella della "Sun Gym Gang" di Miami. Nel mondo del culturismo e del traffico di steroidi i protagonisti, interpretati da Mark Wahlberg e Dwayne Johnson, si troveranno coinvolti in un affare di estorsione e rapimento che non andrà per il verso giusto.', '/gWkhKFF5NGu2bB3pR1AI7eRjARU.jpg', '1366243200000', 'Commedia,Crime,Azione', '1746894164080'),
(141, 'movie', 'Donnie Darko', 'Richard Kelly', 'Il liceale Donnie Darko, in preda ad un attacco di insonnia, esce dalla casa dei genitori e incontra uno spaventoso coniglio gigante di nome Frank, che gli dice che il mondo finirà tra 28 giorni, 6 ore, 42 minuti e 12 secondi.', '/rJPGEGIlFSGM8TDKr2ZPO5xhJH9.jpg', '979862400000', 'Fantasy,Dramma,Mistero', '1746894164234'),
(758866, 'movie', 'Drive My Car', 'Ryūsuke Hamaguchi', 'Sebbene non sia ancora in grado di riprendersi dalla scomparsa della moglie, l''attore e regista teatrale Yusuke Kafusu accetta di mettere in scena Zio Vanja a un festival di Hiroshima. Qui, conosce Misaki, una giovane riservata che le è stata assegnata come autista. Nel corso dei loro spostamenti, la crescente sincerità delle loro conversazioni costringe entrambi ad affrontare il loro passato.', '/bhW5CK4vrrGB3CemMrtwwkU9vo9.jpg', '1629244800000', 'Dramma', '1746894164400'),
(181886, 'movie', 'Enemy', 'Denis Villeneuve', 'Jake Gyllenhaal è un insegnante di storia depresso che un giorno scopre all''interno di un film la presenza di un attore totalmente identico a se stesso, così com''era cinque anni prima. Parte quindi alla ricerca dell''uomo misterioso.', '/vf40tyDRKZsBmaLsYeopzfFLzLx.jpg', '1394755200000', 'Thriller,Mistero', '1746894164562'),
(34647, 'movie', 'Enter the Void', 'Gaspar Noé', 'Oscar e sua sorella Linda sono appena arrivati a Tokyo. Oscar è un piccolo spacciatore e Linda lavora come spogliarellista in un nightclub. Una notte, Oscar cade in una retata della polizia e viene ferito a morte in una sparatoria. Mentre è disteso a terra morente, la sua anima, fedele alla sorella a cui aveva promesso che non l''avrebbe mai abbandonata, vaga per la città rifiutando di lasciare il mondo in cui ha vissuto. L''anima così vaga per Tokyo, le sue visioni divengono sempre più distorte, sempre più vicine ad un incubo. Il passato, il presente e il futuro si mischiano in un''unica allucinazione.', '/8wDYwDgyZcUyuxXBmeIq9qo98bm.jpg', '1273017600000', 'Fantasy,Dramma', '1746894164730'),
(985, 'movie', 'Eraserhead - La mente che cancella', 'David Lynch', 'Henry Spencer vive da solo in uno squallido appartamento fra le allucinazioni della sua mente malata. Durante un grottesco pranzo in casa dei suoceri, apprende che la sua ragazza Mary è incinta, e viene obbligato a sposarla. Nascerà una creatura orrenda e frignante che la madre, disgustata, abbandona alle cure di Henry.', '/cXunrMGW8maQf5rLoKTS7Zmi3hv.jpg', '244252800000', 'Horror,Fantasy', '1746894164893'),
(38, 'movie', 'Se mi lasci ti cancello', 'Michel Gondry', 'Joel e Clementine sono una coppia molto innamorata. Un giorno però, la ragazza, stanca della sua relazione ormai in fase di declino, decide, mediante un esperimento scientifico, di farsi asportare dalla mente la parte relativa alla storia con Joel. Il giovane, una volta venuto a conoscenza di questo fatto, sceglie di fare altrettanto ma durante il procedimento cambia idea.', '/uDuAYpBfFQvFMnlt2w8xUUZiWrr.jpg', '1079654400000', 'Fantascienza,Dramma,Romance', '1746894165051'),
(1156125, 'movie', 'Il male non esiste', 'Ryūsuke Hamaguchi', 'Takumi e la figlia Hana vivono nel villaggio di Mizubiki, nei pressi di Tokyo. Come altre generazioni prima di loro, conducono una vita modesta assecondando i cicli e l’ordine della natura. Un giorno, gli abitanti del villaggio vengono a conoscenza del progetto di costruire, vicino alla casa di Takumi, un glamping, inteso a offrire ai residenti delle città una piacevole fonte di “evasione” nella natura. Quando due funzionari di Tokio giungono al villaggio per tenere un incontro, diventa chiaro che il progetto avrà un impatto negativo sulla rete idrica locale, e ciò causa il malcontento generale. Le intenzioni contraddittorie dell’agenzia mettono in pericolo sia l’equilibrio ecologico dell’altopiano sia lo stile di vita degli abitanti, con profonde ripercussioni sulla vita di Takumi.', '/8e5Ez58etPqAPv7tNVDXfIZnyVc.jpg', '1701820800000', 'Dramma', '1746894165213'),
(13807, 'movie', 'Exiled', 'Johnnie To', 'Macau, 1998. Chiunque cerca di lucrare nel passaggio dall''amministrazione portoghese a quella cinese. I disillusi killer di professione si domandano dove porterà quasto cammino. In questo scenario, due assassini di Hong Kong giungono a Macau con il compito di uccidere un killer che ha cercato di voltare pagina.', '/gLL3rp1FKrFYdlQvJRCWeEOQXKC.jpg', '1157500800000', 'Azione,Crime,Thriller', '1746894165361'),
(1946, 'movie', 'eXistenZ', 'David Cronenberg', 'eXistenZ, un gioco basato su tecnologie avanzate ideato dai dirigenti della Antenna Research, ha ottenuto un grande successo di pubblico. Dietro il gioco si cela l''ingegno di Allegra Geller, una donna determinata e attraente. Ciò che rende eXistenZ così reale è il fatto che il dispositivo che lo aziona, il game pod, si inserisce direttamente nel sistema nervoso del giocatore tramite un connettore spinale. Ma delle forze anti eXistenZ, che sulla testa di Allegra hanno messo una taglia, sabotano il gioco.', '/hmalPlavAnuun6pzjzg57wKkLhl.jpg', '924048000000', 'Azione,Thriller,Fantascienza', '1746894165561'),
(334536, 'movie', 'February - L''innocenza del male', 'Osgood Perkins', 'Kat (Kiernan Shipka) e Rose (Lucy Boynton) sono due matricole iscritte ad un Istituto cattolico femminile, il Bramford Collage: l''unica cosa che sembrano avere in comune e il fatto di essere le sole due studentesse a non tornare a casa per la pausa di metà semestre. Rose ha inventato una scusa per non fare i bagagli mentre i genitori di Kat sembrerebbero essersi dimenticati di andarla a prendere. Sole, tutt''altro che amiche, le ragazze si ritrovano a vivere una convivenza forzata all''interno di un campus deserto. Alla loro vicenda si affianca quella di Joan (Emma Roberts), giovane donna dal passato oscuro, forse fuggita da un reparto psichiatrico.Quella che doveva essere una settimana contraddistinta principalmente da noia, si trasforma lentamente in un incubo fatto di terrore e sangue…', '/yc74X4ZJYJ2oFkSFFCuYmRtzlMo.jpg', '1490918400000', 'Horror,Mistero', '1746894165721'),
(550, 'movie', 'Fight Club', 'David Fincher', 'Un uomo di trent''anni è insofferente su tutto e la notte non riesce più a dormire. In cerca di qualche luogo dove scaricare la propria ansia si mette a frequentare quei corsi dove gruppi di malati gravi si riuniscono e confessano agli altri le rispettive situazioni. Mentre si lascia andare alla commozione e al pianto di fronte a quello che vede, l''uomo fa la conoscenza prima di Marla Singer poi di Tyler Durden. Lei è una ragazza a sua volta alla deriva, incapace di scelte o decisioni; lui è un tipo deciso e vigoroso con un''idea precisa in testa. Tyler fa saltare per aria l''appartamento dell''uomo e i due vanno a vivere insieme in una casa fatiscente. Deciso a coinvolgerlo nel suo progetto, Tyler lo fa entrare in un ''Fight Club'', uno stanzone sotterraneo dove ci si riunisce per picchiarsi e in questo modo sentirsi di nuovo vivi...', '/rtNLQ8HbPElzEfrHjrzSr07prKT.jpg', '939945600000', 'Dramma', '1746894165891'),
(8088, 'movie', 'Gli abbracci spezzati', 'Pedro Almodóvar', 'Un uomo scrive, vive e ama nell''oscurità. Quattordici anni prima ha sofferto un terribile incidente di macchina nell''isola di Lanzarote. Nell''incidente ha perso non solo la vista, ma anche Lena, la donna della sua vita. Quest''uomo usa due nomi, Harry Caine, ludico pseudonimo con il quale firma i suoi lavori letterari, i racconti e le sceneggiature, e Mateo Blanco, il suo vero nome di battesimo, con il quale vive e firma i film che dirige. Dopo l''incidente Mateo Blanco si riduce al suo pseudonimo, Harry Caine. Se non può più dirigere film si impone di sopravvivere con l''idea che Mateo Blanco è morto a Lanzarote accanto alla sua amata Lena. Nell''attualità, Harry Caine vive grazie alle sceneggiature che scrive e all''aiuto della sua fedele direttrice di produzione di un tempo, Judit Garcia, e di Diego, il figlio di lei, segretario, dattilografo e guida per ciechi...', '/vpdMXqlOyC89ZpMCot7GbP4WWqK.jpg', '1237334400000', 'Dramma,Romance,Thriller', '1746894166075'),
(14537, 'movie', 'Harakiri', 'Masaki Kobayashi', 'Agli inizi del XVII secolo, il ronin (un samurai senza padrone) Hanshiro Tsugumo, si presenta alle porte della casa Iyi. Chiede che, data sua disgrazia, gli sia concesso un luogo dove commettere suicidio rituale. Con l''intento di dissuaderlo, l''intendente gli narra di un altro ronin, presentatosi qualche tempo prima con la stessa richiesta. Ma un''altra verità si cela dietro la ritualità del samurai...', '/or0zUyUJTOI90kvol3OhVluY7nA.jpg', '-230256000000', 'Azione,Dramma,Storia', '1746894166235'),
(103328, 'movie', 'Holy Motors', 'Leos Carax', 'Una giornata dell''esistenza di Monsieur Oscar, che di professione passa da una vita ad un''altra, da un personaggio ad un altro, scortato ad ogni appuntamento da una limousine bianca, guidata lungo le strade di Parigi da Céline, misteriosa signora bionda. Un''esistenza stimolante e distruttiva, che Oscar sostiene di condurre ancora "per la bellezza del gesto", che gli impone di essere creativo ogni volta, e di quel motore dell''azione di cui il mondo sembra sempre più fare a meno.', '/ySZIi7sxQ6OTETlK1qjA1efNozP.jpg', '1341187200000', 'Dramma,Fantasy', '1746894166382'),
(49797, 'movie', 'I Saw the Devil', 'Kim Jee-woon', 'Dopo aver scoperto che la sua fidanzata è stata brutalmente uccisa, l''agente segreto Dae-Hoon è a pezzi. Con l''aiuto di suo suocero, mette a punto un piano per scovare l''assassino e vendicarsi. Presto riesce a identificarlo e lo massacra, senza però ucciderlo. Vuole continuare a provare il gusto di inseguire la sua preda per servirgli una vendetta ancor più dolorosa e spaventosa.', '/zp5NrmYp80axIGiEiYPmm1CW6uH.jpg', '1281571200000', 'Thriller,Horror', '1746894166542'),
(24188, 'movie', 'Il sorpasso', 'Dino Risi', 'Bruno Cortona estroverso e superficiale quarantenne, incontra casualmente, nella Roma spopolata di Ferragosto, lo studente universitario Roberto Mariani, timido e studioso, e lo convince ad unirsi a lui per una scorribanda automobilistica. Sono due temperamenti diversissimi, e il giovane prova per il suo occasionale compagno un misto di repulsione e di attrazione.', '/9vumJKydNxcFtcFNYPIvFeHXVBQ.jpg', '-223257600000', 'Dramma,Commedia', '1746894166702'),
(2654, 'movie', 'Il seme della follia', 'John Carpenter', 'Trent viene ingaggiato dall''editore Harglow per ritrovare Sutter Cane, scrittore di libri horror di successo. Tuttavia Trent è convinto che la presunta scomparsa dello scrittore possa essere una trovata pubblicitaria per lanciare l''uscita del nuovo libro. Prima di partire alla ricerca di Cane, Trent legge i suoi libri (che in qualche modo lo colpiscono) e, ricomponendo le relative copertine, scopre che Cane dovrebbe trovarsi in una remota cittadina del New England, Hobb''s End, che si credeva essere solo un luogo di finzione dei suoi romanzi. Trent e l''assistente di Harglow raggiungono Hobb''s End, dove la finzione e la realtà diventano difficili da distinguere: accadono eventi soprannaturali, probabilmente dovuti alla lettura di uno dei libri di Sutter Cane, che porteranno l''investigatore ad uno stato di pazzia incontrollabile.', '/wthT7M6IyCY4NnyNcxUpAqQOprn.jpg', '791769600000', 'Horror,Mistero', '1746894166861'),
(26451, 'movie', 'Indagine su un cittadino al di sopra di ogni sospetto', 'Elio Petri', 'Il capo della Squadra Omicidi di Roma taglia la gola di Augusta Terzi, sua masochista amante, e semina volutamente tracce e indizi su sé stesso per dimostrare che, come garante della Legge e rappresentante del Potere, è al di sopra di ogni sospetto. Uscito indenne dalle indagini, si autoaccusa.', '/5eUBcyilUy0sy6AcqNpjgXQX4A4.jpg', '24883200000', 'Dramma,Thriller', '1746894167021'),
(781099, 'movie', 'Inexorable', 'Fabrice Du Welz', 'Alla disperata ricerca di ispirazione per il romanzo successivo al suo bestseller "Inexorable", Marcel Bellmer si trasferisce con la famiglia nella vecchia villa di famiglia della moglie.', '/dBccFlBYLXewO8x9ptuKM6lHCDI.jpg', '1648684800000', 'Thriller', '1746894167181'),
(937746, 'movie', 'Io capitano', 'Matteo Garrone', 'Una fiaba omerica che racconta il viaggio avventuroso di due giovani, Seydou e Moussa, che lasciano Dakar per raggiungere l’Europa. Un’Odissea contemporanea attraverso le insidie del deserto, i pericoli del mare e le ambiguità dell’essere umano.', '/iP6WtSOhlClcIxRUgbTpeFO2rMe.jpg', '1694044800000', 'Avventura,Dramma', '1746894167343'),
(889737, 'movie', 'Joker: Folie à Deux', 'Todd Phillips', 'Arthur Fleck è recluso nel manicomio di Arkham in attesa di essere processato per i crimini commessi come Joker. Mentre lotta con la sua doppia identità, Arthur non solo scopre il vero amore, ma trova anche la musica che ha sempre avuto dentro di sé.', '/vWtTVfbwYrLgWOHe7ooaACAHXX4.jpg', '1727740800000', 'Dramma,Crime,Thriller', '1746894167523'),
(870360, 'movie', 'Un''avventura spaziale - Un film dei Looney Tunes', 'Peter Browngardt', 'Porky Pig e Daffy Duck sono un po'' giù di morale dopo che un misterioso oggetto volante ha squarciato il tetto della loro casa. Senza fondi per le riparazioni, i due amici rischiano di perdere la loro casa d''infanzia! Fortunatamente incontrano Petunia Pig, che corre in loro aiuto procurandogli un lavoro nella locale fabbrica di gomme da masticare, dove lavora come scienziata dei sapori. Tutto sembra andare per il meglio, fino a quando Daffy nota qualcosa di strano. Il nuovo gusto di chewing gum, venduto in tutto il mondo, è stato contaminato da una misteriosa melma appiccicosa verde fluo. Non ci vuole molto prima che si rendano conto che la gomma è stara avvelenata da un malvagio alieno che progetta di far saltare in aria la Terra. Porky, Daffy e Petunia si ritrovano così in una corsa contro il tempo per fermare i piani apocalittici del misterioso invasore. Le abilità scientifiche di Petunia, l''ingegno di Porky e la folle determinazione di Daffy, gli permetteranno di salvare il mondo?', '/tQfc5FOzl5xn7CLSBSULOq9mLXi.jpg', '1722470400000', 'Famiglia,Commedia,Avventura,Animazione,Fantascienza', '1746894167676'),
(11482, 'movie', 'L''inquilino del terzo piano', 'Roman Polanski', 'Trelkovski, modesto impiegato di origini polacche, prende possesso a Parigi di un appartamento la cui inquilina precedente, Simon Chule, si è uccisa buttandosi dalla finestra. O, sarebbe meglio dire, è l''appartamento stesso a prendere possesso dell''uomo. Circondato da inquietanti e grotteschi vicini, Trelkovski scopre nell''appartamento orribili tracce dell''ex-inquilina e finisce progressivamente in un tunnel di follia che lo conduce al totale sdoppiamento di personalità nella ragazza.', '/5jyhqmOlqcMxcjtum7v1m3OnubT.jpg', '201916800000', 'Thriller,Horror,Mistero,Dramma', '1746894167836'),
(399174, 'movie', 'L''isola dei cani', 'Wes Anderson', 'Atari Kobayashi è una guardia di dodici anni che vive a Megasaki City, città giapponese di cui è sindaco Kobayashi. Quando, con un decreto esecutivo, tutti i cani domestici vengono esiliati in un''enorme isola adibita ai rifiuti, Atari si allontana da solo alla ricerca del suo cane Spot. Con l''aiuto di nuovi amici, inizierà un epico viaggio che deciderà il destino e il futuro dell''intera Prefettura.', '/6wLru0FE9bAXrQmxykyv7gxJa5f.jpg', '1521763200000', 'Avventura,Commedia,Animazione', '1746894168013'),
(398173, 'movie', 'La casa di Jack', 'Lars von Trier', 'Stati Uniti d''America, 1970. Jack è un ingegnere psicopatico con tendenze ossessivo-compulsive. Dopo aver ammazzato una donna che gli aveva chiesto soccorso per strada, si convince di dover continuare ad uccidere per raggiungere la perfezione. Ogni suo omicidio deve essere un''opera d''arte: sempre più complessa e ingegnosa. Inizia così una partita a scacchi contro la polizia, lunga dodici anni, condotta dal più astuto e spietato omicida seriale.', '/z4K28tlQYgGGCgHti7l3d6h6rOo.jpg', '1530748800000', 'Dramma,Horror,Crime,Thriller', '1746894168182'),
(56231, 'movie', 'La classe operaia va in paradiso', 'Elio Petri', 'La fabbrica italiana degli anni settanta.  Si racconta il rapporto alienato degli operai con la macchina e i tempi di produzione.  Il rapporto con il movimento studentesco, spesso troppo distante e ''astratto'' dai reali problemi degli operai.  Il film è stato girato nella fabbrica "Falconi", di Novara.  Vincitore del Grand Prix per il miglior film al Festival di Cannes 1972.', '/4Nyi46Yj9i6a9xKVx0rt9LC4qpS.jpg', '53913600000', 'Dramma', '1746894168342'),
(439, 'movie', 'La dolce vita', 'Federico Fellini', 'A Roma, in pieno giorno, compare nel cielo una statua di Gesù Cristo trasportata da un elicottero. La visione suscita l''interesse di gran parte della popolazione, dai ragazzi delle periferie alle ricche signore degli attici del centro storico, e un cronista, Marcello Rubini, ne approfitta per far immortalare le scene dai suoi amici fotografi e dal fedele fotoreporter d''assalto Paparazzo.', '/4VeDUBH3btjtCrUkpWAChqVWfAY.jpg', '-312595200000', 'Commedia,Dramma', '1746894168513'),
(46738, 'movie', 'La donna che canta', 'Denis Villeneuve', 'Quando il notaio Lebel, legge a Jeanne e Simon Marwan il testamento della loro madre Nawal, i gemelli restano scioccati nel vedersi porgere due buste, una destinata ad un padre che credevano morto e l''altra ad un fratello di cui ignoravano l''esistenza. Jeanne vede in questo lascito enigmatico, la chiave del silenzio di Nawal, chiusa in un mutismo inesplicabile durante le ultime settimane precedenti la sua morte. Decide di partire subito per il Medio Oriente per riesumare il passato di questa famiglia di cui non sa quasi nulla. Simon, per quanto lo riguarda, non ha bisogno dei capricci postumi di quella madre che è sempre stata lontana e avara di affetto, ma il suo amore per la sorella lo spingerà presto a unirsi a Jeanne per setacciare insieme la terra dei loro antenati sulle tracce di una Nawal ben lontana dalla madre che conoscevano...', '/nQZhQ5bN72hd831DO4MBtwTjy6C.jpg', '1284681600000', 'Dramma,Guerra,Mistero', '1746894168673'),
(406, 'movie', 'L''odio', 'Mathieu Kassovitz', 'In Le Cité, un quartiere periferico parigino, scoppia il vento della rivolta dopo il pestaggio del sedicenne Abdel Ichaha da parte della polizia. I giovani della banlieu scendono in strada e si battono tutta la notte con gli agenti. Tra loro ci sono tre amici: l''ebreo Vinz, il maghrebino Saïd e il nero Hubert Dia, un trio di sfigati, disoccupati, arrabbiati e senza futuro.', '/fO9B1SHiTBm2A1pUh6WQinV8V1x.jpg', '801878400000', 'Dramma', '1746894168824'),
(457955, 'movie', 'La notte ha divorato il mondo', 'Dominique Rocher', 'Una mattina, al risveglio nell''appartamento dove il giorno prima si è tenuta una festa, Sam deve affrontare la realtà: è solo e le strade di Parigi sono piene di morti viventi. Terrorizzato, dovrà proteggersi e organizzarsi per continuare a sopravvivere. Tuttavia, potrebbe non essere il solo a essere scampato alla pandemia.', '/qAbGewLuMSiDycB4KE240QXv1Gr.jpg', '1520380800000', 'Dramma,Horror,Thriller', '1746894168982'),
(1279, 'movie', 'La samaritana', 'Kim Ki-duk', 'Jae-Young e Yeo-Jin sono due amiche del cuore e socie in affari per guadagnare i soldi necessari per un viaggio in Europa. La prima lavora come prostituta, mentre la seconda le procura i "clienti" e fa il palo per avvertire l''amica di eventuali retate della polizia. Un giorno per sfuggire ad un blitz della polizia, Jae-Young si getta da una finestra, restando gravemente ferita alla testa. Sul letto di morte la ragazza esprime all''amica il desiderio di rivedere un''ultima volta l''uomo che ama: un cliente incontrato poco prima. L''uomo freddamente acconsente a rivedere Jae-Young, ma solo dopo che Yeo-Jin gli si conceda. La ragazza accetta a malincuore, ma i due arrivano all''ospedale troppo tardi: Jae-Young è morta.', '/2f2pz7UXwpINGbi6FXVOUnxzUF1.jpg', '1078444800000', 'Dramma', '1746894169144'),
(5156, 'movie', 'Ladri di biciclette', 'Vittorio De Sica', 'Dopo il furto della propria bicicletta, mezzo che gli permetteva di lavorare, un uomo vaga per la città con tutta la famiglia sperando di poterla ritrovare. Preso dalla disperazione non gli resta che rubarne una a sua volta ma viene bloccato dalla polizia, a questo punto il derubato commuovendosi lo lascia andare...', '/1O2sMu2WsM1YjLMdnaUszHbb2T9.jpg', '-676857600000', 'Dramma', '1746894169303'),
(576845, 'movie', 'Ultima notte a Soho', 'Edgar Wright', 'Eloise, ventenne cresciuta con la nonna dopo il suicidio della madre, arriva a Londra con il sogno di diventare stilista. Ha il mito della Swingin'' London e della musica anni ''60, che ascolta continuamente su vecchi 33 giri portatili. Dopo un''infelice esperienza nello studentato della scuola di moda in cui è stata ammessa, si trasferisce in un appartamento di Soho affittato da un''anziana signora. Qui, durante lunghe notti agitate, Eloise sogna di tornare nel passato, nella Londra che ama di più, dove incontra Sandie, un''aspirante cantante che vive il glamour di una città colorata ed esaltante. Poco alla volta, però, Eloise confonde la propria personalità con quella di Sandie e ne scopre la vita in realtà miserabile, scivolando tra realtà e incubo in un''esperienza spaventosa.', '/mNuXKuiywifooo8LnAzMy0W4ZiK.jpg', '1634774400000', 'Horror,Mistero', '1746894169483'),
(500, 'movie', 'Le iene', 'Quentin Tarantino', 'Los Angeles. Una rapina a un importatore di diamanti che avrebbe potuto dare un ottimo bottino con un rischio calcolato si trasforma in una sparatoria che costringe i malviventi a una fuga disordinata. C''è però un punto di ritrovo prestabilito da Joe, il loro capo. Si tratta di un deposito abbandonato che viene raggiunto per primi da Mr. White e Mr. Orange gravemente ferito. Ognuno degli appartenenti alla banda ha finora conosciuto gli altri solo con il nome di un colore per evitare eventuali delazioni. Ma è proprio il dubbio che al loro interno si nasconda un infiltrato della polizia che comincia a tormentare i soggetti che, progressivamente, raggiungeranno il punto di raccolta.', '/noWeDEXd0a8du7tWG9F16Pm3Cvv.jpg', '715392000000', 'Crime,Thriller', '1746894169663'),
(76341, 'movie', 'Mad Max: Fury Road', 'George Miller', 'Ossessionato dal suo turbolento passato, Mad Max crede che il modo migliore per sopravvivere sia muoversi da solo, ma si ritrova coinvolto con un gruppo in fuga attraverso la Terre Desolata su un blindato da combattimento, guidato dall’imperatrice Furiosa. Il gruppo è sfuggito alla tirannide di Immortan Joe, cui è stato sottratto qualcosa di insostituibile. Furibondo, l’uomo ha sguinzagliato tutti i suoi uomini sulle tracce dei ribelli e così ha inizio una guerra spietata.', '/tNvbFT0Gv7uLUmcKSPcnxGb5xj8.jpg', '1431475200000', 'Azione,Avventura,Fantascienza', '1746894169824'),
(766798, 'movie', 'Madres paralelas', 'Pedro Almodóvar', 'Due donne non sposate che sono rimaste incinte per sbaglio e stanno per partorire si incontrano in una stanza d''ospedale: Janis, di mezza età, impenitente e felice; Ana, un''adolescente, piena di rimorsi e spaventata.', '/4WTnwQea0VQBJ4eeo7KD4ZJXkOF.jpg', '1633651200000', 'Dramma', '1746894169982'),
(300669, 'movie', 'Man in the Dark', 'Fede Álvarez', 'Alcuni ragazzi si introducono nella casa di un uomo cieco per commettere un crimine. Considerando le condizioni del padrone di casa i giovani sono convinti che si tratterà di una passeggiata, ma le cose non andranno come previsto.', '/5EG1C1mrak2WsP3xcluRQ74ZbDl.jpg', '1465344000000', 'Horror,Thriller', '1746894170163'),
(539033, 'movie', 'Manta Ray', 'Phuttiphong Aroonpheng', 'Near a coastal village of Thailand, a local fisherman rescues a stranger, who does not speak a word, offers him his friendship and names him Thongchai. When the fisherman suddenly disappears at sea, Thongchai slowly begins to take over his friend''s life—his house, his job and his marriage.', '/adRTcgZhFbM2svocrUHq0eA5ciT.jpg', '1562803200000', 'Dramma', '1746894170324'),
(1913, 'movie', 'Mare dentro', 'Alejandro Amenábar', 'E'' la storia di Ramón Sampedro, un ex marinaio reso tetraplegico da un tuffo in mare. Nonostante l''affetto e la dedizione dei suoi familiari, dopo un trentennio di totale immobilità inizia, con l''aiuto di un''associazione per i diritti umani, una inutile lotta con i tribunali spagnoli per ottenere il diritto a una morte dignitosa. Due donne, Julia un''avvocatessa colpita a sua volta da una malattia degenerativa, e Rosa, un''operaia con due figli piccoli, impegnate ciascuna a suo modo nella causa di Ramón, dovranno fare i conti con i loro sentimenti e con i principi che hanno regolato fino a quel momento le loro vite.', '/wWzJUEzDUrFWs3fDJjgoOUVolDs.jpg', '1094169600000', 'Dramma', '1746894170493'),
(603, 'movie', 'Matrix', 'Lana Wachowski', 'Seguendo un tatuaggio sulla spalla di una ragazza, l''hacker Neo scopre che la cosiddetta "realtà" è solo un impulso elettrico fornito al cervello degli umani da un''intelligenza artificiale. Per sopravvivere alla catastrofe l''umanità ha infatti avuto bisogno delle macchine, ma queste hanno vinto e necessitano degli uomini come fonte di energia. L''illusione in cui li fanno vivere è quindi finalizzata a "coltivarli" meglio. Nessuno è a conoscenza del tempo che è passato da quando il neurosimulatore ha assegnato una data fittizia al tempo. Solo Neo, con l''aiuto del pirata informatico Morpheus e della bella Trinity, può tentare di scoprire la verità, ma non sarà un''impresa facile.', '/yQZX4scmfYtj4ccKFNGZJlOj1y9.jpg', '922838400000', 'Azione,Fantascienza', '1746894170656'),
(839369, 'movie', 'May December', 'Todd Haynes', 'Vent''anni dopo che la loro famigerata storia d''amore sui giornali scandalistici aveva attanagliato la nazione, una coppia sposata crolla sotto la pressione quando arriva un''attrice a fare ricerche per un film sul loro passato.', '/xI4cCTf4uTWlOXO1v1UYD06VahC.jpg', '1700092800000', 'Dramma', '1746894170805'),
(62215, 'movie', 'Melancholia', 'Lars von Trier', 'Justine arriva con il neomarito alla festa delle nozze che il cognato e la sorella Claire le hanno organizzato con un ritmato protocollo. Justine sorride molto ma dentro di sé prova un disagio profondo che la spingerà ad allontanarsi in più occasioni dai festeggiamenti provocando lo sconcerto di molti, marito compreso. Non si tratta però solo di un malessere esistenziale privato. Una grave minaccia incombe sulla Terra: il pianeta Melancholia si sta avvicinando e, benché il mondo scientifico inviti all''ottimismo, il rischio di collisione e di distruzione totale del globo terrestre è più che mai realistico. Tempo dopo, con Melancholia sempre più vicino, sarà Claire a invitare a casa sua la sorella.', '/8Pi0SMvTJYigX6YKorCbxScSa54.jpg', '1306368000000', 'Dramma,Fantascienza', '1746894170957'),
(19, 'movie', 'Metropolis', 'Fritz Lang', 'Nel 2026 in una megalopoli a due livelli gli operai che lavorano come schiavi nei sotterranei sono incitati alla rivolta da un robot femmineo che riproduce le fattezze di una di loro, la mite e pia Maria. L''ha costruito uno scienziato al servizio dei padroni che vuole vendicarsi del potente John Fredersen, dominatore della città. La rivolta provoca un''inondazione che colpisce i quartieri operai finché, sollecitato da Maria, Freder, figlio di Fredersen, fa da mediatore tra padroni e operai. È nato un nuovo patto sociale. Realizzato nel 1926 a costi così alti che rischiarono di far fallire la UFA, fu proiettato a Berlino il 10-1-1927. Ne esistono varie copie, ciascuna diversa dall''altra per durata e montaggio.', '/b9IVtOO89Ays4v0eWfADQ4Lq3wZ.jpg', '-1353888000000', 'Dramma,Fantascienza', '1746894171113'),
(1050035, 'movie', 'L''innocenza', 'Hirokazu Kore-eda', 'Minato, che ha 11 anni e vive con sua mamma vedova, inizia a comportarsi in modo strano e torna da scuola sempre più avvilito. Tutto lascia pensare che il responsabile sia un insegnante, così la madre si precipita a scuola per scoprire cosa sta succedendo. Ma la verità si rivelerà essere un’altra e i fatti sveleranno una profonda e toccante storia di amicizia.', '/lCNvxafXD7fBrjBBRyna0iIysCw.jpg', '1685664000000', 'Mistero,Thriller,Dramma', '1746894171284'),
(1018, 'movie', 'Mulholland Drive', 'David Lynch', 'In tarda notte, una limousine percorre Mulholland Drive (una strada che attraversa le colline attorno a Los Angeles, California); al suo interno c''è una donna dai capelli scuri (interpretata da Laura Elena Harring) e due uomini; improvvisamente, l''auto si ferma ed uno dei due uomini punta una pistola contro la donna; subito dopo, però, dei pirati della strada si schiantano contro la limousine. La donna resta miracolosamente illesa, ma ha un''amnesia. Abbandona la scena dell''incidente e scende la collina che porta a Los Angeles, stendendosi nel giardino di un appartamento e mettendosi a dormire. Il giorno successivo, si sveglia e vede la proprietaria dell''appartamento, una donna di mezza età dai capelli rossi, che sta per partire.', '/rWdFXzVAQwzWrtWyMs7hNRPwDXx.jpg', '991785600000', 'Thriller,Dramma,Mistero', '1746894171446'),
(6977, 'movie', 'Non è un paese per vecchi', 'Joel Coen', 'Llewelyn Moss trova, in una zona desertica, un camioncino circondato da cadaveri. Il carico è di eroina e in una valigetta ci sono due milioni di dollari. Che fare? Llewelyn è una persona onesta ma quel denaro lo tenta troppo. Decide di tenerselo dando il via a una reazione a catena che neppure il disilluso sceriffo Bell può riuscire ad arginare. Moss deve fuggire, in particolare, le ''attenzioni'' di un sanguinario e misterioso inseguitore.', '/2zbXKL34bwaZ2gBygwoDE8DXHs7.jpg', '1181692800000', 'Crime,Dramma,Thriller', '1746894171838'),
(9589, 'movie', 'Christiane F. - Noi i ragazzi dello zoo di Berlino', 'Uli Edel', 'La giovane berlinese Christiane vive con la madre e la sorella in uno squallido quartiere. L''amica Kessie la porta alla famosa discoteca "Sound", dove conosce molti coetanei e impara a fumare e farsi di LSD. Lì incontra anche Datlev, un ragazzo gentile ma dipendente da eroina; i due gradatamente percorreranno ogni passo della tossicodipendenza e cadranno sempre più in basso perdendo inibizioni e senso morale.', '/yub49OTPZC1RcZvl9xHIuvhJkSa.jpg', '355017600000', 'Dramma', '1746894171985'),
(258216, 'movie', 'Nymphomaniac - Volume 1', 'Lars von Trier', 'Una sera di un freddo inverno l''affascinante scapolo Seligman (Stellan Skarsgård) trova Joe (Charlotte Gainsbourg) riversa in un vicolo, dopo essere stata picchiata. Decide di portarla nel suo appartamento, dove le cura le ferite e comincia a farle domande sulla sua vita. Con attenzione, Seligman si ritrova ad ascoltare le parole di Joe, intenta a raccontare in otto differenti capitoli la sua parabola erotica, dalla nascita fino a quel momento. Sfaccettata e ricca di aneddoti, quella di Joe è un''esistenza fatta di incontri e incidenti, di episodi immorali e di desideri da accontentare, di conflitti e di richieste poco convenzionali.', '/lDjlIRYQNzUJJU6aumvgTfvPW9h.jpg', '1387929600000', 'Dramma', '1746894172145'),
(249397, 'movie', 'Nymphomaniac - Volume 2', 'Lars von Trier', 'Joe prosegue la narrazione della sua vita in rapporto con la sessualità mentre l''anziano Seligman la ascolta suggerendo, talvolta, inattesi paralleli. Apprendiamo così che il blocco dell''orgasmo con cui si chiudeva il primo volume continua e Jerome è costretto ad accettare che Joe cerchi altri uomini per trovare soddisfazione. Questo però non impedisce che nasca un figlio la cui presenza non contribuirà però a cementare la coppia. Tra esperienze con africani ed esplorazioni del proprio versante masochistico, Joe scoprirà anche l''interesse per un rapporto lesbico.', '/9UgZwabZYnKYNcfNknoLiZpjUwd.jpg', '1387929600000', 'Dramma,Mistero', '1746894172304'),
(26955, 'movie', 'Oasis', 'Lee Chang-dong', 'Jong-du è appena uscito di prigione, dopo aver scontato una condanna per omicidio colposo; il giovane incontra casualmente Gong-ju, figlia disabile dell''uomo di cui aveva causato la morte. Tra i due nascerà presto un tenero affetto che sarà duramente osteggiato dalle famiglie di entrambi.', '/aaajiBpeBVbVwovpSQKaMfKRGKw.jpg', '1029369600000', 'Dramma,Romance', '1746894172464'),
(496243, 'movie', 'Parasite', 'Bong Joon Ho', 'Tutta la famiglia di Ki-taek è senza lavoro. Ki-taek è particolarmente interessata allo stile di vita della ricchissima famiglia Park. Un giorno, suo figlio riesce a farsi assumere dai Park e le due famiglie si ritrovano così intrecciate da una serie di eventi incontrollabili.', '/mMM8kcfspicib7AmPTvf97Rarwn.jpg', '1559174400000', 'Commedia,Thriller,Dramma', '1746894172644'),
(976893, 'movie', 'Perfect Days', 'Wim Wenders', 'Hirayama conduce una vita semplice, scandita da una routine perfetta. Si dedica con cura e passione a tutte le attività della sua giornata, dal lavoro come addetto alle pulizie dei bagni pubblici di Tokyo all’amore per la musica, ai libri, alle piante, alla fotografia e a tutte le piccole cose a cui si può dedicare un sorriso. Nel ripetersi del quotidiano, una serie di incontri inaspettati rivela gradualmente qualcosa in più del suo passato.', '/2RA3991JUU5TAqU1OhllxaFOvs.jpg', '1699574400000', 'Dramma', '1746894172814'),
(635731, 'movie', 'Pig - Il piano di Rob', 'Michael Sarnoski', 'Oregon. Un solitario cacciatore di tartufi che vive in una capanna in mezzo ad una foresta è costretto a fare ritorno nella città di Portland per trovare le persone che gli hanno rubato il maiale. Affronta così il suo passato di chef stellato...', '/dkUDmHTna4awZmzdnLvdopMz1oj.jpg', '1626393600000', 'Dramma,Thriller,Mistero', '1746894172973'),
(792307, 'movie', 'Povere creature!', 'Yorgos Lanthimos', 'Bella Baxter viene riportata in vita dal brillante e poco ortodosso scienziato Dr. Godwin Baxter. Affamata della mondanità che le manca, Bella fugge con Duncan Wedderburn, un avvocato elegante e dissoluto, in una vorticosa avventura attraverso i continenti.', '/fTPjIMo1CaXEdElemT4ykxyM8fC.jpg', '1701907200000', 'Fantascienza,Romance,Commedia', '1746894173145'),
(912480, 'movie', 'Red Rooms', 'Pascal Plante', 'The high-profile case of serial killer Ludovic Chevalier has just gone to trial, and Kelly-Anne is obsessed. When reality blurs with her morbid fantasies, she goes down a dark path to seek the final piece of the case’s puzzle.', '/uBJvbf0g9rcsYElcwZCMYU0Vrj8.jpg', '1691712000000', 'Crime,Thriller,Horror', '1746894173305'),
(505192, 'movie', 'Un affare di famiglia', 'Hirokazu Kore-eda', 'Dopo uno dei loro furti, Osamu e suo figlio si imbattono in una ragazzina in mezzo ad un freddo glaciale. Dapprima riluttante ad accoglierla, la moglie di Osamu acconsente ad occuparsi di lei dopo aver appreso le difficoltà che la aspettano. Benché la famiglia sia così povera da riuscire a malapena a sopravvivere commettendo piccoli reati, sembrano vivere felici insieme finché un incidente imprevisto porta alla luce segreti nascosti che mettono alla prova i legami che li uniscono.', '/ocxZHsZKzZuSvIdsApTHbylPJbg.jpg', '1527897600000', 'Dramma,Crime,Thriller', '1746894173458'),
(833339, 'movie', 'Speak No Evil', 'Christian Tafdrup', 'In vacanza in Toscana, una famiglia danese fa amicizia con una famiglia olandese. Mesi dopo, la coppia danese riceve dagli olandesi l''invito a far visita loro nella loro casa di campagna, decidendo di accettare la proposta e di passare lì il fine settimana. Tuttavia, non passa molto tempo prima che la gioia del ricongiungimento lasci il posto ai malintesi.', '/9xljnKK2jEqjEviWxftvKHFG4jX.jpg', '1647475200000', 'Horror,Thriller,Dramma', '1746894173734'),
(586461, 'movie', 'Swallow', 'Carlo Mirabella-Davis', 'Hunter ha una vita all''apparenza perfetta. Incinta, è felice e in armonia nella vita di tutti i giorni. Dall''oggi al domani, però, comincia a inghiottire oggetti in maniera incontrollabile.', '/40Zrwud1EVxNvcjQkotZo7jmr4L.jpg', '1579046400000', 'Dramma,Thriller,Horror', '1746894174045'),
(1008042, 'movie', 'Talk to Me', 'Michael Philippou', 'Un gruppo di giovani amici scopre come evocare i demoni facendo uso di un''antica mano imbalsamata, finché uno di loro si spinge troppo oltre aprendo irrimediabilmente le porte al mondo degli spiriti. Perseguitato così da visioni soprannaturali, il gruppo si trova inconsapevolmente al centro di una possessione devastante che porterà a porsi una domanda importante: meglio fidarsi dei vivi o dei morti?', '/xisotUBBDV4haNlpJsuPF0GggSd.jpg', '1690329600000', 'Horror', '1746894174215'),
(242224, 'movie', 'Babadook', 'Jennifer Kent', 'Sono sei anni che è morto il marito di Amelia e sei anni che è nato Samuel, il suo unico figlio, cresciuto senza padre da una madre single in grandi difficoltà economiche e distrutta dallo stress causato dalla sua iperattività. Il bambino non dorme bene, la tiene sveglia, spaventa i compagni, si fa riprendere a scuola, è violento, non ha molti amici per via di un temperamento esagitato e la stessa madre arriva quasi ad odiarlo. Le cose non migliorano quando nella loro vita si materializza un libro di favole diverso dagli altri, molto nero, cupo e spaventoso che viene prontamente messo via dopo la prima lettura ma continua a ripresentarsi fino a che la sua storia di un uomo nero che ti entra dentro fino a condizionarti non comincia lentamente ad avverarsi e intrappola i due nella loro stessa casa.', '/7jkDAK1axdu5QPkISlehOyEVw37.jpg', '1400716800000', 'Dramma,Horror', '1746894174586'),
(13855, 'movie', 'The Chaser', 'Na Hong-jin', 'Jung-ho è un ex-poliziotto passato dall''altra parte della barricata che fa il protettore per un gruppo di prostitute. Ha però un problema: da qualche tempo alcune delle sue ragazze sono sparite. Quando riceve una chiamata da un cliente manda una delle sue ragazze, Mi-Jin, ma si accorge che c''è un legame tra il numero di telefono del cliente e le ragazze scomparse: prima di sparire erano tutte state richieste da quell''uomo. Inizia così una frenetica ricerca per salvare Mi-Jin, sperando di ritrovarla ancora in vita.', '/nChElNDgCIwFnNXNEMpk1WGGgTH.jpg', '1202947200000', 'Crime,Thriller,Azione', '1746894174855'),
(306947, 'movie', 'The Invitation', 'Karyn Kusama', 'Will ed Eden un tempo si amavano. Dopo aver perso tragicamente il loro figlio, Eden è scomparsa prima di ripresentarsi due anni dopo, di punto in bianco, con un nuovo marito. Totalmente diversa da prima, Eden è stranamente cambiata e ha intenzione di riallacciare i rapporti con Will e con tutti coloro che si era lasciata alle spalle. Nel corso di una cena in una casa che una volta era sua, Will in preda ai tormenti si convince che Eden e i suoi nuovi amici hanno in mente un misterioso e terrificante piano.', '/qs0aBlZ0Cw9eJ8SxG4wPd44CBPm.jpg', '1460073600000', 'Thriller,Horror', '1746894175044'),
(301365, 'movie', 'The Neon Demon', 'Nicolas Winding Refn', 'Quando l’aspirante modella Jesse si trasferisce a Los Angeles, la sua giovinezza e vitalità vengono fagocitate da un gruppo di donne ossessionate dalla bellezza,disposte ad usare ogni mezzo per prenderle ciò che ha.', '/xecpbH1yzrOirRWE48QJGCwDana.jpg', '1464652800000', 'Thriller,Horror', '1746894175215'),
(269776, 'movie', 'The lonely hearts killers', 'Fabrice Du Welz', 'Michel, un donnaiolo omicida, incontra online l''introversa Gloria e le regala una vorticosa avventura di una notte. Offrendosi come complice nei suoi crimini seducenti, gli amanti squilibrati si imbarcano in un''odissea mortale amplificata da sesso selvaggio, gelosia sfrenata e appassionate incursioni nelle arti oscure. Questo shocker intelligente e cruento infonde nuova vita al genere horror malato d''amore per servire un racconto agghiacciante di disperazione incandescente e devozione terrificante.', '/jdBTlCfbIUHr8XWgBvpuCw6kz0S.jpg', '1416960000000', 'Horror,Dramma,Thriller', '1746894175384'),
(310131, 'movie', 'The Witch', 'Robert Eggers', 'New England, XVII secolo. William e Katherine conducono una devota vita cristiana insieme ai loro cinque figli in una zona ai margini dell''impraticabile deserto. Quando il loro figlio neonato svanisce e il raccolto va a male, la famiglia comincia a disintegrarsi e tutti finiscono con il darsi addosso a vicenda. Il vero pericolo però è il male sovrannaturale che si nasconde nel vicino bosco.', '/cJpvTuOl4OV8TgDib4ilYqPVAfe.jpg', '1455840000000', 'Horror,Fantasy,Dramma', '1746894175655'),
(7345, 'movie', 'Il petroliere', 'Paul Thomas Anderson', 'Daniel Plainview è un cercatore d''argento che, alla fine dell''800 trova il petrolio nell''Ovest degli Stati Uniti. La sua ricchezza diventa considerevole, ma l''uomo, sempre più accecato da una misantropia assoluta, allontanerà da sé anche il figlio, precipitando sempre più nell''avidità del possesso.', '/2eH78Nz708yFVrcaZAE2bspY5q5.jpg', '1198627200000', 'Dramma', '1746894175926'),
(627, 'movie', 'Trainspotting', 'Danny Boyle', 'Edimburgo. Mark Renton, ladruncolo per necessità, ha scelto un''onesta e sincera tossicodipendenza. Begbie, uno psicopatico violento e alcolizzato spaventa perfino i suoi amici, ma non si sognerebbe nemmeno di toccare la droga. Spud, un disperato, ma amabile eroinomane. Sick Boy, un narciso dalle conoscenze enciclopediche su Sean Connery, in grado di tenere sotto controllo la propria dipendenza dall''eroina. Poi c''è Tommy che non si droga, è un maniaco delle escursioni all''aria aperta e di Iggy Pop. Ai margini della storia, ci sono le ragazze del gruppo.', '/rW8igIeFq2reJPgUYK5gukdSVVB.jpg', '825033600000', 'Dramma,Crime', '1746894176097'),
(1391, 'movie', 'Anche tua madre', 'Alfonso Cuarón', 'Julio e Tenoch sono due amici diciassettenni che hanno una gran voglia di crescere. Nel corso di una festa conoscono una ventottenne spagnola, Louisa, che corteggiano in coppia. Costei è un misto di vitalità e di tristezza, ma è capace di accettare la proposta di un viaggio in tre verso una spiaggia denominata Boca del Cielo che i due in realtà non sanno dove si trovi.', '/8MBu6LXCdkE5KHhfweqQ1DVSTFB.jpg', '991958400000', 'Dramma,Romance', '1746894176375'),
(38473, 'movie', 'Una tomba per lucciole', 'Taro Hyugaji', 'Il film è incentrato sulla storia di due fratelli, Setsuko e Seita, che vivono in Giappone durante la Seconda Guerra Mondiale.  Dopo la morte della madre, uccisa da un raid aereo, vengono ospitati a casa di alcuni parenti. Ma quando il conflitto inizia ad inasprirsi, i due bambini scappano dalla città, e trovano riparo in un''abitazione abbandonata.  In attesa della fine del conflitto, e del ritorno del padre (partito in guerra) i due bambini cercano di sopravvivere aiutandosi a vicenda.', '/kQ29Tp6L43o1hVbyXxdtxAtLtZ3.jpg', '1215216000000', 'Dramma,Guerra', '1746894176555'),
(219, 'movie', 'Volver - Tornare', 'Pedro Almodóvar', 'Raimunda, una giovane madre de la Mancha, trova rifugio dal suo passato a Madrid, dove vive col suo compagno Paco e la figlia adolescente, Paula. Durante un tentativo di abuso da parte del patrigno, Paula lo pugnala a morte. Scoperta la tragedia, Raimunda ''abbraccia'' la figlia e la legittima difesa, coprendo l''omicidio e occultando il cadavere. Questo evento disgraziato rievoca fantasmi dolorosi e mai svaniti. Dall''aldilà torna Irene, sua madre, a chiederle perdono e a riparare la colpa.', '/qU6UQTgrRAo6B4qfVcdITmCuEVg.jpg', '1142553600000', 'Commedia,Dramma,Romance', '1746894176845'),
(744857, 'movie', 'When Evil Lurks', 'Demián Rugna', 'Gli abitanti di un piccolo paese rurale scoprono che tra loro sta per nascere un demone. Tentano disperatamente di scappare prima che nasca il male, ma potrebbe essere troppo tardi.', '/e1K5ESnTmRzj0YaUIRrIfShtTe4.jpg', '1696464000000', 'Horror,Thriller', '1746894177125'),
(783675, 'movie', 'The First Slam Dunk', 'Takehiko Inoue', 'Ryōta Miyagi è sempre stato legato al basket grazie al fratello maggiore Sota, deceduto in un incidente in mare quando Ryōta era piccolo. Ora playmaker della squadra di basket della Shohoku, Ryōta si prepara con i suoi compagni a sfidare "l''imbattibile" Sannoh, il team campione del torneo nazionale.', '/A93VYgcBAdBbvdApUtmvLtLe6sf.jpg', '1670025600000', 'Animazione,Commedia,Dramma', '1746894177295'),
(504253, 'movie', 'Voglio mangiare il tuo pancreas', 'Shinichiro Ushijima', 'La giovane Sakura è gravemente malata e non le restano molti giorni da vivere, ma nessuno lo sa. Finché il timido e introverso Haruki non lo scopre, in maniera del tutto casuale. Tra i due nasce un complicato rapporto di amicizia, che insegnerà molto a entrambi sulla vita e sull''affetto reciproco.', '/2ezMKcw090lTq7dA7AY0lr2gOP1.jpg', '1535760000000', 'Animazione,Dramma,Romance', '1746894177576'),
(378064, 'movie', 'La forma della voce', 'Naoko Yamada', 'Ogaki. Il liceale Shoya Ishida sta per saltare dal ponte per suicidarsi, ma all''ultimo desiste. Cinque anni prima, ai tempi della scuola elementare, nella classe di Shoya arriva Shoko Nishimiya, una ragazza sordomuta: l''accoglienza dei suoi compagni da timida diviene in breve tempo ostile. Per quanto Shoko si sforzi di essere gentile e disponibile con tutti, un gruppetto, capitanato da Shoya, si accanisce contro di lei. Cinque anni dopo Shoya ancora non è in grado di darsi pace per i torti inflitti a Shoko, anche perché la conseguenza delle sue azioni passate è la totale solitudine.', '/kebTSlQRdLCh8sLqkh0B0KaR8i.jpg', '1474070400000', 'Animazione,Dramma,Romance', '1746894177746'),
(149, 'movie', 'Akira', 'Katsuhiro Otomo', 'Nel 1988 il centro di Tokyo viene distrutto da una gigantesca e misteriosa esplosione che scatena il terzo conflitto mondiale. Nel 2019 il mondo riemerge lentamente dalla devastazione. A Neo Tokyo, ricostruita attorno al cratere provocato dalla prima deflagrazione, i militari portano avanti esperimenti su ragazzi dotati di poteri straordinari. Tetsuo, teppista amico di Kaneda, scatena le attenzioni dei vertici militari e viene prima catturato e poi sottoposto a controlli meticolosissimi: che sia lui il nuovo Akira? In lui vi è forse traccia del potere che distrusse Tokyo trent''anni prima?', '/jyM3CQptzgnJC82CyWQxVEn7xQm.jpg', '581904000000', 'Animazione,Fantascienza,Azione', '1746894177926'),
(652837, 'movie', 'Josée, la tigre e i pesci', 'Kotaro Tamura', 'Lo studente universitario Tsuneo una mattina incontra una vecchia che spinge una enorme carrozzina: dentro c’è Kimiko, una ragazza colpita da paralisi cerebrale incapace di muovere le gambe. Tsuneo finisce per seguirle nella squallida abitazione che condividono, e nonostante il guscio in cui Kimiko sembra essersi rinchiusa, comincerà a farsi vivo sempre più spesso.', '/vyu50PCv29Ddp0RiCzEOlQ4uuDU.jpg', '1608854400000', 'Animazione,Dramma,Romance', '1746894178188'),
(372058, 'movie', 'Your Name.', 'Makoto Shinkai', 'Mitsuha è una studentessa che vive in una piccola città rurale e desidera trasferirsi a Tokyo, nella grande metropoli dove ogni sogno si può realizzare. Taki è uno studente di liceo che vive proprio a Tokyo, ha un lavoro part-time in un ristorante italiano, ma vorrebbe lavorare nel campo dell’arte o dell’architettura. Una notte, Mitsuha sogna di essere un giovane uomo, si ritrova in una stanza che non conosce, ha nuovi amici e lo skyline di Tokyo si apre dinnanzi al suo sguardo. Nello stesso momento Taki sogna di essere una ragazzina che vive in una piccola città di montagna che non ha mai visitato. Ma quale sarà il segreto che si cela dietro questi strani sogni incrociati?', '/8cFxeflG3pVRJcy339HwImTOUlc.jpg', '1472169600000', 'Animazione,Romance,Dramma', '1746894178357'),
(916224, 'movie', 'Suzume', 'Makoto Shinkai', 'La storia ha come protagonista una ragazza di 17 anni, Suzume, che vive in una tranquilla cittadina del Kyushu. Un giorno incontra un giovane viaggiatore che sta cercando una misteriosa "porta" e decide di seguirlo. Proprio la ragazza scopre l''esistenza di un vecchio portale tra le rovine delle montagne. La leggenda narra l''esistenza di diverse porte collegate tra loro in tutto il Giappone e che la chiusura di una di esse porti terribili sciagure.', '/z05lvxEuMZNgf7VwqBs87GTJJPU.jpg', '1668124800000', 'Animazione,Dramma,Avventura,Fantasy', '1746894178627'),
(110420, 'movie', 'Wolf Children - Ame e Yuki i bambini lupo', 'Mamoru Hosoda', 'I protagonisti, Ame e Yuki, sono due bambini apparentemente normali, che conducono una vita semplice con la madre Hana. Ma in realtà celano un segreto cruciale: il loro papà è un licantropo sparito misteriosamente e i bambini condividono la sua terribile eredità metamorfica… Come educarli?', '/2P7Uj8dyOmhzS66SaLyfceD1BjM.jpg', '1342828800000', 'Animazione,Famiglia,Dramma,Fantasy', '1746894178796'),
(916192, 'movie', 'The Tunnel to Summer, the Exit of Goodbyes', 'Tomohisa Taguchi', 'Secondo alcune voci, il tunnel di Urashima consente, attraversandolo, di raggiungere ciò che il cuore desidera… in cambio di alcuni anni della tua vita. Quando Kaoru si imbatte nel tunnel della leggenda, il ragazzo pensa a Karen, sorellina che ha perso anni prima in un incidente. Indeciso sul da farsi, a convincerlo a sfidare spazio e tempo è Anzu, studentessa appena trasferitasi. Ma cosa vorrà la giovane da Kaoru? E cosa rimarrà a quest’ultimo, dopo che il tunnel avrà finito con lui?', '/so3KRcToWtDaR2Ece4DkVFBFvNe.jpg', '1662681600000', 'Animazione,Dramma,Romance,Fantasy,Fantascienza', '1746894178960'),
(615165, 'movie', 'A te che conosci l’azzurro del cielo - Her Blue Sky', 'Tatsuyuki Nagai', 'Dopo la morte dei propri genitori, Akane inizia a prendersi cura della sorella minore Aoi, la quale da quel momento inizia a sentire un profondo debito di riconoscenza. Per stare con Aoi, Akane aveva tuttavia rinunciato a trasferirsi a Tokyo con il fidanzato Shinnosuke, tanto che i due non si erano più tenuti in contatto. Il giovane – dopo tredici anni dal loro ultimo incontro – ritorna tuttavia nella città delle due ragazze, in circostanze misteriose.', '/lVBd9fRkpyEgitoDE9qstLCX6og.jpg', '1570752000000', 'Animazione,Romance', '1746894179136'),
(71883, 'movie', 'Redline', 'Takeshi Koike', 'Redline è il nome della gara automobilistica illegale più grande dell''universo che si svolge una volta ogni cinque anni in un luogo dello spazio che viene rivelato solo un minuto prima della partenza. Il pilota protagonista JP vuole partecipare e ha bisogno di qualificarsi ottenendo una buona posizione alla gara Yellowline, ma prima di tagliare il traguardo qualcosa non va per il verso giusto.', '/fQ0UYOHuU6n2qsoYZ44pG59sFzb.jpg', '1250208000000', 'Animazione,Azione,Fantascienza', '1746894179425'),
(530079, 'movie', 'Ride Your Wave', 'Masaaki Yuasa', 'Hinako Mukaimizu è una diciannovenne che, dopo essere stata intrappolata nel suo appartamento da un incendio, viene soccorsa da Minato Hinageshi, un pompiere di ventuno anni caratterizzato da un forte desiderio di aiutare il prossimo. I due si innamorano, tuttavia Minato muore all''improvviso, cercando di salvare una persona che stava annegando. La giovane scopre però che, cantando "Brand New Story", un brano che i due giovani amavano particolarmente, Minato riappare all''interno dell''acqua. Hinako scopre però che ciò non avviene per caso, ma ha lo scopo di farle prendere coscienza su cosa sia la vita e sul suo futuro.', '/1MyTFWvJ8lTsMC1AcbK07hcJ0hp.jpg', '1561075200000', 'Animazione,Romance,Commedia,Dramma,Fantasy', '1746894179697'),
(364111, 'movie', 'The Anthem of the Heart', 'Tatsuyuki Nagai', 'La storia è ambientata a Chichibu, dove una ragazzina di nome Jun Naruse ha la tendenza a gridare i suoi veri sentimenti alle persone, ma che così facendo finisce sempre per ferirle. Un giorno, una fata a forma di uovo afferma di poterle risolvere il suo problema e così, dopo che Jun accetta il suo aiuto, questi le toglie la facoltà di parlare. Al liceo la vita di Jun cambierà di nuovo, quando scoprirà cosa sono la musica e l''amicizia.', '/7bJHM6t6j3YLjDNTwe4hyghKqSr.jpg', '1442620800000', 'Animazione,Dramma,Musica,Romance', '1746894179886'),
(315465, 'movie', 'The Boy and the Beast', 'Mamoru Hosoda', 'Kyuta è un bambino senza genitori. Smarritosi per le vie di Tokio, si ritrova in un universo parallelo dove incontra Kumatetsu, una creatura simile ad un orso che lotta per vivere. Kumatetsu prende Kyuta sotto la sua protezione e gli insegna tutti i segreti dell''arte del combattimento. Ormai cresciuto, il giovane Kyuta torna a Tokio mosso dal desiderio di riscoprire le sue origini. Lì scoprirà l’amore e una verità che non credeva più possibile...Ma proprio nel momento in cui sembrava raggiunta la serenità, i nemici del passato si ripresentano minando la sicurezza dell’intera città. Sarà pronto Kyuta per dimostrare a Kumatetsu di essere il più forte?', '/kzKJxfIdZ70nsPfKyq7hlYlJwSx.jpg', '1436572800000', 'Azione,Avventura,Animazione,Dramma,Famiglia,Fantasy', '1746894180156');


-- Inserisci i rating (WorkRating)
INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_4552_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746894160428,
  1746894160428
FROM Work w
WHERE w.externalId = 4552 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_487631_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894160628,
  1746894160628
FROM Work w
WHERE w.externalId = 487631 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_348_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894160788,
  1746894160788
FROM Work w
WHERE w.externalId = 348 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_348_8bde425d-94ee-5042-afa2-28340eaec3eb',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  9.5,
  1746894160788,
  1746894160788
FROM Work w
WHERE w.externalId = 348 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_348_9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  10,
  1746894160788,
  1746894160788
FROM Work w
WHERE w.externalId = 348 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_7857_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  5,
  1746894160958,
  1746894160958
FROM Work w
WHERE w.externalId = 7857 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_7857_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  6,
  1746894160958,
  1746894160958
FROM Work w
WHERE w.externalId = 7857 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_7857_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746894160958,
  1746894160958
FROM Work w
WHERE w.externalId = 7857 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_915935_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746894161131,
  1746894161131
FROM Work w
WHERE w.externalId = 915935 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_340666_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746894161288,
  1746894161288
FROM Work w
WHERE w.externalId = 340666 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_340666_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746894161288,
  1746894161288
FROM Work w
WHERE w.externalId = 340666 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_340666_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746894161288,
  1746894161288
FROM Work w
WHERE w.externalId = 340666 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_340666_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746894161288,
  1746894161288
FROM Work w
WHERE w.externalId = 340666 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_17609_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746894161458,
  1746894161458
FROM Work w
WHERE w.externalId = 17609 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_185_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894161619,
  1746894161619
FROM Work w
WHERE w.externalId = 185 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_185_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746894161619,
  1746894161619
FROM Work w
WHERE w.externalId = 185 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_185_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746894161619,
  1746894161619
FROM Work w
WHERE w.externalId = 185 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_185_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746894161619,
  1746894161619
FROM Work w
WHERE w.externalId = 185 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_714888_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746894161779,
  1746894161779
FROM Work w
WHERE w.externalId = 714888 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_25649_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746894161958,
  1746894161958
FROM Work w
WHERE w.externalId = 25649 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_25649_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746894161958,
  1746894161958
FROM Work w
WHERE w.externalId = 25649 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_25649_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  10,
  1746894161958,
  1746894161958
FROM Work w
WHERE w.externalId = 25649 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_798286_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746894162129,
  1746894162129
FROM Work w
WHERE w.externalId = 798286 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_798286_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746894162129,
  1746894162129
FROM Work w
WHERE w.externalId = 798286 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_335984_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746894162462,
  1746894162462
FROM Work w
WHERE w.externalId = 335984 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_335984_user8',
  w.id,
  w.externalId,
  'user8',
  9,
  1746894162462,
  1746894162462
FROM Work w
WHERE w.externalId = 335984 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_335984_user9',
  w.id,
  w.externalId,
  'user9',
  10,
  1746894162462,
  1746894162462
FROM Work w
WHERE w.externalId = 335984 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_68_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  6,
  1746894162620,
  1746894162620
FROM Work w
WHERE w.externalId = 68 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_68_user3',
  w.id,
  w.externalId,
  'user3',
  8,
  1746894162620,
  1746894162620
FROM Work w
WHERE w.externalId = 68 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_68_user4',
  w.id,
  w.externalId,
  'user4',
  5.5,
  1746894162620,
  1746894162620
FROM Work w
WHERE w.externalId = 68 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_68_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746894162620,
  1746894162620
FROM Work w
WHERE w.externalId = 68 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_68_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746894162620,
  1746894162620
FROM Work w
WHERE w.externalId = 68 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_736732_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7.5,
  1746894162779,
  1746894162779
FROM Work w
WHERE w.externalId = 736732 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_736732_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746894162779,
  1746894162779
FROM Work w
WHERE w.externalId = 736732 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_736732_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8.5,
  1746894162779,
  1746894162779
FROM Work w
WHERE w.externalId = 736732 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_491584_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894162938,
  1746894162938
FROM Work w
WHERE w.externalId = 491584 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_491584_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746894162938,
  1746894162938
FROM Work w
WHERE w.externalId = 491584 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_491584_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746894162938,
  1746894162938
FROM Work w
WHERE w.externalId = 491584 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_491584_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746894162938,
  1746894162938
FROM Work w
WHERE w.externalId = 491584 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1026227_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746894163089,
  1746894163089
FROM Work w
WHERE w.externalId = 1026227 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1026227_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746894163089,
  1746894163089
FROM Work w
WHERE w.externalId = 1026227 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1026227_user9',
  w.id,
  w.externalId,
  'user9',
  7,
  1746894163089,
  1746894163089
FROM Work w
WHERE w.externalId = 1026227 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_420187_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746894163249,
  1746894163249
FROM Work w
WHERE w.externalId = 420187 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_420187_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746894163249,
  1746894163249
FROM Work w
WHERE w.externalId = 420187 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_997294_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746894163419,
  1746894163419
FROM Work w
WHERE w.externalId = 997294 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_16_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894163579,
  1746894163579
FROM Work w
WHERE w.externalId = 16 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_16_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746894163579,
  1746894163579
FROM Work w
WHERE w.externalId = 16 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_16_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  10,
  1746894163579,
  1746894163579
FROM Work w
WHERE w.externalId = 16 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_774370_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894163749,
  1746894163749
FROM Work w
WHERE w.externalId = 774370 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_774370_user3',
  w.id,
  w.externalId,
  'user3',
  8,
  1746894163749,
  1746894163749
FROM Work w
WHERE w.externalId = 774370 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_774370_9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8,
  1746894163749,
  1746894163749
FROM Work w
WHERE w.externalId = 774370 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38810_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894163913,
  1746894163913
FROM Work w
WHERE w.externalId = 38810 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_141_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746894164234,
  1746894164234
FROM Work w
WHERE w.externalId = 141 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_141_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746894164234,
  1746894164234
FROM Work w
WHERE w.externalId = 141 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_758866_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894164400,
  1746894164400
FROM Work w
WHERE w.externalId = 758866 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_181886_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894164562,
  1746894164562
FROM Work w
WHERE w.externalId = 181886 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_181886_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746894164562,
  1746894164562
FROM Work w
WHERE w.externalId = 181886 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_181886_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746894164562,
  1746894164562
FROM Work w
WHERE w.externalId = 181886 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_181886_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746894164562,
  1746894164562
FROM Work w
WHERE w.externalId = 181886 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_34647_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746894164730,
  1746894164730
FROM Work w
WHERE w.externalId = 34647 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_985_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894164893,
  1746894164893
FROM Work w
WHERE w.externalId = 985 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_985_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746894164893,
  1746894164893
FROM Work w
WHERE w.externalId = 985 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_985_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746894164893,
  1746894164893
FROM Work w
WHERE w.externalId = 985 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_985_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746894164893,
  1746894164893
FROM Work w
WHERE w.externalId = 985 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38_user4',
  w.id,
  w.externalId,
  'user4',
  7.5,
  1746894165051,
  1746894165051
FROM Work w
WHERE w.externalId = 38 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9.5,
  1746894165051,
  1746894165051
FROM Work w
WHERE w.externalId = 38 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1156125_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746894165213,
  1746894165213
FROM Work w
WHERE w.externalId = 1156125 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13807_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894165361,
  1746894165361
FROM Work w
WHERE w.externalId = 13807 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1946_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746894165561,
  1746894165561
FROM Work w
WHERE w.externalId = 1946 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1946_9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8.5,
  1746894165561,
  1746894165561
FROM Work w
WHERE w.externalId = 1946 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_334536_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894165721,
  1746894165721
FROM Work w
WHERE w.externalId = 334536 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_550_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746894165891,
  1746894165891
FROM Work w
WHERE w.externalId = 550 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_550_user9',
  w.id,
  w.externalId,
  'user9',
  7,
  1746894165891,
  1746894165891
FROM Work w
WHERE w.externalId = 550 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_14537_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746894166235,
  1746894166235
FROM Work w
WHERE w.externalId = 14537 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_103328_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746894166382,
  1746894166382
FROM Work w
WHERE w.externalId = 103328 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_49797_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746894166542,
  1746894166542
FROM Work w
WHERE w.externalId = 49797 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_49797_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746894166542,
  1746894166542
FROM Work w
WHERE w.externalId = 49797 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_49797_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746894166542,
  1746894166542
FROM Work w
WHERE w.externalId = 49797 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_49797_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746894166542,
  1746894166542
FROM Work w
WHERE w.externalId = 49797 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_24188_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894166702,
  1746894166702
FROM Work w
WHERE w.externalId = 24188 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_2654_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746894166861,
  1746894166861
FROM Work w
WHERE w.externalId = 2654 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_2654_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746894166861,
  1746894166861
FROM Work w
WHERE w.externalId = 2654 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_26451_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746894167021,
  1746894167021
FROM Work w
WHERE w.externalId = 26451 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_26451_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746894167021,
  1746894167021
FROM Work w
WHERE w.externalId = 26451 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_781099_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746894167181,
  1746894167181
FROM Work w
WHERE w.externalId = 781099 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_937746_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746894167343,
  1746894167343
FROM Work w
WHERE w.externalId = 937746 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_937746_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746894167343,
  1746894167343
FROM Work w
WHERE w.externalId = 937746 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_937746_user9',
  w.id,
  w.externalId,
  'user9',
  6.5,
  1746894167343,
  1746894167343
FROM Work w
WHERE w.externalId = 937746 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_889737_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  4,
  1746894167523,
  1746894167523
FROM Work w
WHERE w.externalId = 889737 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_889737_9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  4,
  1746894167523,
  1746894167523
FROM Work w
WHERE w.externalId = 889737 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_870360_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894167676,
  1746894167676
FROM Work w
WHERE w.externalId = 870360 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_870360_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746894167676,
  1746894167676
FROM Work w
WHERE w.externalId = 870360 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_870360_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746894167676,
  1746894167676
FROM Work w
WHERE w.externalId = 870360 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_870360_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746894167676,
  1746894167676
FROM Work w
WHERE w.externalId = 870360 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_11482_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746894167836,
  1746894167836
FROM Work w
WHERE w.externalId = 11482 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_11482_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746894167836,
  1746894167836
FROM Work w
WHERE w.externalId = 11482 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_399174_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894168013,
  1746894168013
FROM Work w
WHERE w.externalId = 399174 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_399174_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746894168013,
  1746894168013
FROM Work w
WHERE w.externalId = 399174 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_399174_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746894168013,
  1746894168013
FROM Work w
WHERE w.externalId = 399174 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_399174_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746894168013,
  1746894168013
FROM Work w
WHERE w.externalId = 399174 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_398173_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746894168182,
  1746894168182
FROM Work w
WHERE w.externalId = 398173 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_398173_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746894168182,
  1746894168182
FROM Work w
WHERE w.externalId = 398173 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_398173_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746894168182,
  1746894168182
FROM Work w
WHERE w.externalId = 398173 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_398173_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746894168182,
  1746894168182
FROM Work w
WHERE w.externalId = 398173 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_56231_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894168342,
  1746894168342
FROM Work w
WHERE w.externalId = 56231 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_56231_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746894168342,
  1746894168342
FROM Work w
WHERE w.externalId = 56231 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_56231_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8.5,
  1746894168342,
  1746894168342
FROM Work w
WHERE w.externalId = 56231 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_439_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746894168513,
  1746894168513
FROM Work w
WHERE w.externalId = 439 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_439_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746894168513,
  1746894168513
FROM Work w
WHERE w.externalId = 439 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_439_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  10,
  1746894168513,
  1746894168513
FROM Work w
WHERE w.externalId = 439 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_439_user9',
  w.id,
  w.externalId,
  'user9',
  10,
  1746894168513,
  1746894168513
FROM Work w
WHERE w.externalId = 439 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46738_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746894168673,
  1746894168673
FROM Work w
WHERE w.externalId = 46738 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46738_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746894168673,
  1746894168673
FROM Work w
WHERE w.externalId = 46738 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46738_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9.5,
  1746894168673,
  1746894168673
FROM Work w
WHERE w.externalId = 46738 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46738_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746894168673,
  1746894168673
FROM Work w
WHERE w.externalId = 46738 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_406_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746894168824,
  1746894168824
FROM Work w
WHERE w.externalId = 406 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_406_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746894168824,
  1746894168824
FROM Work w
WHERE w.externalId = 406 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_406_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746894168824,
  1746894168824
FROM Work w
WHERE w.externalId = 406 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_406_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746894168824,
  1746894168824
FROM Work w
WHERE w.externalId = 406 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_457955_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894168982,
  1746894168982
FROM Work w
WHERE w.externalId = 457955 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1279_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746894169144,
  1746894169144
FROM Work w
WHERE w.externalId = 1279 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1279_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746894169144,
  1746894169144
FROM Work w
WHERE w.externalId = 1279 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_5156_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894169303,
  1746894169303
FROM Work w
WHERE w.externalId = 5156 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_5156_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746894169303,
  1746894169303
FROM Work w
WHERE w.externalId = 5156 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_5156_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746894169303,
  1746894169303
FROM Work w
WHERE w.externalId = 5156 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_576845_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746894169483,
  1746894169483
FROM Work w
WHERE w.externalId = 576845 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_500_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894169663,
  1746894169663
FROM Work w
WHERE w.externalId = 500 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_500_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8.5,
  1746894169663,
  1746894169663
FROM Work w
WHERE w.externalId = 500 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_500_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746894169663,
  1746894169663
FROM Work w
WHERE w.externalId = 500 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746894169824,
  1746894169824
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_user3',
  w.id,
  w.externalId,
  'user3',
  10,
  1746894169824,
  1746894169824
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746894169824,
  1746894169824
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  10,
  1746894169824,
  1746894169824
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_8bde425d-94ee-5042-afa2-28340eaec3eb',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  9,
  1746894169824,
  1746894169824
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_user8',
  w.id,
  w.externalId,
  'user8',
  9,
  1746894169824,
  1746894169824
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76341_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746894169824,
  1746894169824
FROM Work w
WHERE w.externalId = 76341 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_300669_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7.5,
  1746894170163,
  1746894170163
FROM Work w
WHERE w.externalId = 300669 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_300669_8bde425d-94ee-5042-afa2-28340eaec3eb',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746894170163,
  1746894170163
FROM Work w
WHERE w.externalId = 300669 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_539033_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894170324,
  1746894170324
FROM Work w
WHERE w.externalId = 539033 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_603_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746894170656,
  1746894170656
FROM Work w
WHERE w.externalId = 603 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_603_user9',
  w.id,
  w.externalId,
  'user9',
  10,
  1746894170656,
  1746894170656
FROM Work w
WHERE w.externalId = 603 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_839369_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894170805,
  1746894170805
FROM Work w
WHERE w.externalId = 839369 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_62215_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746894170957,
  1746894170957
FROM Work w
WHERE w.externalId = 62215 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_62215_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9.5,
  1746894170957,
  1746894170957
FROM Work w
WHERE w.externalId = 62215 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_19_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746894171113,
  1746894171113
FROM Work w
WHERE w.externalId = 19 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_19_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8.5,
  1746894171113,
  1746894171113
FROM Work w
WHERE w.externalId = 19 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1050035_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894171284,
  1746894171284
FROM Work w
WHERE w.externalId = 1050035 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1018_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746894171446,
  1746894171446
FROM Work w
WHERE w.externalId = 1018 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1018_user3',
  w.id,
  w.externalId,
  'user3',
  10,
  1746894171446,
  1746894171446
FROM Work w
WHERE w.externalId = 1018 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1018_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746894171446,
  1746894171446
FROM Work w
WHERE w.externalId = 1018 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1018_8bde425d-94ee-5042-afa2-28340eaec3eb',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  10,
  1746894171446,
  1746894171446
FROM Work w
WHERE w.externalId = 1018 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1018_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746894171446,
  1746894171446
FROM Work w
WHERE w.externalId = 1018 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_6977_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894171838,
  1746894171838
FROM Work w
WHERE w.externalId = 6977 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_9589_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746894171985,
  1746894171985
FROM Work w
WHERE w.externalId = 9589 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_258216_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746894172145,
  1746894172145
FROM Work w
WHERE w.externalId = 258216 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_249397_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746894172304,
  1746894172304
FROM Work w
WHERE w.externalId = 249397 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_26955_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894172464,
  1746894172464
FROM Work w
WHERE w.externalId = 26955 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_496243_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746894172644,
  1746894172644
FROM Work w
WHERE w.externalId = 496243 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_496243_user3',
  w.id,
  w.externalId,
  'user3',
  9,
  1746894172644,
  1746894172644
FROM Work w
WHERE w.externalId = 496243 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_496243_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746894172644,
  1746894172644
FROM Work w
WHERE w.externalId = 496243 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_496243_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8.5,
  1746894172644,
  1746894172644
FROM Work w
WHERE w.externalId = 496243 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_496243_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746894172644,
  1746894172644
FROM Work w
WHERE w.externalId = 496243 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_976893_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746894172814,
  1746894172814
FROM Work w
WHERE w.externalId = 976893 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_976893_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746894172814,
  1746894172814
FROM Work w
WHERE w.externalId = 976893 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_635731_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7.5,
  1746894172973,
  1746894172973
FROM Work w
WHERE w.externalId = 635731 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_792307_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894173145,
  1746894173145
FROM Work w
WHERE w.externalId = 792307 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_792307_user4',
  w.id,
  w.externalId,
  'user4',
  9.5,
  1746894173145,
  1746894173145
FROM Work w
WHERE w.externalId = 792307 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_792307_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8.5,
  1746894173145,
  1746894173145
FROM Work w
WHERE w.externalId = 792307 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_912480_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746894173305,
  1746894173305
FROM Work w
WHERE w.externalId = 912480 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_912480_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746894173305,
  1746894173305
FROM Work w
WHERE w.externalId = 912480 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_505192_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894173458,
  1746894173458
FROM Work w
WHERE w.externalId = 505192 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_833339_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894173734,
  1746894173734
FROM Work w
WHERE w.externalId = 833339 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_833339_8bde425d-94ee-5042-afa2-28340eaec3eb',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746894173734,
  1746894173734
FROM Work w
WHERE w.externalId = 833339 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_586461_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894174045,
  1746894174045
FROM Work w
WHERE w.externalId = 586461 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1008042_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746894174215,
  1746894174215
FROM Work w
WHERE w.externalId = 1008042 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_242224_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746894174586,
  1746894174586
FROM Work w
WHERE w.externalId = 242224 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_242224_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746894174586,
  1746894174586
FROM Work w
WHERE w.externalId = 242224 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_242224_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8.5,
  1746894174586,
  1746894174586
FROM Work w
WHERE w.externalId = 242224 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_242224_8bde425d-94ee-5042-afa2-28340eaec3eb',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746894174586,
  1746894174586
FROM Work w
WHERE w.externalId = 242224 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_242224_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746894174586,
  1746894174586
FROM Work w
WHERE w.externalId = 242224 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13855_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746894174855,
  1746894174855
FROM Work w
WHERE w.externalId = 13855 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_306947_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7.5,
  1746894175044,
  1746894175044
FROM Work w
WHERE w.externalId = 306947 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_306947_8bde425d-94ee-5042-afa2-28340eaec3eb',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  6,
  1746894175044,
  1746894175044
FROM Work w
WHERE w.externalId = 306947 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_306947_user9',
  w.id,
  w.externalId,
  'user9',
  8,
  1746894175044,
  1746894175044
FROM Work w
WHERE w.externalId = 306947 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_301365_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746894175215,
  1746894175215
FROM Work w
WHERE w.externalId = 301365 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_301365_user4',
  w.id,
  w.externalId,
  'user4',
  8.5,
  1746894175215,
  1746894175215
FROM Work w
WHERE w.externalId = 301365 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_301365_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  10,
  1746894175215,
  1746894175215
FROM Work w
WHERE w.externalId = 301365 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_301365_user9',
  w.id,
  w.externalId,
  'user9',
  9,
  1746894175215,
  1746894175215
FROM Work w
WHERE w.externalId = 301365 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_269776_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746894175384,
  1746894175384
FROM Work w
WHERE w.externalId = 269776 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_310131_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746894175655,
  1746894175655
FROM Work w
WHERE w.externalId = 310131 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_310131_8bde425d-94ee-5042-afa2-28340eaec3eb',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  9,
  1746894175655,
  1746894175655
FROM Work w
WHERE w.externalId = 310131 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_310131_user9',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746894175655,
  1746894175655
FROM Work w
WHERE w.externalId = 310131 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_7345_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746894175926,
  1746894175926
FROM Work w
WHERE w.externalId = 7345 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_7345_user4',
  w.id,
  w.externalId,
  'user4',
  9,
  1746894175926,
  1746894175926
FROM Work w
WHERE w.externalId = 7345 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_7345_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746894175926,
  1746894175926
FROM Work w
WHERE w.externalId = 7345 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_627_user4',
  w.id,
  w.externalId,
  'user4',
  8,
  1746894176097,
  1746894176097
FROM Work w
WHERE w.externalId = 627 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_627_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746894176097,
  1746894176097
FROM Work w
WHERE w.externalId = 627 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_627_user9',
  w.id,
  w.externalId,
  'user9',
  7.5,
  1746894176097,
  1746894176097
FROM Work w
WHERE w.externalId = 627 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38473_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746894176555,
  1746894176555
FROM Work w
WHERE w.externalId = 38473 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38473_user3',
  w.id,
  w.externalId,
  'user3',
  9,
  1746894176555,
  1746894176555
FROM Work w
WHERE w.externalId = 38473 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38473_user4',
  w.id,
  w.externalId,
  'user4',
  10,
  1746894176555,
  1746894176555
FROM Work w
WHERE w.externalId = 38473 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_38473_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746894176555,
  1746894176555
FROM Work w
WHERE w.externalId = 38473 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_744857_bf3989da-315e-5cf6-a218-b670f3406e8e',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  6,
  1746894177125,
  1746894177125
FROM Work w
WHERE w.externalId = 744857 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_783675_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  10,
  1746894177295,
  1746894177295
FROM Work w
WHERE w.externalId = 783675 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_783675_user8',
  w.id,
  w.externalId,
  'user8',
  10,
  1746894177295,
  1746894177295
FROM Work w
WHERE w.externalId = 783675 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_504253_user8',
  w.id,
  w.externalId,
  'user8',
  10,
  1746894177576,
  1746894177576
FROM Work w
WHERE w.externalId = 504253 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_504253_user13',
  w.id,
  w.externalId,
  'user13',
  9,
  1746894177576,
  1746894177576
FROM Work w
WHERE w.externalId = 504253 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_378064_user8',
  w.id,
  w.externalId,
  'user8',
  10,
  1746894177746,
  1746894177746
FROM Work w
WHERE w.externalId = 378064 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_149_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746894177926,
  1746894177926
FROM Work w
WHERE w.externalId = 149 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_372058_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9.5,
  1746894178357,
  1746894178357
FROM Work w
WHERE w.externalId = 372058 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_372058_user8',
  w.id,
  w.externalId,
  'user8',
  10,
  1746894178357,
  1746894178357
FROM Work w
WHERE w.externalId = 372058 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_372058_user13',
  w.id,
  w.externalId,
  'user13',
  9,
  1746894178357,
  1746894178357
FROM Work w
WHERE w.externalId = 372058 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_916224_user8',
  w.id,
  w.externalId,
  'user8',
  9,
  1746894178627,
  1746894178627
FROM Work w
WHERE w.externalId = 916224 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_110420_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  10,
  1746894178796,
  1746894178796
FROM Work w
WHERE w.externalId = 110420 AND w.type = 'movie';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_315465_3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746894180156,
  1746894180156
FROM Work w
WHERE w.externalId = 315465 AND w.type = 'movie';

INSERT INTO Work (externalId, type, title, director, description, imageUrl, releaseDate, genres, createdAt)
VALUES
(1396, 'tvshow', 'Breaking Bad', '', 'Un insegnante di chimica con un cancro allo stadio terminale comincia a produrre e spacciare metanfetamina con un suo ex studente per assicurare un futuro alla famiglia.', '/ineLOBPG8AZsluYwnkMpHRyu7L.jpg', '1200787200000', '', '1746897843369'),
(60059, 'tvshow', 'Better Call Saul', '', 'Sei anni prima che Saul Goodman conosca Walter White. Incontreremo l''uomo che sarà conosciuto come Saul Goodman, quando era ancora noto col nome di Jimmy McGill, un avvocato da poco, alla ricerca del suo destino, e che, al momento, cerca di arrivare a fine mese. Lavorando fianco a fianco e, spesso, contro Jimmy McGill, c''è il "tuttofare" Mike Erhmantraut.', '/zjg4jpK1Wp2kiRvtt5ND0kznako.jpg', '1423353600000', '', '1746897843537'),
(46648, 'tvshow', 'True Detective', '', 'Le storie di alcuni detective della polizia e della loro lotta per la cattura dei criminali attraverso metodi non convenzionali. Mentre lavorano ai casi più complicati, gli agenti cercano di affrontare i propri demoni personali.', '/cuV2O5ZyDLHSOWzg3nLVljp1ubw.jpg', '1389484800000', '', '1746897843699'),
(60622, 'tvshow', 'Fargo', '', 'Una serie antologica, ispirata all''omonimo film del 1996. In ogni stagione, nuovi personaggi vengono coinvolti nelle indagini per omicidio in diverse città del Midwest, con crimini apparentemente non correlati tra loro.', '/6U9CPeD8obHzweikFhiLhpc7YBT.jpg', '1397520000000', '', '1746897843844'),
(1438, 'tvshow', 'The Wire', '', 'La trama dell''opera è basata sulla lotta tra una speciale unità di polizia e una potente banda che controlla il traffico di stupefacenti. La particolarità e l''innovazione della serie sta, oltre che nell''accurato realismo dei personaggi, siano essi poliziotti o membri delle gang, nel narrare passo dopo passo l''indagine di polizia, dalla nascita all''evolversi fino alla conclusione.', '/4lbclFySvugI51fwsyxBTOm4DqK.jpg', '1022976000000', '', '1746897843996'),
(1414, 'tvshow', 'The Shield', '', 'I protagonisti sono quattro detective corrotti: Vic, Shane, Lem e Ronnie. Quattro migliori amici dal legame indissolubile che va oltre i normali rapporti lavorativi che si instaurano generalmente tra colleghi. Tutti e quattro si riuniscono sempre in una stanza privata, una sorta di piccola "tana" dove a nessuno è concesso entrare, in cui pianificano tutti i sotterfugi da mettere in atto per il proprio tornaconto. Usano la loro posizione per controllare direttamente gli spacciatori e le gang per creare una serie di intrallazzi per arricchirsi. A lungo andare, finiranno per invischiarsi in traffici più grandi e per coprire le loro mosse illegali cominciano a compierne di peggiori tanto da diventare più criminali dei criminali stessi. Le vite dei quattro detective finiscono per scontrarsi con un destino sempre più duro per colpa delle indagini su di loro che diventeranno sempre più reali e pericolose. Tutto ciò farà nascere, tra i quattro, problemi nel loro rapporto che si trasformeranno in qualcosa di più tragico.', '/AfdZXqqlFsPUEfi6kWWWthxw7Nz.jpg', '1015891200000', '', '1746897844167'),
(46511, 'tvshow', 'Utopia', '', 'La serie è un thriller cospirativo che racconta la storia dei possessori del sequel di un graphic novel, "The Utopia Experiments". Essi sono il bersaglio di una pericolosa organizzazione, capeggiata dal misterioso Mr. Rabbit, che tenterà con qualsiasi mezzo di procurarsi il manoscritto e conoscere il segreto di Utopia.', '/snOU6W5CU7aGVSVu29wBWzdzNzi.jpg', '1358208000000', '', '1746897844311'),
(1398, 'tvshow', 'I Soprano', '', 'La famiglia Soprano, i cui avi italiani sono originari di Avellino, vanta importanti contatti con le cosche newyorkesi e mantiene relazioni affaristiche con la Camorra napoletana. Il boss è soggetto ad attacchi di panico che lo portano sul lettino di una psicoanalista, alla quale confida ben presto i suoi turbamenti legati alla famiglia, in particolare nel rapporto col terribile personaggio della madre Livia: i suoi guai però passano anche attraverso il complesso legame con la moglie Carmela (connivente ma estranea alle imprese criminali del marito), i figli adolescenti, lo zio (fratello del padre) che non lo considera come boss e lo contrasta in ogni modo. A questi problemi personali si aggiungono quelli "lavorativi", in cui Tony deve destreggiarsi fra l''FBI, traditori della sua stessa famiglia e boss in ascesa di famiglie rivali.', '/7tsJV3jjjGr70eh3WSOLXj8Z65A.jpg', '915926400000', '', '1746897844446'),
(54344, 'tvshow', 'The Leftovers - Svaniti nel nulla', '', 'Un giorno di ottobre, improvvisamente, il 2% della popolazione mondiale (140 milioni di persone) scompare in un solo istante. Alcuni si convincono che la Terra sia stata colpita dal "Rapimento della Chiesa", altri rifiutano di vederlo come un evento mistico, e nessuno, in realtà, sa veramente cosa sia accaduto. La serie ha inizio tre anni dopo l''evento, e segue le vicende della comunità di Mapleton, dove sono scomparsi nel nulla oltre cento abitanti.', '/i4bBwRrJc0xKUm88fIxjhAehd0X.jpg', '1404000000000', '', '1746897844584'),
(1405, 'tvshow', 'Dexter', '', 'Dexter Morgan, all''apparenza un tranquillo e metodico tecnico della polizia scientifica di Miami, è in realtà un feroce e spietato serial killer, che però agisce seguendo un proprio rigoroso codice: uccidere soltanto criminali che sono sfuggiti alla giustizia.', '/q8dWfc4JwQuv3HayIZeO84jAXED.jpg', '1159660800000', '', '1746897844720'),
(100088, 'tvshow', 'The Last of Us', '', 'Vent’anni dopo la distruzione della civiltà moderna Joel, uno scaltro sopravvissuto, viene incaricato di far uscire Ellie, una ragazza di 14 anni, da una zona di quarantena sotto stretta sorveglianza. Un compito all’apparenza facile che si trasforma presto in un viaggio brutale e straziante, in cui i due si troveranno a dover attraversare gli Stati Uniti insieme e a dipendere l’uno dall’altra per sopravvivere.', '/6WlffOd3bszyndGgsKGcUL6k28n.jpg', '1673740800000', '', '1746897844856'),
(41597, 'tvshow', 'Romanzo criminale', '', 'La serie televisiva incentrata sulle vicende della Banda della Magliana, basata sull''omonimo romanzo del giudice Giancarlo De Cataldo. Roma, fine anni ''70: tre ragazzi, il Libanese, il Freddo e il Dandi si accordano per formare una banda criminale e assumere il controllo del traffico di droga. L''unico che tenta di mettere fine a quest''egemonia è Nicola Scialoja, un ispettore di polizia giovane e idealista.', '/4Ib3nB4kuHoqjtUC8og4270oBWt.jpg', '1226188800000', '', '1746897844993'),
(67744, 'tvshow', 'MINDHUNTER', '', 'Un agente dell''unità crimini seriali dell''FBI sviluppa tecniche di profilazione criminale mentre dà la caccia a noti serial killer e stupratori.', '/fbKE87mojpIETWepSbD5Qt741fp.jpg', '1507852800000', '', '1746897845129'),
(1920, 'tvshow', 'I segreti di Twin Peaks', '', 'La serie è ambientata nella fittizia cittadina montana di Twin Peaks situata nello Stato di Washington, a cinque miglia dal confine tra Stati Uniti e Canada. L''apparente tranquillità di questo frammento di America viene turbata dal ritrovamento del cadavere di Laura Palmer, figlia unica dell''avvocato Leland, nonché una delle ragazze più popolari della città. Le indagini affidate all''agente speciale Dale Cooper permettono di far affiorare il lato oscuro e nascosto del luogo e dei suoi abitanti.', '/lA9CNSdo50iQPZ8A2fyVpMvJZAf.jpg', '639532800000', '', '1746897845268'),
(87108, 'tvshow', 'Chernobyl', '', 'Chernobyl è una miniserie televisiva statunitense e britannica, creata e scritta da Craig Mazin e diretta da Johan Renck. Le cinque puntate drammatizzano la vera storia di una delle peggiori catastrofi create dall''uomo a oltre 30 anni dall''accaduto e segue gli uomini e le donne che si sono sacrificati per salvare l''Europa da un disastro inimmaginabile.', '/hlLXt2tOPT6RRnjiUmoxyG1LTFi.jpg', '1557100800000', '', '1746897845416'),
(94997, 'tvshow', 'House of the Dragon', '', 'La serie prequel vede la dinastia Targaryen all''apice assoluto del suo potere, con più di 15 draghi sotto il loro giogo. La maggior parte degli imperi, che siano reali o immaginari, crollano quando raggiungono tali poteri e tali altezze. Nel caso dei Targaryen, la loro lenta caduta inizia quasi 193 anni prima degli eventi de Il Trono di Spade, quando re Viserys Targaryen rompe un secolo di tradizione nominando sua figlia Rhaenyra erede al Trono di Spade. La corte rimane scioccata quando Rhaenyra mantiene il suo status di erede nonostante Viserys in seguito avrà un figlio maschio, legittimo erede. Inizia così ad attecchire il seme della divisione e forti attriti in tutto il regno.', '/paD01zRRCY3lXo038pvs2Avu0Q7.jpg', '1661040000000', '', '1746897845553'),
(1399, 'tvshow', 'Il Trono di Spade', '', 'Nell''immaginario mondo di Westeros, in un tempo dal sapore medievale, s''intrecciano le vicende di alcune casate che lottano per la supremazia: i Baratheon, i Lannister, gli Stark, i Targaryen sono solo alcune delle famiglie che, tra guerre manifeste e intrighi clandestini, in un interminabile rovescio di fortune e alleanze, cercano di trionfare sugli avversari e prendere possesso del Trono di Spade, simbolo del potere e del comando. Tratto dal ciclo di romanzi Cronache del ghiaccio e del fuoco di George R. R. Martin.', '/n4IxkaZanXQU89WNRxt8h1fw1yb.jpg', '1302998400000', '', '1746897845690'),
(34307, 'tvshow', 'Shameless', '', 'Ecco a voi Frank Gallagher: l''orgoglioso patriarca della classe operaia di una variegata prole di sei intelligenti, vivaci e indipendenti figli che senza di lui... starebbero meglio. I Gallagher sono irriverenti, affettuosi, resistenti e sono assolutamente, selvaggiamente e impenitentemente spudorati.', '/9akij7PqZ1g6zl42DQQTtL9CTSb.jpg', '1294531200000', '', '1746897845828'),
(95396, 'tvshow', 'Scissione', '', 'Mark guida un team di impiegati la cui memoria è stata chirurgicamente scissa per dividere i ricordi della vita lavorativa da quelli della vita privata. Quando un misterioso collega compare fuori dalla Lumon Corporation, inizia un viaggio alla scoperta della verità riguardo al loro lavoro.', '/vhTkJpcc4UeJjI1mU0bPgYfM8Ar.jpg', '1645056000000', '', '1746897845977'),
(87739, 'tvshow', 'La regina degli scacchi', '', 'In un orfanotrofio del Kentucky negli anni ''50 una ragazza scopre di avere un talento incredibile per gli scacchi. Nel frattempo lotta con un problema di dipendenza.', '/2yiEKBcHbH8rghII7wARdYQCeQj.jpg', '1603411200000', '', '1746897846126'),
(118357, 'tvshow', '1883', '', 'La famiglia Dutton intraprende un viaggio verso ovest attraverso le Grandi Pianure verso l''ultimo bastione dell''America selvaggia. Una cruda rivisitazione dell''espansione occidentale e uno studio intenso di una famiglia che fugge dalla povertà per cercare un futuro migliore nella terra promessa dell''America: il Montana.', '/waLbm384SQDwLTCn6ttPqQS5kfV.jpg', '1639872000000', '', '1746897846263'),
(19885, 'tvshow', 'Sherlock', '', 'La serie è un libero adattamento dei romanzi e dei racconti di Sir Arthur Conan Doyle e vede come protagonista il detective Sherlock Holmes, affiancato dal suo amico e assistente, il dottor John Watson. Le avventure dei due si svolgono però nella Londra odierna, e non in quella presentata da Doyle. Watson è un reduce della guerra in Afghanistan e deve ancora ritrovare il suo posto nella società. Quando un amico gli suggerisce di trovarsi un coinquilino con cui dividere le spese di un appartamento, si ritrova a vivere con l''eccentrico Holmes, che col passare degli anni diventerà suo compagno di vita. Sono state realizzate quattro stagioni, ognuna delle quali composta da tre episodi, un mini episodio e un episodio speciale.', '/p55m1BGgaoerP76mFHUn4Z9jJQC.jpg', '1280016000000', '', '1746897846402'),
(72597, 'tvshow', 'Manhunt', '', 'Manhunt è una serie antologica dedicata alla caccia da parte dell’FBI a famosi esecutori occidentali di attacchi terroristici.', '/9ukZcwaqcObmmxxfcIXTgVMvalJ.jpg', '1501545600000', '', '1746897846551'),
(67070, 'tvshow', 'Fleabag', '', 'Fleabag è una donna londinese priva di filtri inibitori che cerca di superare un lutto, ma si ostina ed allontana chiunque tenti di aiutarla mantenendo un atteggiamento spavaldo.', '/27vEYsRKa3eAniwmoccOoluEXQ1.jpg', '1469059200000', '', '1746897846686'),
(42009, 'tvshow', 'Black Mirror', '', 'Una serie antologica di racconti angosciosi e spiazzanti che rivelano i tratti umani più oscuri, le innovazioni più sensazionali e tanto altro ancora.', '/seN6rRfN0I6n8iDXjlSMk1QjNcq.jpg', '1322956800000', '', '1746897846825'),
(2316, 'tvshow', 'The Office (US)', '', 'Questa commedia di successo racconta le manie di impiegati insoddisfatti e del loro goffo capo Michael Scott all''industria cartiera Dunder Mifflin.', '/dg9e5fPRRId8PoBE0F6jl5y85Eu.jpg', '1111622400000', '', '1746897846961'),
(84773, 'tvshow', 'Il Signore degli Anelli: Gli Anelli del Potere', '', 'Migliaia di anni prima degli eventi raccontati ne Lo Hobbit e Il Signore degli Anelli, durante un periodo di relativa pace, nel corso della Seconda Era della Terra di Mezzo, si assiste alla forgiatura degli Anelli del Potere, all''ascesa dell''Oscuro Signore Sauron, alla caduta del regno insulare di Númenor e all''ultima alleanza tra Elfi e Uomini.', '/qUdlsQeJlInEfCD10pAWBO9W0Qb.jpg', '1661990400000', '', '1746897847098'),
(76479, 'tvshow', 'The Boys', '', 'Uno sguardo irriverente a ciò che succede quando i supereroi, che sono popolari come le celebrità, influenti come i politici e venerati come dei, abusano dei loro superpoteri invece di utilizzarli a fin di bene. Quando i The Boys si lanciano in una missione eroica per svelare la verità riguardo ai "Sette" sostenuti dalla Vought, inizia una lotta tra senza poteri e superpotenti.', '/2zmTngn1tYC1AvfnrFLhxeD82hz.jpg', '1564012800000', '', '1746897847236'),
(63351, 'tvshow', 'Narcos', '', 'La storia vera dei potenti e violentissimi cartelli della droga colombiani ha ispirato questa serie drammatica e cruda.', '/rTmal9fDbwh5F0waol2hq35U4ah.jpg', '1440720000000', '', '1746897847386'),
(70523, 'tvshow', 'Dark', '', 'La scomparsa di due bambini in una città tedesca porta alla luce i rapporti chiusi, la vita matrimoniale e il passato di quattro famiglie che vi abitano.', '/budeAEqeWcspxOHcKA0prS669N0.jpg', '1512086400000', '', '1746897847539'),
(93405, 'tvshow', 'Squid Game', '', 'Centinaia di individui a corto di denaro accettano uno strano invito a competere in giochi per bambini. Li attende un premio invitante, ma la posta in gioco è mortale.', '/nW5rupC5zMeAGgGBYXkr8JL8Xq7.jpg', '1631836800000', '', '1746897847709'),
(76331, 'tvshow', 'Succession', '', 'Creata da Jesse Armstrong, la pluripremiata serie sulle vicende dell''anziano proprietario di un impero delle comunicazioni, che deve decidere a chi lasciare la sua eredità.', '/z0XiwdrCQ9yVIr4O0pxzaAYRxdW.jpg', '1527984000000', '', '1746897847854'),
(125988, 'tvshow', 'Silo', '', 'In un futuro tossico e in rovina, migliaia di persone vivono in un enorme silo sotterraneo. Dopo la violazione di una regola cardine da parte dello sceriffo e la morte misteriosa di alcuni residenti, Juliette, un tecnico, comincia a svelare dei segreti scioccanti e la verità sul silo.', '/pmr33vtyZdanSvptAmvngpdB4v3.jpg', '1683158400000', '', '1746897848014'),
(1425, 'tvshow', 'House of Cards - Gli intrighi del potere', '', 'Ambientato ai giorni nostri a Washington D.C., House of Cards è la storia di Frank Underwood, un democratico del quinto distretto congressuale della Carolina del Sud che, nonostante avesse sostenuto Garrett Walker come futuro Presidente degli Stati Uniti, viene silurato per la carica di Segretario di Stato. Decide allora di esigere la propria vendetta personale nei confronti dei vertici politici di Washington che lo hanno tradito.', '/mySje8BQMUL2UDjSRG9GeBEmh1F.jpg', '1359676800000', '', '1746897848164'),
(124364, 'tvshow', 'FROM', '', 'In una città da incubo nel centro dell’America che intrappola tutti coloro che entrano, i residenti riluttanti combattono per rimanere in vita e cercano una via d’uscita. Ma sono afflitti dalle minacce della foresta circostante, comprese le terrificanti creature notturne.', '/oRTAA5VqHi2W2rfkiJ3fHiGfI9M.jpg', '1645315200000', '', '1746897848314'),
(155537, 'tvshow', 'Black Bird', '', 'Jimmy Keene sta per scontare una condanna a 10 anni, ma riceve un''offerta incredibile, che potrebbe ridargli la libertà: deve riuscire a far confessare Larry Hall, un presunto killer. Compiere la missione si rivela una sfida senza precedenti.', '/qu312pwM61NPTr7nexvovCClDNP.jpg', '1657152000000', '', '1746897848474'),
(68467, 'tvshow', '3%', '', 'In un futuro in cui l''élite vive su un''isola paradisiaca lontana dai bassifondi sovraffollati, hai solo una possibilità di unirti a quel 3% che è sfuggito allo squallore.', '/bbwjI8rp88XNA4fdEex3kOwbr9O.jpg', '1480032000000', '', '1746897848624'),
(71446, 'tvshow', 'La casa di carta', '', 'Otto ladri si barricano nell''edificio della Zecca spagnola con alcuni ostaggi, mentre una mente criminale manipola la polizia per mettere in atto il suo piano.', '/u1RSyTfhoKBMlVqXfoEzGldlDtL.jpg', '1493683200000', '', '1746897848768'),
(210315, 'tvshow', 'Qui non è Hollywood', '', 'Il 26 agosto del 2010 una quindicenne di nome Sarah scompare ad Avetrana. Tutto il paese è in subbuglio, soprattutto la cugina Sabrina. Sembra una fuga innocente, ma non lo è. Mentre tutti la cercano, Sarah è già stata inghiottita nel nulla. Da uno dei più noti casi di cronaca nera italiana, la scioccante storia di una scomparsa, rappresentata attraverso gli occhi dei protagonisti.', '/qnsprYVHgyRxoqFGCo0K4YSVWlA.jpg', '1730246400000', '', '1746897848918');


-- Inserisci i rating (WorkRating)
INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1396_user13_s',
  w.id,
  w.externalId,
  'user13',
  10,
  1746897843369,
  1746897843369
FROM Work w
WHERE w.externalId = 1396 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1396_3875feef-943f-5e0a-8ce5-e9a71e97f358_s',
  w.id,
  w.externalId,
  '3875feef-943f-5e0a-8ce5-e9a71e97f358',
  9.5,
  1746897843369,
  1746897843369
FROM Work w
WHERE w.externalId = 1396 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1396_user3_s',
  w.id,
  w.externalId,
  'user3',
  9.5,
  1746897843369,
  1746897843369
FROM Work w
WHERE w.externalId = 1396 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1396_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  10,
  1746897843369,
  1746897843369
FROM Work w
WHERE w.externalId = 1396 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1396_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  10,
  1746897843369,
  1746897843369
FROM Work w
WHERE w.externalId = 1396 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1396_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  10,
  1746897843369,
  1746897843369
FROM Work w
WHERE w.externalId = 1396 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1396_user8_s',
  w.id,
  w.externalId,
  'user8',
  10,
  1746897843369,
  1746897843369
FROM Work w
WHERE w.externalId = 1396 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1396_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746897843369,
  1746897843369
FROM Work w
WHERE w.externalId = 1396 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60059_user13_s',
  w.id,
  w.externalId,
  'user13',
  10,
  1746897843537,
  1746897843537
FROM Work w
WHERE w.externalId = 60059 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60059_user3_s',
  w.id,
  w.externalId,
  'user3',
  10,
  1746897843537,
  1746897843537
FROM Work w
WHERE w.externalId = 60059 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60059_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  10,
  1746897843537,
  1746897843537
FROM Work w
WHERE w.externalId = 60059 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60059_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  9,
  1746897843537,
  1746897843537
FROM Work w
WHERE w.externalId = 60059 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60059_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9,
  1746897843537,
  1746897843537
FROM Work w
WHERE w.externalId = 60059 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60059_user8_s',
  w.id,
  w.externalId,
  'user8',
  10,
  1746897843537,
  1746897843537
FROM Work w
WHERE w.externalId = 60059 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60059_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746897843537,
  1746897843537
FROM Work w
WHERE w.externalId = 60059 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46648_user13_s',
  w.id,
  w.externalId,
  'user13',
  9.5,
  1746897843699,
  1746897843699
FROM Work w
WHERE w.externalId = 46648 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46648_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746897843699,
  1746897843699
FROM Work w
WHERE w.externalId = 46648 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46648_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  10,
  1746897843699,
  1746897843699
FROM Work w
WHERE w.externalId = 46648 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46648_user8_s',
  w.id,
  w.externalId,
  'user8',
  9,
  1746897843699,
  1746897843699
FROM Work w
WHERE w.externalId = 46648 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46648_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746897843699,
  1746897843699
FROM Work w
WHERE w.externalId = 46648 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60622_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746897843844,
  1746897843844
FROM Work w
WHERE w.externalId = 60622 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60622_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  10,
  1746897843844,
  1746897843844
FROM Work w
WHERE w.externalId = 60622 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60622_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9.5,
  1746897843844,
  1746897843844
FROM Work w
WHERE w.externalId = 60622 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60622_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746897843844,
  1746897843844
FROM Work w
WHERE w.externalId = 60622 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1438_user3_s',
  w.id,
  w.externalId,
  'user3',
  9,
  1746897843996,
  1746897843996
FROM Work w
WHERE w.externalId = 1438 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1438_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  10,
  1746897843996,
  1746897843996
FROM Work w
WHERE w.externalId = 1438 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1438_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746897843996,
  1746897843996
FROM Work w
WHERE w.externalId = 1438 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1438_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  10,
  1746897843996,
  1746897843996
FROM Work w
WHERE w.externalId = 1438 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1414_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746897844167,
  1746897844167
FROM Work w
WHERE w.externalId = 1414 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1414_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746897844167,
  1746897844167
FROM Work w
WHERE w.externalId = 1414 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46511_user3_s',
  w.id,
  w.externalId,
  'user3',
  9,
  1746897844311,
  1746897844311
FROM Work w
WHERE w.externalId = 46511 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46511_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746897844311,
  1746897844311
FROM Work w
WHERE w.externalId = 46511 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1398_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746897844446,
  1746897844446
FROM Work w
WHERE w.externalId = 1398 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1398_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  9,
  1746897844446,
  1746897844446
FROM Work w
WHERE w.externalId = 1398 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1398_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8.5,
  1746897844446,
  1746897844446
FROM Work w
WHERE w.externalId = 1398 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1398_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746897844446,
  1746897844446
FROM Work w
WHERE w.externalId = 1398 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_54344_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746897844584,
  1746897844584
FROM Work w
WHERE w.externalId = 54344 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1405_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746897844720,
  1746897844720
FROM Work w
WHERE w.externalId = 1405 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_100088_user13_s',
  w.id,
  w.externalId,
  'user13',
  9,
  1746897844856,
  1746897844856
FROM Work w
WHERE w.externalId = 100088 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_100088_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746897844856,
  1746897844856
FROM Work w
WHERE w.externalId = 100088 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_41597_user3_s',
  w.id,
  w.externalId,
  'user3',
  8.5,
  1746897844993,
  1746897844993
FROM Work w
WHERE w.externalId = 41597 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_41597_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9,
  1746897844993,
  1746897844993
FROM Work w
WHERE w.externalId = 41597 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_67744_user13_s',
  w.id,
  w.externalId,
  'user13',
  9,
  1746897845129,
  1746897845129
FROM Work w
WHERE w.externalId = 67744 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_67744_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746897845129,
  1746897845129
FROM Work w
WHERE w.externalId = 67744 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1920_user3_s',
  w.id,
  w.externalId,
  'user3',
  10,
  1746897845268,
  1746897845268
FROM Work w
WHERE w.externalId = 1920 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1920_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8,
  1746897845268,
  1746897845268
FROM Work w
WHERE w.externalId = 1920 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1920_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746897845268,
  1746897845268
FROM Work w
WHERE w.externalId = 1920 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_87108_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8,
  1746897845416,
  1746897845416
FROM Work w
WHERE w.externalId = 87108 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_87108_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746897845416,
  1746897845416
FROM Work w
WHERE w.externalId = 87108 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_94997_user13_s',
  w.id,
  w.externalId,
  'user13',
  9,
  1746897845553,
  1746897845553
FROM Work w
WHERE w.externalId = 94997 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_94997_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897845553,
  1746897845553
FROM Work w
WHERE w.externalId = 94997 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_94997_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746897845553,
  1746897845553
FROM Work w
WHERE w.externalId = 94997 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_94997_user8_s',
  w.id,
  w.externalId,
  'user8',
  8.5,
  1746897845553,
  1746897845553
FROM Work w
WHERE w.externalId = 94997 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_94997_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746897845553,
  1746897845553
FROM Work w
WHERE w.externalId = 94997 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1399_3875feef-943f-5e0a-8ce5-e9a71e97f358_s',
  w.id,
  w.externalId,
  '3875feef-943f-5e0a-8ce5-e9a71e97f358',
  9,
  1746897845690,
  1746897845690
FROM Work w
WHERE w.externalId = 1399 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1399_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897845690,
  1746897845690
FROM Work w
WHERE w.externalId = 1399 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1399_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  9,
  1746897845690,
  1746897845690
FROM Work w
WHERE w.externalId = 1399 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1399_user8_s',
  w.id,
  w.externalId,
  'user8',
  7.5,
  1746897845690,
  1746897845690
FROM Work w
WHERE w.externalId = 1399 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1399_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746897845690,
  1746897845690
FROM Work w
WHERE w.externalId = 1399 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_34307_user3_s',
  w.id,
  w.externalId,
  'user3',
  8.5,
  1746897845828,
  1746897845828
FROM Work w
WHERE w.externalId = 34307 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_34307_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746897845828,
  1746897845828
FROM Work w
WHERE w.externalId = 34307 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_95396_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8,
  1746897845977,
  1746897845977
FROM Work w
WHERE w.externalId = 95396 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_95396_user9_s',
  w.id,
  w.externalId,
  'user9',
  8.5,
  1746897845977,
  1746897845977
FROM Work w
WHERE w.externalId = 95396 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_87739_user13_s',
  w.id,
  w.externalId,
  'user13',
  8,
  1746897846126,
  1746897846126
FROM Work w
WHERE w.externalId = 87739 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_87739_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746897846126,
  1746897846126
FROM Work w
WHERE w.externalId = 87739 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_118357_user3_s',
  w.id,
  w.externalId,
  'user3',
  8,
  1746897846263,
  1746897846263
FROM Work w
WHERE w.externalId = 118357 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_118357_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746897846263,
  1746897846263
FROM Work w
WHERE w.externalId = 118357 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_19885_user13_s',
  w.id,
  w.externalId,
  'user13',
  7.5,
  1746897846402,
  1746897846402
FROM Work w
WHERE w.externalId = 19885 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_19885_user3_s',
  w.id,
  w.externalId,
  'user3',
  8,
  1746897846402,
  1746897846402
FROM Work w
WHERE w.externalId = 19885 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_19885_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897846402,
  1746897846402
FROM Work w
WHERE w.externalId = 19885 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_19885_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9,
  1746897846402,
  1746897846402
FROM Work w
WHERE w.externalId = 19885 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_19885_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7.5,
  1746897846402,
  1746897846402
FROM Work w
WHERE w.externalId = 19885 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_72597_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746897846551,
  1746897846551
FROM Work w
WHERE w.externalId = 72597 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_67070_user3_s',
  w.id,
  w.externalId,
  'user3',
  8,
  1746897846686,
  1746897846686
FROM Work w
WHERE w.externalId = 67070 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_67070_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897846686,
  1746897846686
FROM Work w
WHERE w.externalId = 67070 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_42009_user3_s',
  w.id,
  w.externalId,
  'user3',
  7,
  1746897846825,
  1746897846825
FROM Work w
WHERE w.externalId = 42009 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_42009_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9,
  1746897846825,
  1746897846825
FROM Work w
WHERE w.externalId = 42009 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_2316_user3_s',
  w.id,
  w.externalId,
  'user3',
  9.5,
  1746897846961,
  1746897846961
FROM Work w
WHERE w.externalId = 2316 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_84773_user13_s',
  w.id,
  w.externalId,
  'user13',
  8,
  1746897847098,
  1746897847098
FROM Work w
WHERE w.externalId = 84773 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_84773_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746897847098,
  1746897847098
FROM Work w
WHERE w.externalId = 84773 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_84773_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746897847098,
  1746897847098
FROM Work w
WHERE w.externalId = 84773 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_84773_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746897847098,
  1746897847098
FROM Work w
WHERE w.externalId = 84773 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76479_3875feef-943f-5e0a-8ce5-e9a71e97f358_s',
  w.id,
  w.externalId,
  '3875feef-943f-5e0a-8ce5-e9a71e97f358',
  6.5,
  1746897847236,
  1746897847236
FROM Work w
WHERE w.externalId = 76479 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76479_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897847236,
  1746897847236
FROM Work w
WHERE w.externalId = 76479 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76479_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8.5,
  1746897847236,
  1746897847236
FROM Work w
WHERE w.externalId = 76479 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76479_user8_s',
  w.id,
  w.externalId,
  'user8',
  9,
  1746897847236,
  1746897847236
FROM Work w
WHERE w.externalId = 76479 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76479_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  6.5,
  1746897847236,
  1746897847236
FROM Work w
WHERE w.externalId = 76479 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_63351_user3_s',
  w.id,
  w.externalId,
  'user3',
  7,
  1746897847386,
  1746897847386
FROM Work w
WHERE w.externalId = 63351 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_63351_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8.5,
  1746897847386,
  1746897847386
FROM Work w
WHERE w.externalId = 63351 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_63351_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7.5,
  1746897847386,
  1746897847386
FROM Work w
WHERE w.externalId = 63351 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_70523_3875feef-943f-5e0a-8ce5-e9a71e97f358_s',
  w.id,
  w.externalId,
  '3875feef-943f-5e0a-8ce5-e9a71e97f358',
  7.5,
  1746897847539,
  1746897847539
FROM Work w
WHERE w.externalId = 70523 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_70523_user3_s',
  w.id,
  w.externalId,
  'user3',
  8,
  1746897847539,
  1746897847539
FROM Work w
WHERE w.externalId = 70523 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_70523_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746897847539,
  1746897847539
FROM Work w
WHERE w.externalId = 70523 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_70523_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746897847539,
  1746897847539
FROM Work w
WHERE w.externalId = 70523 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_70523_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7.5,
  1746897847539,
  1746897847539
FROM Work w
WHERE w.externalId = 70523 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_93405_3875feef-943f-5e0a-8ce5-e9a71e97f358_s',
  w.id,
  w.externalId,
  '3875feef-943f-5e0a-8ce5-e9a71e97f358',
  8,
  1746897847709,
  1746897847709
FROM Work w
WHERE w.externalId = 93405 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_93405_user3_s',
  w.id,
  w.externalId,
  'user3',
  7.5,
  1746897847709,
  1746897847709
FROM Work w
WHERE w.externalId = 93405 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_93405_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746897847709,
  1746897847709
FROM Work w
WHERE w.externalId = 93405 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_93405_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746897847709,
  1746897847709
FROM Work w
WHERE w.externalId = 93405 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_93405_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7,
  1746897847709,
  1746897847709
FROM Work w
WHERE w.externalId = 93405 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76331_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7,
  1746897847854,
  1746897847854
FROM Work w
WHERE w.externalId = 76331 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_125988_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7,
  1746897848014,
  1746897848014
FROM Work w
WHERE w.externalId = 125988 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1425_user3_s',
  w.id,
  w.externalId,
  'user3',
  7,
  1746897848164,
  1746897848164
FROM Work w
WHERE w.externalId = 1425 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1425_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7,
  1746897848164,
  1746897848164
FROM Work w
WHERE w.externalId = 1425 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_124364_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  7,
  1746897848314,
  1746897848314
FROM Work w
WHERE w.externalId = 124364 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_124364_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7,
  1746897848314,
  1746897848314
FROM Work w
WHERE w.externalId = 124364 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_155537_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7,
  1746897848474,
  1746897848474
FROM Work w
WHERE w.externalId = 155537 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_68467_user3_s',
  w.id,
  w.externalId,
  'user3',
  7,
  1746897848624,
  1746897848624
FROM Work w
WHERE w.externalId = 68467 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_71446_user3_s',
  w.id,
  w.externalId,
  'user3',
  6.5,
  1746897848768,
  1746897848768
FROM Work w
WHERE w.externalId = 71446 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_71446_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  4,
  1746897848768,
  1746897848768
FROM Work w
WHERE w.externalId = 71446 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_71446_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8,
  1746897848768,
  1746897848768
FROM Work w
WHERE w.externalId = 71446 AND w.type = 'tvshow';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_210315_user13_s',
  w.id,
  w.externalId,
  'user13',
  8.5,
  1746897848918,
  1746897848918
FROM Work w
WHERE w.externalId = 210315 AND w.type = 'tvshow';

INSERT INTO Work (externalId, type, title, director, description, imageUrl, releaseDate, genres, createdAt) VALUES
(46195, 'anime', 'Monogatari', '', 'Sebbene ci siano ancora tracce del breve periodo in cui divenne un vampiro, lo studente del terzo anno delle superiori Koyomi Araragi è di nuovo umano. Si imbatte in altri con i loro problemi soprannaturali e scopre di poter entrare in empatia. Koyomi viene coinvolto nelle loro vite, cercando di aiutarli e di tanto in tanto chiedendo consiglio a Meme Oshino, il senzatetto che lo ha aiutato a diventare di nuovo umano.', '/zCEjjb1NH3LLsWeZx47wOeqkezf.jpg', '1246579200000', '', '1746897989770'),
(62564, 'anime', 'Sound! Euphonium', '', 'Il club musicale del liceo Kitauji, vanta un’illustre tradizione e molti buoni piazzamenti a livello nazionale, ma da quando è cambiato il professore responsabile del club il livello è drasticamente calato, e con esso i successi sono svaniti. Il club è fermo al palo delle competizioni prefetturali e non riesce mai a superare lo scoglio dei concorsi del Kansai, ma un nuovo professore è stato assegnato alla guida del club e grazie alla sua determinazione gli studenti stanno lentamente cominciando nuovamente a migliorare. I problemi da affrontare quotidianamente saranno molti, non si tratta solo di scoprire il diamante grezzo e il talento nascosto. Gli studenti non vanno tutti d’accordo, ci sono rivalità interne e dovranno confrontarsi anche con problemi personali e scolastici che potranno portare qualcuno anche alla sofferta decisione di abbandonare il club.', '/l0hKrx6PjQRrHiMzK2Fanen2xbL.jpg', '1428451200000', '', '1746897990033'),
(119100, 'anime', 'BOCCHI THE ROCK!', '', 'Hitori Gotou è una liceale che inizia a imparare a suonare la chitarra in quanto il suo sogno è di entrare a far parte di una band, ma è talmente timida da non avere nemmeno un amico. Ma il suo sogno potrebbe avverarsi in seguito all''incontro con Nijika Ijichi, una ragazza che suona la batteria ed è alla ricerca proprio di un chitarrista per la band in cui suona.', '/cxgVuMocdbWo5Pn9AIlnNiEg4Qu.jpg', '1665273600000', '', '1746897990283'),
(57041, 'anime', 'Gintama', '', 'La storia ha luogo nel Giappone del periodo Edo dopo che gli Amanto, un insieme di razze aliene provenienti da diversi pianeti, hanno invaso la terra proibendo l''uso della spada e causando così la progressiva caduta dell''epoca dei samurai. Una delle poche persone che possiedono ancora l''anima e la forza dei samurai è Gintoki Sakata, il capo di un agenzia tuttofare composta anche da Shinpachi Shimura e una ragazza aliena di nome Kagura.

La serie è composta prevalentemente da episodi autoconclusivi, alcuni dei quali contenenti anche parodie di personaggi e situazioni di altri manga o anime.', '/f7vK8pzZIqhyA8sYmBpWmp9Ae7.jpg', '1144108800000', '', '1746897990557'),
(83121, 'anime', 'Kaguya-sama: Love is War', '', 'Considerato un genio grazie al suo perfetto rendimento scolastico, il presidente Miyuki Shirogane dirige il consiglio studentesco della prestigiosa Shuichiin Academy, aiutato dalla bella e ricca Kaguya Shinomiya, la sua vice. I due vengono spesso considerati la coppia perfetta, nonostante non ci sia nessuna relazione amorosa tra di loro. La verità però è che, avendo passato molto tempo insieme, entrambi hanno cominciato a provare qualcosa l''uno per l''altra. Tuttavia, poiché ritengono che le dichiarazioni d''amore sono segno di debolezza, nessuno dei due ha intenzione di confessare i propri sentimenti! Miyuki e Kaguya intraprendono così una guerra in cui ogni mezzo è lecito, pur di ottenere una confessione dell''altro/a. Che questa battaglia d''amore abbia inizio!', '/5khbC6AuNgnvnoDbjIMKCOhEtIc.jpg', '1547251200000', '', '1746897990842'),
(46298, 'anime', 'Hunter x Hunter', '', 'Mostri, animali rari, tesori e meraviglie, terre selvagge e luoghi inesplorati. La parola "sconosciuto" reca in sé un enorme fascino e vi sono persone incredibili al mondo attratte da tale potere. Esse sono conosciute con il nome di "Hunter"! Gon vuole diventare uno di loro, come suo padre prima di lui, ma riuscirà in questa incredibile impresa?', '/i2EEr2uBvRlAwJ8d8zTG2Y19mIa.jpg', '1317513600000', '', '1746897991102'),
(60863, 'anime', 'Haikyu!! L''asso del volley', '', 'Dopo aver assistito a una partita di pallavolo, il giovane Shouyou Hinata si pone come personale obiettivo di diventare "Il piccolo Gigante" di quello sport. Entrato nel club di pallavolo della sua scuola media, affronta insieme alla squadra il torneo interscolastico ma lui e i suoi compagni devono inchinarsi di fronte a una forte squadra guidata da un formidabile giocatore di nome Tobio Kageyama. Desideroso di arrivare ai vertici e di prendersi la rivincita su Kageyama, Shouyou continua a praticare la pallavolo anche alla sua entrata alle superiori, dove però trova nel club scolastico proprio il suo rivale Kageyama.', '/2SYVA8CA0E65DRFXEg34QpUYUu3.jpg', '1396742400000', '', '1746897991351'),
(209867, 'anime', 'Frieren - Oltre la Fine del Viaggio', '', 'La maga elfica Frieren e i suoi coraggiosi compagni d''avventura hanno sconfitto il Re Demone, portando finalmente la pace nella loro terra. Ora gli eroi possono prendere ognuno la propria strada, verso la meta comune di una vita tranquilla. In qualità di elfa, Frieren è destinata a un''esistenza lunghissima e a sopravvivere al resto del gruppo: come potrà fare i conti con la mortalità dei suoi amici? Riuscirà a trovare appagamento nella propria vita e a imparare a comprendere cosa significa vivere per gli esseri umani che la circondano? Per Frieren la battaglia potrà anche essersi conclusa ma il viaggio interiore che la attende sarà altrettanto duro e difficile…', '/8R68IpqR97EOxlKb6KgLsBAudsy.jpg', '1695945600000', '', '1746897991593'),
(61663, 'anime', 'Bugie d''aprile', '', 'Il pianista prodigio Arima Kousei dominava le competizioni e tutti i bambini musicisti conoscevano il suo nome. Ma dopo la morte della madre, sua istruttrice, ebbe un crollo mentale mentre si esibiva in un recital e da quel momento non riuscì più a sentire il suono del suo pianoforte, anche se il suo udito era perfettamente a posto. Vedeva il mondo in modo monotono, senza alcun tocco di colore, ma era contento di vivere la sua vita con i suoi buoni amici Tsubaki e Watari. Un giorno, una ragazza, Miyazono Kaori, violinista graziosa e libera, sconvolge tutto. Aiuta Kousei a tornare nel mondo della musica e gli mostra come la musica possa essere vissuta in modo libero.', '/rRjfH3ckTYz8z8aSkJshFL4VyK9.jpg', '1412899200000', '', '1746897991843'),
(1429, 'anime', 'L''attacco dei giganti', '', 'Diverse centinaia di anni fa, la razza umana fu quasi sterminata dai giganti. Si racconta di quanto questi fossero alti, privi di intelligenza e affamati di carne umana; peggio ancora, essi sembra divorassero umani più per piacere che per necessario sostentamento. Una piccola percentuale dell''umanità però sopravvisse asserragliandosi in una città circondata da mura estremamente alte, anche più alte del più grande di giganti. Eren è un adolescente che vive in questa città, dove non si vede un gigante da oltre un secolo. Ma presto un orrore indicibile si palesa alle sue porte, ed un gigante più grande di quanto si sia mai sentito narrare, appare dal nulla abbattendo le mura ed imperversando assieme ad altri suoi simili fra la popolazione. Eren, vinto il terrore iniziale, si ripromette di eliminare ogni singolo gigante, per vendicare l''umanità tutta.', '/b89Hz9HA65dXqX7grKilqNCWWj5.jpg', '1365292800000', '', '1746897992096'),
(37854, 'anime', 'One Piece', '', 'Monkey D. Rufy, soprannominato "Cappello di paglia", è un giovane pirata che sogna di diventare il Re dei pirati e di trovare il leggendario tesoro One Piece. Accidentalmente, da bambino, ha mangiato il frutto del diavolo Gom Gom, che gli ha conferito il potere dell''elasticità facendolo diventare letteralmente di gomma. È il capitano di una ciurma della quale fanno parte lo spadaccino Zoro, la navigatrice Nami, il cecchino Usop, il cuoco Sanji, la renna medico Chopper, l''archeologa Robin, il cyborg carpentiere  Franky e lo scheletro musicista Brook. Tutti insieme affrontano avventure epiche nel loro viaggio verso Raftel, l''isola alla fine della Rotta Maggiore, e, navigando attraverso il Mare Orientale, combattono contro pirati nemici e contro la Marina pur di conquistare il loro sogno.', '/cMD9Ygz11zjJzAovURpO75Qg7rT.jpg', '940377600000', '', '1746897992793'),
(124396, 'anime', 'Sonny Boy', '', 'La serie fantascientifica è incentrata su 36 ragazzi che durante un’estate si ritrovano improvvisamente in una scuola alla deriva in un’altra dimensione. Tra di loro ci sono Nagara, la misteriosa nuova studentessa Nozomi e i compagni di classe di Nagara Mizuho e Asakaze. I ragazzi dovranno cercare di sopravvivere in questa nuova dimensione con i loro appena risvegliati poteri.', '/39UveRvcopbCEqpx9HF3D4kGhKb.jpg', '1626393600000', '', '1746897993506'),
(117933, 'anime', 'Summer Time Rendering', '', 'Dopo la morte dei suoi genitori, Shinpei è stato accolto dalla famiglia Kofune e cresciuto come un figlio. Finita la scuola media, il ragazzo si trasferisce a Tokyo, ma non molto tempo dopo, un triste evento lo riporta sull''isola dov''è nato: la morte di Ushio, sua sorella adottiva e migliore amica. Dopo il funerale, Shinpei scopre che la morte della ragazza potrebbe non essere stata un incidente, ma un omicidio. Un''inquietante leggenda circa l''isola viene a galla...', '/m9e7chRW8Q8Go1Dv00RCUHbMoNe.jpg', '1649980800000', '', '1746897993755'),
(890, 'anime', 'Neon Genesis Evangelion', '', 'La storia si svolge nella futuristica città di Neo Tokyo-3 a distanza di quindici anni da una catastrofe di impatto planetario nota come Second Impact e si incentra su Shinji Ikari, un ragazzo che viene reclutato dall''organizzazione paramilitare Nerv per pilotare un mecha gigante chiamato Evangelion e combattere in questo modo i nemici dell''umanità conosciuti come Angeli. Nel corso degli eventi vengono presentati anche altri piloti di Evangelion e il personale di Nerv.', '/y2ah9t0navXyIvoHg1uIbIHO3tt.jpg', '812764800000', '', '1746897994030'),
(36041, 'anime', 'Bakuman', '', 'Mashiro Moritaka ha 14 anni e fin da piccolo ha dimostrato talento e passione per il disegno, grazie al quale ha vinto e ricevuto numerosi attestati. Ma questo per Moritaka è solo un hobby. Il ragazzo pensa di avere una vita normale, studiare, laurearsi e trovare lavoro presso una buona società senza dover essere fonte di preoccupazione per i suoi genitori, di dedicarsi a un lavoro da ufficio, seppur noioso. Rincasato, scopre di aver dimenticato il suo quaderno a scuola, ma tornato in classe si accorge allarmato che Akito Takagi, l''alunno migliore della sezione, tiene in mano il suo prezioso block notes: “Non essere così serio... non è un Death Note, no?”, gli dice il compagno, “Sapevo che saresti tornato a cercarlo. Così ti stavo aspettando!”. Per restituirglielo però Takagi pone una condizione: Moritaka dovrà disegnare un manga ideato da lui!  Riuscirà il suo cervellotico amico a trascinarlo nel mondo dell''editoria?', '/fwch4T5aUDPuJ6zUzkub8prfhtI.jpg', '1285977600000', '', '1746897994275'),
(31654, 'anime', 'Digimon: Digital Monsters', '', 'Sette bambini delle scuole elementari, Taichi, Yamato, Sora, Koshiro, Mimi, TaKeru e Jo, durante una vacanza in un campo estivo si ritrovano misteriosamente catapultati in una nuova dimensione popolata di strane creature chiamate Digimon. Alcune di queste creature legheranno subito con loro e dimostreranno sorprendenti capacità evolutive. Ora i ragazzi devono scoprire perchè sono finiti nell''isola di File, come andarsene e quel è il destino che li lega a questo mondo digitale.', '/mUhLvUY0ndhxWr1xmDp6bZgddUZ.jpg', '920764800000', '', '1746897994541'),
(63926, 'anime', 'One-Punch Man', '', 'Dopo un allenamento durato tre anni, un ragazzo di nome Saitama ha raggiunto il suo obiettivo: diventare la persona più forte del mondo. Passa i giorni scacciando i mostri e i criminali dalle città ma, a causa della poderosa forza acquisita, gli basta sferrare un solo pugno per riuscire a sconfiggere anche i nemici più potenti. Per questo Saitama è sempre annoiato e alla ricerca di un avversario che possa resistere ai suoi colpi...', '/jbYJuxfZMpYDalkiOnBcCv9TaL.jpg', '1444003200000', '', '1746897994791'),
(105248, 'anime', 'Cyberpunk: Edgerunners', '', 'In una realtà distopica pervasa da corruzione e cyborg, un ragazzo di strada talentuoso ma spericolato cerca di diventare un fuorilegge mercenario... un edgerunner.', '/lqcDVZ8pyk08AVftMBildDR3QUK.jpg', '1663027200000', '', '1746897995042'),
(31911, 'anime', 'Fullmetal Alchemist: Brotherhood', '', 'Ambientato in un mondo alternativo simile all''Europa di inizio 1900, narra i viaggi e la maturazione fisica e spirituale di due fratelli, Edward e Alphonse Elric. Abbandonati dal padre alchimista in tenera età e cresciuti quindi dalla sola madre Trisha, i due bambini manifestano fin da subito grandi attitudini nello studio delle scienze alchemiche. Questo li porta, anni dopo, a tentare una trasmutazione umana, il massimo dei tabù dell''alchimia, al fine di riportare in vita la madre, morta di malattia. Un’azione che pagheranno a caro prezzo, dando così inizio a una fantastica avventura che li porterà sulle tracce delle leggendaria Pietra Filosofale al fine di riparare all''errore commesso.', '/5ZFUEOULaVml7pQuXxhpR2SmVUw.jpg', '1238889600000', '', '1746897995292'),
(42410, 'anime', 'Durarara!!', '', 'Dagli stessi creatori di Baccano!, un anime ambientato in una violenta Tokyo popolata da giovani teppisti e gangster di ogni tipo. Gli eventi si svolgono nel quartiere Ikebukuro dove Ryugamine Mikado si trasferisce invitato dal suo amico di infanzia Kida Masaomi che subito lo avvisa di tenersi alla larga da alcuni loschi figuri che si aggirano nel quartiere: un uomo violento vestito da barista, un venditore di informazioni e una misteriosa gang che si fa chiamare "Dollars". Ma al suo arrivo in città Mikado si imbatterà in una Dullahan, una motociclista senza testa che guida con motore e fari spenti una grossa moto nera, che è considerato una leggenda urbana di cui tutti hanno il terrore, anche le gang di Ikebukuro.', '/ePTyPLVtMZdyPnU0KwFjrVCSQmI.jpg', '1262908800000', '', '1746897995562'),
(42253, 'anime', 'K-On!', '', 'Un nuovo anno di scuola superiore significa sempre molte cose da fare, e una di queste è entrare in un club. Essendo in un dilemma su quale club unirsi, Yui Hirasawa si imbatte e fa domanda per il Light Music Club, che lei interpreta erroneamente essere di suonare strumenti semplici, come le nacchere. Incapace di suonare uno strumento, decide di andarci per scusarsi e abbandonare.

Nel frattempo, il Club di Musica Leggera affronta lo scioglimento a causa della mancanza di membri. Questo fa sì che i membri del club offrano qualsiasi cosa, dal cibo alla pigrizia durante il tempo del club, al fine di convincere Yui ad unirsi. Nonostante i loro sforzi, Yui insiste nel lasciare a causa della sua mancanza di esperienza musicale. Come ultima risorsa, suonano un pezzo per Yui, che accende la sua passione ardente e finalmente la convince ad unirsi al club.', '/70hf2538UAf7mzzNgvqTlWq6PDf.jpg', '1238716800000', '', '1746897995833'),
(67075, 'anime', 'Mob Psycho 100', '', 'La storia di Mob Psycho 100 si sviluppa intorno a “Mob”, un ragazzo che esploderebbe se vivesse le sue emozioni al 100%. Questo ragazzo con strani poteri psichici ha guadagnato il suo nickname “Mob” (la folla, la massa) perché difficilmente si distingue in mezzo alle altre persone. Per evitare di perdere il controllo del suo corpo ed esplodere, quindi, il protagonista cerca di tenere chiusi dentro di sé tutti i suoi sentimenti, per condurre una vita normale. Ma la cosa non si rivelerà per niente facile.', '/vR7hwaGQ0ySRoq1WobiNRaPs4WO.jpg', '1468281600000', '', '1746897996102'),
(26867, 'anime', 'Mushishi', '', 'Non sono né piante né animali. Differiscono da altre forme di vita come i microrganismi e i funghi. Assomigliano invece al corpo primordiale della vita e sono generalmente conosciuti come "Mushi". La loro esistenza e il loro aspetto sono sconosciuti a molti e solo un numero limitato di umani ne è a conoscenza. Ginko è un "Mushi-shi" che viaggia per indagare e scoprire di più sul "Mushi". Nel processo, dà anche una mano alle persone che affrontano problemi con eventi soprannaturali che possono essere collegati al "Mushi".', '/4DE1JIxckx9uAKKusvSrbAt8tIw.jpg', '1130025600000', '', '1746897996373'),
(82739, 'anime', 'Rascal Does Not Dream of Bunny Girl Senpai', '', 'La vita di Sakuta Azusagawa prende una piega inaspettata quando incontra una giovane attrice, Mai Sakurajima, intenta a girovagare per una libreria con indosso un costume da coniglietta, ma senza che nessuno noti la sua presenza. Mai rimane incuriosita dal fatto che Sakuta sia l''unico in grado di vederla e che gli altri non considerino minimamente la sua presenza, anche quando indossa un abito meno stravagante o rimane lontana dalla sua vita da attrice. Chiamando questo fenomeno "Sindrome dell''adolescenza", Sakuta decide di risolvere il mistero, legando maggiormente con Mai e anche con altre ragazze che soffrono della stessa sindrome.', '/r0td1J4kALobMwjPKLGe7RwJ07o.jpg', '1538611200000', '', '1746897996776'),
(75214, 'anime', 'Violet Evergarden', '', 'La guerra è finita e Violet Evergarden cerca lavoro. Spaventata e priva di emozioni, accetta di scrivere lettere per gli altri in cerca di se stessa e del suo passato.', '/61EwFPqc0r1uJo6la49J55F8bQ8.jpg', '1515628800000', '', '1746897997023'),
(13916, 'anime', 'Death Note', '', 'Uno studente delle scuole superiori che trova un quaderno dai poteri soprannaturali chiamato Death Note, gettato sulla Terra dallo shinigami Ryuk. L''oggetto dona all''utilizzatore il potere di uccidere chiunque, semplicemente scrivendo il suo nome sul quaderno mentre ci si raffigura il volto. Light intende usare il Death Note per eliminare tutti i criminali e creare un mondo dove non ci sia il male, ma i suoi piani saranno contrastati dall''intervento di Elle[N 1], un famoso detective privato, chiamato ad indagare sul caso delle misteriose morti dei criminali.', '/tCZFfYTIwrR7n94J6G14Y4hAFU6.jpg', '1159920000000', '', '1746897997284'),
(203737, 'anime', 'Oshi no Ko', '', 'Il dottor Goro rinasce come figlio della giovane star Ai Hoshino dopo che il suo delirante stalker lo ha ucciso. Ora vuole aiutare la sua nuova madre a risalire la china, ma cosa può fare un bambino contro il lato oscuro dell''industria dello spettacolo?', '/gnNMGCDA2mZuVMHRvqi8BwAUJWj.jpg', '1681257600000', '', '1746897997574'),
(12971, 'anime', 'Dragon Ball Z', '', 'Dragon Ball Z narra le avventure di Goku, ormai divenuto adulto, il quale si è sposato con Chichi e da cui ha avuto due figli, Gohan e, successivamente, Goten. Con il proseguire della serie e delle avventure, aumentano sia gli avversari sia la loro potenza, e le battaglie che ne derivano causano un allontanamento sempre maggiore da quella che era la base della storia in Dragon Ball, ovvero la ricerca delle sfere del drago. Si privilegiano così la crescita dei personaggi e il susseguirsi degli scontri, affidandosi a una trama rivelatasi di enorme successo. La serie copre un arco narrativo di 22 anni, partendo dall''attacco di Radish e concludendosi con la partenza di Goku allo scopo di allenare Ub in occasione del 28º Torneo Tenkaichi.', '/i1lMlxir5E4jyeLlqS2bK1Cn3Tt.jpg', '609552000000', '', '1746897997875'),
(280110, 'anime', 'My Hero Academia: Vigilantes', '', 'Koichi Haimawari è un noioso universitario che aspira a diventare un eroe, ma ha rinunciato al suo sogno. Malgrado l''80% della popolazione mondiale possieda poteri chiamati Quirk, sono pochi gli individui prescelti a ergersi a difesa degli umani. Tutto cambia per Koichi quando lui e Pop☆Step vengono salvati dal vigilante Knuckleduster e vengono reclutati da lui per diventare loro stessi dei vigilanti!', '/iv0cXt6uJGlTryWZNQMGyum4Pme.jpg', '1743984000000', '', '1746897998125'),
(66958, 'anime', 'Orange', '', 'Nella primavera dei suoi sedici anni la liceale Naho Takamiya riceve una lettera dalla se stessa di dieci anni nel futuro, in cui vi sono riportati tutti gli eventi di quella giornata tra cui il trasferimento nella sua classe di un nuovo studente di nome Kakeru Naruse. La Naho del futuro ripete più volte di avere numerosi rimpianti, a cui desidera porre rimedio inducendo la se stessa del passato a prendere le decisioni giuste. In particolare, il contenuto della lettera verte proprio su Kakeru, il quale dieci anni dopo non sarà più in vita: Naho chiede infatti di vegliare su di lui per evitare che la tragedia si ripeta.', '/4if1RyNVV3cxkh6GBDUP4ItDKU8.jpg', '1467590400000', '', '1746897998399'),
(207250, 'anime', 'The Dangers in My Heart', '', 'Kyotaro Ichikawa sembra uno studente come tanti, ma nell''animo cova impulsi brutali che si insinuano nei suoi pensieri. Il principale oggetto dei suoi istinti è la compagna di classe Anna Yamada, tra le ragazze più belle e popolari della scuola. Quando la conoscerà davvero, però, Kyotaro si scoprirà a provare nuove sensazioni finora ignote.', '/mKhMmREBOKXtp3tlv9rnLRxZec5.jpg', '1680393600000', '', '1746897998655'),
(26453, 'anime', 'Trigun', '', 'In un mondo battuto da due Soli, dominato da immense ed aride distese di sabbia, vive Vash the Stampede, il tifone umanoide e leggendario ricercato da 60 miliardi di doppi dollari. Ma sarà davvero lui l''efferato pistolero di cui tutti parlano? Milly Thompson e Meryl Stryfe, due affascinanti agenti assicurativi, vengono messe alle sue costole per evitare ulteriori richieste di risarcimento.', '/lwLFZFB3S2PeOLtWksaWerF6B4D.jpg', '891475200000', '', '1746897998919'),
(30984, 'anime', 'Bleach', '', 'Bleach segue la vita di Ichigo Kurosaki, uno studente quindicenne con l''abilità di vedere i fantasmi, e di Rukia Kuchiki, uno Shinigami che lo incontra durante una caccia ad un Hollow. Durante lo scontro con lo spirito, Rukia rimane gravemente ferita ed è costretta a trasferire parte dei suoi poteri ad Ichigo, che accetta la proposta della Shinigami nel tentativo di proteggere i suoi familiari, alimentando così la speranza di Rukia che lui sconfigga l''Hollow al suo posto. Tuttavia, durante il processo di trasferimento qualcosa va storto, e Ichigo assorbe tutti i poteri di Rukia, diventando uno Shinigami a pieno titolo. Da qui parte la loro avventura. Insieme, danno la caccia agli Hollow ed eseguono la sepoltura delle anime, mandando gli spiriti erranti nel posto che gli spetta di diritto, sia questo l''Inferno o la Soul Society.', '/2EewmxXe72ogD0EaWM8gqa0ccIw.jpg', '1096934400000', '', '1746897999166'),
(30991, 'anime', 'Cowboy Bebop', '', 'Nel 2071, cinquant''anni dopo un incidente ad un portale iperspaziale che ha reso la terra inabitabile, l''umanità ha colonizzato gran parte dei pianeti e delle lune del Sistema Solare. Di fronte un crescente tasso di criminalità, la Inter Solar System Police (ISSP) istituisce un sistema legale a contratti in cui i cacciatori di taglie (spesso chiamati "Cowboys") seguono e catturano i criminali in cambio di una ricompensa.', '/xDiXDfZwC6XYC6fxHI1jl3A3Ill.jpg', '891561600000', '', '1746897999446'),
(220542, 'anime', 'Il monologo della Speziale', '', 'L''anime segue la storia di Maomao, una ragazzina figlia di uno speziale e cresciuta in un piccolo paesino di provincia dell''impero cinese. Non avrebbe mai pensato però di essere rapita e di essere venduta proprio al palazzo imperiale dove, a causa delle sue capacità, notate dal cerusico Jinshi, si ritrova a dover identificare i veleni che potrebbero essere inseriti nel cibo destinati alla consorte preferita dell''imperatore.', '/e3ojpANrFnmJCyeBNTinYwyBCIN.jpg', '1697932800000', '', '1746897999726'),
(42509, 'anime', 'Steins;Gate', '', 'Steins;Gate è ambientato nel distretto di Akihabara a Tokyo. Il 28 luglio 2010 Rintarō Okabe e la sua amica Mayuri Shiina si dirigono all''edificio Radio Kaikan per una conferenza, luogo in cui Rintarō trova una ragazza di nome Kurisu Makise giacere in una pozza di sangue. Proprio quando invia un messaggio riguardo all''incidente al suo amico Itaru "Daru" Hashida, Rintarō sperimenta uno strano fenomeno che fa sparire per un attimo tutte le persone intorno a lui, senza che nessuno si accorga di niente. Più tardi, dopo aver incontrato per caso una Kurisu stranamente viva e vegeta ed aver scoperto che il messaggio inviato ad Itaru era arrivato una settimana prima di averlo inviato. Rintarō capisce ben presto che il forno a microonde mobile creato da lui e i suoi amici è, in realtà, una macchina del tempo capace di inviare SMS al passato...', '/5DZix6ggRiFEbsGqUeTAI1z2wtX.jpg', '1302048000000', '', '1746898000007'),
(208891, 'anime', 'TENGOKU-DAIMAKYO', '', 'Nel 2024, dei mostri deformi si annidano tra le rovine del Giappone, mentre gli esseri umani superstiti racimolano quel che possono per sopravvivere. Kiruko decide di esaudire l’ultimo desiderio di una donna misteriosa di portare un ragazzo di nome Maru in un posto chiamato “paradiso”.', '/74EYbgajUt8X2kxpu62dMR7q8jH.jpg', '1680307200000', '', '1746898000327'),
(64706, 'anime', 'Prison School', '', 'L''Accademia Hachimitsu è sempre stata una scuola femminile famosa per i suoi severi standard comportamentali, tra cui l''assoluto divieto per le studentesse di interagire con persone di sesso maschile. Eppure, da quest''anno, l''accademia è stata aperta anche ai ragazzi, senza tuttavia che tale regola sia stata abolita. A complicare la vita dei nuovi iscritti c''è il fatto che, su un totale di mille studenti, solo cinque sono maschi... per di più timidi e impacciati nel cercare di approcciare una ragazza. Le cose sembrano però andare bene per uno di loro, Kiyoshi Fujino, che fa amicizia con la più bella tra le sue compagne di classe; non c''è però nemmeno il tempo di godere di tale fortuna, che si trova coinvolto nel tentativo dei suoi "compagni di sventura" di spiare nel bagno femminile.', '/tqtd72674k19IfGYJ2wdGJGvXX.jpg', '1436572800000', '', '1746898000607'),
(65249, 'anime', 'Erased', '', 'Satoru Fujinuma è un artista manga in difficoltà che ha la capacità di tornare indietro nel tempo e prevenire le morti. Quando sua madre viene uccisa, torna indietro nel tempo per risolvere il mistero, ma finisce di nuovo alle elementari, poco prima della scomparsa del suo compagno di classe Kayo.', '/EljUwZJhpuYfVuSfqY8Pt1xxpH.jpg', '1452211200000', '', '1746898000888'),
(76059, 'anime', 'A Place Further Than the Universe', '', 'Mari Tamaki è una studentessa liceale del secondo anno che vuole trarre il massimo dalla sua giovinezza e fare un "qualcosa" di diverso ma di solito ha troppa paura per farlo. È allora che incontra Shirase, una ragazza con pochi amici, considerata strana dal resto della classe e soprannominata "Antarctic" dal momento che è tutto ciò di cui parla; il suo sogno infatti è proprio di raggiungere l''Antartide alla ricerca della madre scomparsa. Mari è commossa dalla dedizione di Shirase e decide di seguirla nella sua avventura al polo sud ma consapevole che, da ragazze delle superiori, avranno mille difficoltà. Alla loro impresa si uniranno altre due ragazze: Hinata Miyake e Yuzuki Shiraishi.', '/7FxjyLe7co1U8xLYYkpLbXfkTh1.jpg', '1514851200000', '', '1746898001168'),
(39434, 'anime', 'Ano Hana - Ancora non conosciamo il nome del fiore che abbiamo visto quel giorno', '', 'L''infanzia di cinque amici viene funestata dalla morte di Meiko Honma, soprannominata "Menma", una loro compagna di giochi. Ora i ragazzi sono cresciuti e vanno alle scuole superiori, tuttavia non sono più amici. Improvvisamente Jinta Yadomi, detto "Jintan", che era stato il leader del gruppo, inizia a vedere il fantasma della sua piccola amica di tanti anni prima. Meiko sembra poter comunicare soltanto con lui e desidera che Jinta esaudisca un desiderio che lei aveva quando era bambina, ma del quale si è dimenticata.', '/5O6LnQGqoEUitoqHcimBBvjxyEK.jpg', '1302825600000', '', '1746898001448'),
(12598, 'anime', 'Black Lagoon', '', 'Rapito dai pirati e dato per morto, un famoso uomo d''affari giapponese rivoluziona la propria vita unendosi ai sequestratori.', '/sQlHhWScg6qmakL1ywtcjjVKKqV.jpg', '1144540800000', '', '1746898001728'),
(45213, 'anime', 'Usagi Drop', '', 'Tornato a casa per il funerale del nonno, Daikichi, 30 anni, scopre che il vecchio ha avuto una figlia da una recente relazione con una donna molto più giovane. Il resto della famiglia, palesemente in imbarazzo, ha già deciso di non voler avere nulla a che fare con la piccola e silenziosa Rin. In uno scatto d''orgoglio Daikichi decide di prendersene cura, scoprendo poi che crescere una bambina è tutt''altro che semplice. Eppure Rin riesce lentamente a scalfire quel guscio duro che l''uomo si era creato attorno e forse sarà proprio lei, seppure così piccola, a guidarlo alla ricerca di un nuovo amore.', '/o1sIk7Bn5aRPoKEAG4qf9eRwD8i.jpg', '1310083200000', '', '1746898002009'),
(138357, 'anime', 'Call of the Night - il richiamo della notte', '', 'Incapace di trovare soddisfazione nella vita di tutti i giorni e affetto da una grave insonnia, Yamori Kou inizia a girovagare da solo per le strade della città nelle ore notturne. Una sera, Kou incontra una strana ragazza, Nanakusa Nazuna, la quale si offre di aiutarlo a curare la sua insonnia invitandolo a dormire accanto a lei a casa sua. Tuttavia, ben presto Kou scopre che non si tratta di un semplice scambio a senso unico...', '/leHfHA4tSA9WkM4UafjzDzsS5DZ.jpg', '1657238400000', '', '1746898002289'),
(23591, 'anime', 'Charlotte', '', 'Cresciuta in un ranch, Charlotte trascorre le giornate con i suoi amici e i suoi animali. Grazie a loro e a suo padre Andrè, che l’ha cresciuta da solo, la bambina non ha mai sentito la mancanza della madre morta, ma il giorno del suo dodicesimo compleanno uno strano ragazzo consegna ad Andrè un meraviglioso vestito per lei, dicendo che è un regalo fattole da Simone, madre di Charlotte.', '/iRARrGUxqru0OXfhHkFZCXO8MEZ.jpg', '246931200000', '', '1746898002569'),
(73017, 'anime', 'Children of the Whales', '', 'Nonostante la magia, il giovane archivista Chakuro sa che la sua vita è breve, ma tutto cambia quando una ragazza di fuori compare sull''isola.', '/726IYhNnYkoCXCgqjUouqeixyfm.jpg', '1507420800000', '', '1746898002891'),
(31724, 'anime', 'Code Geass: Lelouch of the Rebellion', '', 'Il Giappone è diventato una colonia dell’impero della Britannia ed è conosciuto ora come Area 11; i giapponesi vengono ora chiamati Eleven e sono privati di buona parte dei propri diritti. Solo alcuni, per i meriti acquisiti, posso assumete lo status di cittadini britannici onorari, rimanendo comunque un gradino sotto i Britanni, in genere benestanti e spesso sprezzanti verso le classi inferiori. Le vicende partono da una scuola superiore d’elite per cittadini britanni in cui Lelouch passa le proprie giornate annoiato e con pochi stimoli, nascondendo il rancore accumulato negli anni e nato dagli eventi che hanno segnato la sua infanzia, in cui vide assassinare la propria madre e ferire gravemente la sorella, ora cieca e costretta su una sedia a rotelle. Un giorno Lelouch viene gravemente ferito in uno scontro tra militari e ribelli. Quasi sul punto di morte, viene salvato da una strana ragazza che gli dona il potere di assoggettare chiunque riesca a guardare direttamente negli occhi al proprio volere. Lelouch riacquista in questo modo una ragione per vivere: diventare il leader della fazione dei ribelli, Zero, e grazie alle sua abilità strategica e al suo dono iniziare il percorso verso la tanto desiderata vendetta.', '/x316WCogkeIwNY4JR8zTCHbI2nQ.jpg', '1160006400000', '', '1746898003170'),
(85991, 'anime', 'Fruits Basket', '', 'Dopo che una tragedia familiare ha sconvolto la sua vita, la studentessa sedicenne Tohru Honda prende in mano la situazione e si trasferisce... in una tenda! Sfortunatamente per lei, lancia la sua nuova casa su un terreno privato appartenente al misterioso clan Soma, e non passa molto tempo prima che i proprietari scoprano il suo segreto. Ma, come Tohru scopre rapidamente quando la famiglia si offre di accoglierla, i Soma hanno un segreto tutto loro: quando abbracciati dal sesso opposto, si trasformano negli animali dello zodiaco cinese!', '/9TGNcvMm91QXmnnCCYYqnYK0bK7.jpg', '1554508800000', '', '1746898003650'),
(270474, 'anime', 'Anche con l''occupazione più inutile, il Valutatore, in realtà sono il più forte: il dominio assoluto con l''Occhio Divino allenato negli abissi', '', 'Ain è un Valutatore, un''occupazione considerata la più debole e sfortunata, la cui unica abilità è [Valutazione]. I suoi compagni lo trattavano malissimo, deridendolo e chiamandolo “raccoglitore di spazzatura”. Incapace di accettare se stesso, viveva giorni pieni di auto-disprezzo e insicurezze.

Il suo destino cambia radicalmente quando incontra Yuri, uno spirito dell’Albero del Mondo, e Ursula, la saggia protettrice di Yuri.

Yuri dona a Ain l’Occhio Spirituale, una straordinaria capacità, e Ursula lo sottopone a un duro allenamento per aiutarlo a padroneggiarlo. Diventando sempre più forte, Ain decide di partire per un viaggio con l’obiettivo di esaudire il desiderio di Yuri: incontrare le altre sorelle dell’Albero del Mondo.

Grazie alla sua naturale gentilezza e al coraggio che ha appena scoperto, Ain affronta e supera numerose sfide nel suo cammino.', '/lUAGrruGGj2PB6CYkw6tGLQD41G.jpg', '1736380800000', '', '1746898003931'),
(76757, 'anime', 'Golden Kamui', '', 'La storia si svolge nel potente campo settentrionale di Hokkaido, l''epoca è nella turbolenta tarda era Meiji. Un soldato del dopoguerra Sugimoto, alias "Sugimoto immortale", aveva bisogno di grandi somme di denaro per uno scopo particolare…. Quello che attendeva Sugimoto, che è entrato nella corsa all''oro di Hokkaido con il sogno di fare fortuna, era una mappa del tatuaggio che portava a un tesoro nascosto basato su indizi incisi sui corpi dei detenuti nella prigione di Abashiri ?! La magnifica natura di Hokkaido contro i malvagi detenuti e l''incontro con una ragazza Ainu pura, Ashiripa !! Inizia una battaglia di sopravvivenza per una caccia al tesoro nascosto!', '/8ZH8S7kKQ2WQrQmSj6JDLojiBEF.jpg', '1523232000000', '', '1746898004211'),
(92602, 'anime', 'ID:Invaded', '', 'Sakaido era un detective famoso per le sue abilità, che però venne condannato alla reclusione dopo essersi vendicato sul colpevole della morte di sua figlia. Pur essendo in prigione, il detective continua a supportare la polizia grazie ad un dispositivo che consente di trasportare la coscienza di una persona all''interno di un mondo virtuale creato sulla base delle tracce di istinto omicida rimasto nei corpi delle vittime. In base alle informazioni presenti all''interno di questo spazio, è possibile individuare l''assassino seriale e più Sakaido approfondisce le sue investigazioni, più le cose si complicano, fino a mettere alla prova i suoi principi e le sue convinzioni.', '/42mieA29Dtw1dBL5mNgZvvLmK8n.jpg', '1578268800000', '', '1746898004491'),
(42557, 'anime', 'Kids on the Slope', '', 'È una storia che si fonda sull''amore, sull''amicizia e sulla musica: una storia di due ragazzi, l''uno candido e l''altro riottoso, che diventano grandi sullo sfondo di una cittadina di provincia della Prefettura di Nagasaki dei tardi anni sessanta. È l''estate del 1966 e Kaoru si trasferisce da Yokosuka, iscrivendosi al liceo locale. A causa del lavoro del padre, la sua famiglia continua a spostarsi di città in città, in un ciclo tristemente ripetitivo; per Kaoru la scuola è soltanto un luogo che gli è ostile e difficile... doversi adattare ogni volta senza riuscirci, essere perennemente l''escluso, sopportare tutto in ogni nuovo istituto. Finché durante l''ennesimo primo giorno di scuola Kaoru incontra dapprima Ritsuko, cui si avvicina, e poi il problematico Sentaro, e inizia per lui un nuovo capitolo di vita, di cui la musica jazz sarà vero filo conduttore.', '/e2shFe5YRvzvUrjHpZgAxLNpIT7.jpg', '1334275200000', '', '1746898004852'),
(72636, 'anime', 'Made in Abyss', '', 'L''enorme sistema di caverne, conosciuto come Abyss, è l''unico posto rimasto inesplorato nel mondo. Nessuno sa quanto in profondità vada questo buco titanico, abitato da strane e meravigliose creature e pieno di antichi e misteriosi relitti il cui scopo è sconosciuto all''uomo moderno. Generazioni di coraggiosi avventurieri si sono inoltrati nelle criptiche profondità dell''Abyss. Con il passare del tempo, questi avventurieri furono chiamati Cave Riders. In Orth, la città in cima all''Abyss, vive una piccola orfana di nome Rico, che sogna di diventare un Cave Riders coraggioso come la madre e di risolvere il mistero della caverna. Un giorno, mentre esplorava le profondità torbide, incontra un giovane ragazzo, che si rivelerà essere un robot...', '/f6U3odfIb3pCXMGKRTQGGF9o1Qg.jpg', '1499385600000', '', '1746898005132'),
(902, 'anime', 'Yu-Gi-Oh-Duel Monsters', '', 'Yu-Gi-Oh! Duel Monsters, noto fuori dal Giappone semplicemente con il nome Yu-Gi-Oh!, è il secondo adattamento anime della serie. È stato prodotto da Nihon Ad Systems e TV Tokyo, mentre l''animazione per lo spettacolo è stata realizzata da Studio Gallop.

La storia inizia a partire dall''ottavo capitolo del manga. Rispetto al manga originale la serie è stata liberamente adattata. La serie presenta diverse differenze rispetto al manga e alla serie prodotta da Toei e si concentra principalmente sul gioco di carte Duel Monsters, in sintonia con la vita reale di Yu-Gi-Oh! Gioco di carte collezionabili. La serie è andata in onda in Giappone su TV Tokyo tra il 18 aprile 2000 e il 29 settembre 2004, per 236 episodi.', '/ra8CKkCHjSok8L9meEP4WuOukNK.jpg', '956016000000', '', '1746898005413'),
(61459, 'anime', 'Kiseiju - L''ospite indesiderato', '', 'Izumi Shinichi conduce una vita tranquilla a Tokyo, fino a quando una razza aliena non decide di invadere il suolo terrestre. Uno di essi tenta di impadronirsi di Shinichi penetrando nel suo corpo senza successo. Il parassita entra allora nel braccio destro del giovane e adotta il nome “Destry”. Nasce tra i due un rapporto di simbiosi insolito, destinato a sconvolgere le esistenze di entrambi.', '/2ngHwPQhHGPpLkLQd2MTAI3iXPq.jpg', '1412812800000', '', '1746898005732'),
(66941, 'anime', 'ReLIFE', '', 'La storia segue Arata Kaizaki, un ventisettenne disoccupato che, dopo aver lasciato l''ultima compagnia per la quale ha lavorato per soli tre mesi, fallisce ogni altro colloquio di lavoro. La sua vita cambia dopo aver incontrato Ryou Yoake, membro del ReLife Research Institute, il quale gli offre una droga che può farlo tornare al suo aspetto di diciassettenne per diventare il soggetto di un esperimento della durata di un anno. Durante questo periodo, Arata dovrà tornare nuovamente alla vita da studente delle superiori.', '/aRK64bB8hMsuZZnitebPyKqOR5d.jpg', '1467417600000', '', '1746898006014'),
(99778, 'anime', 'The God of High School', '', 'Quando un''isola scompare per metà dalla faccia della terra, una misteriosa organizzazione invia inviti per un torneo a ogni abile combattente del mondo. "Se vinci puoi avere TUTTO quello che vuoi", affermano. Stanno reclutando solo i migliori per combattere i migliori e rivendicare il titolo di The God of High School. Jin Mori, uno specialista di Taekwondo e uno studente delle superiori, scopre presto che c''è qualcosa di molto più grande sotto il palco del torneo.', '/lfa79lR34s6eyNkKjqC76uQEihh.jpg', '1593993600000', '', '1746898006293'),
(34801, 'anime', 'Wolf''s Rain', '', '"Wolf''s Rain" è la drammatica storia di un viaggio sulle tracce che portano, secondo un''antica leggenda, a un paradiso perduto, il Rakuen; a cercarlo sono quattro lupi, l''unica razza a cui sia consentito entrarci, in cerca di salvezza da un mondo in decadenza, sull''orlo del collasso ambientale in cui l''essere umano ha perso ogni stimolo e si limita alla pura sussistenza, mentre una ristretta casta di nobili, coloro che per la loro superbia hanno portato tutto alla fine, cercano di fuggire sfruttando le loro avanzate conoscenze tecnologiche.', '/59p0MqCAXnzUcGu8nI8Mz4CCT59.jpg', '1041897600000', '', '1746898006574'),
(85937, 'anime', 'Demon Slayer: Kimetsu no Yaiba', '', 'Giappone, periodo Taisho. Tanjiro trova la sua famiglia massacrata da un demone mentre sua sorella minore Nezuko, l’unica sopravvissuta, è stata lei stessa trasformata in un demone. Tanjiro decide quindi di diventare un "cacciatore di demoni" per far tornare sua sorella umana e uccidere chi ha massacrato la sua famiglia.', '/xUfRZu2mi8jH6SzQEJGP6tjBuYj.jpg', '1554508800000', '', '1746898006854'),
(46260, 'anime', 'Naruto', '', 'Il manga racconta la storia di Naruto Uzumaki, un bambino di dodici anni con il sogno di diventare Hokage - il capo, nonché il ninja più forte, del suo villaggio. Il protagonista vive tuttavia l''infanzia nell''emarginazione a causa della Volpe a Nove Code che porta dentro di sé, sigillata - quando era ancora un neonato - dal Quarto Hokage nella speranza che un giorno riuscisse a controllarla.

Iscrittosi all''accademia ninja come studente, va presto a completare il Team 7 insieme a Sasuke Uchiha (suo eterno rivale) e Sakura Haruno (di cui è follemente innamorato), sotto la guida del maestro Kakashi Hatake. Da qui cominciano le sue gesta per scalare i vari ranghi ninja, tra mille avventure, combattimenti e colpi di scena, come il tradimento di Sasuke o l''estenuante allenamento con Jiraiya per padroneggiare la tecnica del Richiamo.

In un crescendo di emozioni, il manga vede Naruto protagonista di imprese eroiche e di scontri memorabili, che lo portano a difendere se stesso e il proprio villaggio dall''Akatsuki (Organizzazione Alba), i cui membri sono i veri antagonisti dell''opera.', '/xppeysfvDKVx775MFuH8Z9BlpMk.jpg', '1033603200000', '', '1746898007134'),
(95479, 'anime', 'Jujutsu Kaisen', '', 'Itadori Yuji è un ragazzo dall''incredibile possanza fisica, malgrado viva una vita comune da liceale. Per salvare un amico attaccato da una Maledizione, un giorno, ingoia il dito dello Spettro Bifronte, accogliendo così la Maledizione nella sua stessa anima. Condivide da allora il suo corpo con lo Spettro Bifronte. Sotto la guida del più potente degli stregoni, Gojo Satoru, Itadori è ammesso alla Tokyo Metropolitan Technical High School of Sorcery, un''organizzazione che combatte le Maledizioni... e inizia così il racconto eroico di un ragazzo che diviene una Maledizione per esorcizzare le Maledizioni, vita da cui non potrà mai tornare indietro.', '/fHpKWq9ayzSk8nSwqRuaAUemRKh.jpg', '1601683200000', '', '1746898007414'),
(77939, 'anime', 'Megalo Box', '', 'C''è un mondo sotterraneo, affollato e bollente, dove gli incontri di boxe clandestini sono all''ordine del giorno. Questo mondo è Megalo Box. A guadagnarsi il pane sul ring ci sono tanti pugili, tra cui il giovane JD (Junk Dog). L''ennesima battaglia sul ring lo porta a un incontro fuori dal comune. Sarà questo a metterlo in carreggiata per una sfida in cui rischiare il tutto per tutto.', '/OdNvZeDY1ruodyH51XsJKWgQIc.jpg', '1522972800000', '', '1746898007694'),
(205050, 'anime', 'Shangri-La Frontier', '', 'A Rakuro Hizutome interessa solo una cosa: sconfiggere i giochi VR scadenti. Dedica tutta la sua vita a questi giochi buggy e potrebbe risolverli tutti nel sonno. Un giorno, decide di sfidare se stesso e di giocare a un popolare gioco di livello divino chiamato Shangri-La Frontier. Ma impara presto quanto sia difficile. Le sue abilità da esperto saranno sufficienti a svelarne i segreti nascosti?', '/aegGRnUGERkYV1yJuFSk0RIko2t.jpg', '1696118400000', '', '1746898007975'),
(117465, 'anime', 'Hell''s Paradise', '', 'Il temuto ninja Gabimaru, considerato imbattibile, aspetta in prigione l’arrivo di un boia in grado di ucciderlo. Il desiderio di farla finita sembra ormai più forte della voglia di lottare, ma la proposta della carnefice Asaemon risveglierà in lui la furia di un tempo: la possibilità di tornare a vivere con sua moglie, l’unica luce nella sua vita, se accetterà di avventurarsi in una terra magica e letale per recuperare il segreto della vita eterna per lo shogun!', '/1V9I7SvZbYoMbSvdtnlkkq9SB1k.jpg', '1680307200000', '', '1746898008295'),
(127532, 'anime', 'Solo Leveling', '', 'Il “Gate”, un misterioso portale che collega il mondo umano a quello di terribili mostri, mette a rischio la vita degli esseri umani. Delle persone con particolari poteri, gli “hunter”, combattono per contrastarli. Sung Jinwoo è molto debole, senza particolari abilità, ed è schedato come hunter di “livello E”. Nonostante questo, cerca di fare del suo meglio per portare avanti il suo compito e pagare le spese mediche della madre… Ma un giorno, a seguito di un inspiegabile evento, Jinwoo comincia a sviluppare i suoi poteri… Che possa diventare un imbattibile hunter di "livello S"?', '/geCRueV3ElhRTr0xtJuEWJt6dJ1.jpg', '1704585600000', '', '1746898008615'),
(65931, 'anime', 'Bungou Stray Dogs', '', 'Nakajima Atsushi è stato cacciato dal suo orfanotrofio e ora non ha un posto dove andare e non ha cibo. Mentre si trova in riva a un fiume, sull''orlo della fame, salva un uomo che tenta il suicidio in modo stravagante. Quell''uomo è Dazai Osamu, e lui e il suo partner Kunikida sono membri di un''agenzia investigativa molto speciale. Hanno poteri soprannaturali e si occupano di casi troppo pericolosi per la polizia o l''esercito. Stanno rintracciando una tigre che è apparsa nell''area di recente, nel periodo in cui Atsushi è arrivato nell''area. La tigre sembra avere una connessione con Atsushi, e quando il caso sarà risolto, è chiaro che il futuro di Atsushi coinvolgerà molto di più Dazai e il resto degli investigatori', '/6AQmGhkYwAqW2OevjXbsh7tZnNO.jpg', '1459987200000', '', '1746898008896'),
(62273, 'anime', 'Food Wars!: Shokugeki no Soma', '', 'Souma Yukihira ha un sogno: diventare uno chef nel ristorante di suo padre e riuscire a superare le tecniche culinarie del genitore. Quando però Souma termina la scuola media, suo padre, Jouichirou Yukihira, chiude il ristorante per andare a lavorare in Europa. Nonostante lo sconcerto del ragazzo, il suo spirito combattivo ritrova forza quando suo padre lo sfida ad iscriversi in una prestigiosa scuola di cucina in cui solo il 10% degli studenti riesce ad ottenere il diploma. Ce la farà ?', '/drteIrKPh0qaTYitGkxAOKoidsR.jpg', '1428105600000', '', '1746898009176'),
(79166, 'anime', 'Grand Blue', '', 'Iori Kitahara si trasferisce nella città costiera di Izu per il suo primo anno all''università, prendendo residenza sopra Grand Blue, il negozio di immersioni subacquee di suo zio. Iori ha grandi speranze e sogni di avere l''esperienza universitaria ideale, ma quando entra nel negozio viene risucchiato dalle attività alcoliche dei membri spensierati del Diving Club che frequentano il posto. Convinto dagli uomini di classe superiore Shinji Tokita e Ryuujirou Kotobuki, Iori si unisce a malincuore alla loro bizzarra festa. Suo cugino Chisa Kotegawa poi entra e lo coglie sul fatto, guadagnando a Iori il suo totale disprezzo.', '/pzX1uUpyjpX7tHcol1IAVvDRwIw.jpg', '1531526400000', '', '1746898009456'),
(93816, 'anime', 'Great Pretender', '', 'Makoto Edamura si crede il truffatore più scaltro del Giappone, ma avrà una brutta sorpresa quando tenta di imbrogliare il vero criminale Laurent Thierry.', '/Ang6RR0n5a49lEsKRqQrmGyDekF.jpg', '1594252800000', '', '1746898009737'),
(37305, 'anime', 'Soul Eater', '', 'In un mondo in cui il male dilaga portando alla follia gli uomini, esiste una scuola nella città immaginaria di Death City situata nella Death Valley, in Nevada, che addestra giovani all''uso delle armi per la lotta contro Kishin. I ragazzi sono i "Maestri d''armi" (職人 Shokunin?), o "artigiani", il cui obiettivo è racimolare 99 anime malvagie ormai divenute uova di kishin e un''anima di strega, da far mangiare al proprio partner, ovvero colui che possiede il potere di trasformarsi in "Arma" (武 Buki?) per farla divenire Falce della Morte.', '/hI5AhxFTSFabTG7Fvhczyb5ZIh8.jpg', '1207526400000', '', '1746898010016'),
(31910, 'anime', 'Naruto Shippuden', '', 'Naruto Shippuden si svolge due anni e mezzo dopo che Naruto parte per allenarsi con Jiraiya. Al suo ritorno, Naruto scopre che tutti lo hanno superato di grado, e lui è rimasto indietro. Tuttavia, l''obbiettivo di Naruto è sempre quello di salvare Sasuke, per questo dovrà affrontare nemici sempre più pericolosi. Quando il piano dell''Akatsuki si dispiega, e Naruto lentamente si perde nella Volpe a nove code, diventa chiaro che più pericoli che mai lo attendono!', '/71mASgFgSiPl9QUexVH8BubU0lD.jpg', '1171497600000', '', '1746898010297'),
(114410, 'anime', 'Chainsaw Man', '', 'Denji ha un sogno semplice: vivere una vita felice e pacifica, trascorrendo del tempo con una ragazza che gli piace. Questo è molto lontano dalla realtà poiché Denji è costretto dalla yakuza a uccidere diavoli per pagare i suoi debiti, usando il suo diavolo domestico Pochita come arma.

Dopo essere stato assassinato da un diavolo in contratto con la yakuza, tuttavia, Pochita si fonde con il cadavere di Denji e gli conferisce i poteri di un diavolo motosega. Ora in grado di trasformare parti del suo corpo in motoseghe, Denji usa le sue nuove abilità per eliminare rapidamente e brutalmente i suoi nemici. Catturando l''attenzione dei cacciatori di demoni ufficiali che arrivano sulla scena, gli viene offerto un lavoro presso l''Ufficio di pubblica sicurezza come uno di loro.', '/yVtx7Xn9UxNJqvG2BkvhCcmed9S.jpg', '1665532800000', '', '1746898010777'),
(207784, 'anime', 'Dungeon Food', '', 'Sotterranei, draghi... e un delizioso stufato di mostri! Alcuni esploratori si avventurano in un regno sepolto e maledetto per salvare un''amica, cucinando a più non posso.', '/kcCOQNspVi7hK05eYl8tTGdhMqF.jpg', '1704326400000', '', '1746898011057'),
(116727, 'anime', 'Oddtaxi', '', '"Allora, dove andiamo?"

Questa città dovrebbe sembrare familiare, ma improvvisamente non lo è.

Il tassista Odokawa vive una vita molto banale.

Non ha famiglia, non frequenta molto gli altri ed è un tipo strano che ha una mentalità ristretta e non parla molto

Le uniche persone che può definire amici sono Gouriki, il suo medico, e Kakibana, il suo compagno di classe del liceo.

Tutti i suoi clienti sembrano essere leggermente strani.

Kabasawa, uno studente universitario che vorrebbe essere notato online.

Shirakawa, un''infermiera che è piena di segreti.

Gli Homosapiens, un duo comico che non riesce proprio a prendersi una pausa.

Dobu, il teppista locale.  Le Mystery Kiss, un gruppo idol appena formato.

Tutte queste banali conversazioni condurranno a una ragazza che è scomparsa.', '/x3vFYmyz6gqbMwi4B9tHbUX2R60.jpg', '1617667200000', '', '1746898011338'),
(95550, 'anime', 'Sing "Yesterday" for Me', '', 'Rikuo Uozumi non ha ambizioni così, finito il liceo, trova un lavoretto in un konbini, senza preoccuparsi di prospettive di crescita personali e professionali. Il continuo incontro con nuove e differenti persone sul posto di lavoro inizierà ad arricchire inaspettatamente la sua vita. E’ proprio qui che avrà modo di rincontrare Shinako, la ragazza per cui aveva una cotta e che attualmente lavora come insegnante. La persona più strana però è Haru Nonaka, una ragazza che non ha terminato gli studi molto affezionata al suo corvo addomesticato.', '/fB5WHX8NNThiMcLT0zMIeiiAjEO.jpg', '1586044800000', '', '1746898011618'),
(139130, 'anime', 'Skip and Loafer', '', 'Mitsumi Iwakura ha sempre avuto grandi sogni: lasciare la sua piccola città, iscriversi in un''università di primo livello per poi contribuire alla crescita del Paese prima di ritirarsi nella sua città natale. È così concentrata sul suo obiettivo che non si rende conto di tutto ciò di cui non è all''altezza, procurando dispiacere e preoccupazione in amici e parenti. Può un''ingenua ragazza di campagna sopravvivere a Tokyo?', '/xHVy0gnLNpkNAdtd3DHsUVYYEDN.jpg', '1680566400000', '', '1746898011978'),
(238843, 'anime', 'The Fable', '', 'A legendary hitman trained to become the world''s best assassin is asked to lay low for a year by the head of his crime family.', '/aQeVABaQ7gZedtmtDRwhrgOQwgq.jpg', '1712448000000', '', '1746898012259'),
(223500, 'anime', 'WIND BREAKER', '', 'La Fuurin è una scuola nota per avere gli studenti con i peggiori rendimenti scolastici e i combattenti più forti in circolazione. Volendo diventare il più forte di tutti e venire considerato alla stregua di un eroe, Sakura Haruka si unisce a un gruppo nato per proteggere la città.', '/3kTFL3PAeTyS8gGZAh0iYG6NNjt.jpg', '1712275200000', '', '1746898012539'),
(64710, 'anime', 'Noragami', '', 'Se vi dicessimo che esiste un servizio che, con soli cinque yen, vi mette a disposizione un dio guerriero, pronto a combattere per voi i mostruosi Ayakashi, abitanti della fenditura che divide il mondo dei vivi da quello dei morti e causa dei mali che imperversano sulla Terra, voi ci credereste?

Yato è un Dio ormai dimenticato dall''uomo per via della sua scarsa importanza e per rimediare a questo problema decide di racimolare dei soldi per erigere un tempio in suo onore. La sua vita subità un brusco cambiamento quando incontrerà una ragazza di nome Hiyori.', '/5hb8qfoPKQMlLfuhZcbcXwCRVEd.jpg', '1388880000000', '', '1746898012819'),
(83100, 'anime', 'Dororo', '', 'Un signore dei samurai ha barattato gli organi di suo figlio appena nato a quarantotto demoni in cambio del dominio sul campo di battaglia. Tuttavia, il bambino abbandonato sopravvive grazie a uno stregone che lo equipaggia con protesi primitive, letali con cui il figlio offeso userà per dare la caccia alla moltitudine di demoni per reclamare il suo corpo un pezzo alla volta, prima di affrontare suo padre. Durante i suoi viaggi il giovane eroe incontra un orfano che sostiene di essere il più grande ladro del Giappone.', '/2qSzgSE80OFrfgg5UFYbATdCQ6t.jpg', '1546819200000', '', '1746898013100'),
(65942, 'anime', 'Re:Zero - Starting Life in Another World', '', 'Di ritorno da un conbini lo studente Subaru Natsuki si ritrova catapultato in un altro mondo. Nel mezzo dello shock di ritrovarsi da solo in un mondo sconosciuto viene pure attaccato, ma una misteriosa ragazza dai capelli d''argento e un gatto fatato lo salvano. Subaru cerca di collaborare con la ragazza per ricambiare il favore quando vengono attaccati di nuovo e uccisi. Subaru si risveglia nello stesso posto in cui si è ritrovato in questo nuovo mondo per la prima volta e lì capisce di possedere l''abilità di "ritornare indietro attraverso la morte", ovvero di riavvolgere il tempo quando muore. E ora il suo scopo è di salvare la misteriosa ragazza dal tragico destino!', '/aRwmcX36r1ZpR5Xq5mmFcpUDQ8J.jpg', '1459728000000', '', '1746898013419'),
(116983, 'anime', 'Blue Period', '', 'Durante il suo penultimo anno di liceo, lo spassionato ma studioso Yatora Yaguchi trova finalmente una vocazione nell''arte. Senza alcuna esperienza pregressa, decide di impegnarsi per iscriversi a un''università con indirizzo artistico; una decisione che potrebbe portare a risultati potenzialmente disastrosi...', '/bK669RsJ4xaZYHvc144iKlEyzJ7.jpg', '1633132800000', '', '1746898013699'),
(100565, 'anime', '86 Eighty Six', '', 'La Repubblica di San Magnolia è stata a lungo attaccata dal vicino Impero, che utilizzava veicoli militari senza pilota, chiamati Legion. In risposta alla minaccia, la Repubblica completò con successo lo sviluppo di una tecnologia simile, respingendo gli attacchi nemici senza subire perdite. O almeno questa fu la versione ufficiale. In realtà, ci furono delle vittime. Esisteva un ulteriore distretto oltre agli 85 della Repubblica: "l''86° distretto inesistente". È qui che giorno e notte, giovani uomini e donne del distaccamento noto come "Eighty-six" hanno combattuto. Seguiamo le vicende di due di loro: Shinn, che dirige le operazioni sul campo, e Lena, che invece comunica con il suo distaccamento a distanza, con l''aiuto di comunicazioni speciali.', '/pp2gzafNPiug63UskS2niHK9Y04.jpg', '1618099200000', '', '1746898013980'),
(67043, 'anime', '91 Days', '', 'La storia di mafia si svolge in pieno proibizionismo. Nel distretto di Lawless, lo Stato non è di casa ed è la mafia a governarne le strade, qui l?alcol di contrabbando scorre liberamente. Una volta Avilo viveva nel distretto insieme alla sua famiglia, ma durante una guerra tra clan, i suoi genitori e il suo fratellino furono assassinati. Da allora il protagonista è fuggito ed è rimasto nascosto sotto copertura. Sette anni dopo Avilo riceve una lettera da uno sconosciuto misterioso, il suo contenuto accende in lui un''insaziabile fame di vendetta. Così la ricerca di rivalsa lo riporterà a Lawless, ove si infiltrerà nelle fila dei gangster della famiglia Vanetti, allo scopo di avvicinare e uccidere Nero e suo padre, il boss? Questo è il diario di 91 giorni votati alla vendetta, un ''revenge drama'' lungo 91 giorni!', '/cPn42jFjw0ia1o5oL3SsTsEKgFP.jpg', '1468022400000', '', '1746898014260'),
(62110, 'anime', 'Assassination Classroom', '', 'Gli studenti della classe 3-E hanno una missione: uccidere il loro insegnante prima del diploma. Ha già distrutto la luna e ha promesso di distruggere la Terra se non verrà ucciso entro un anno. Ma come può questa classe di disadattati uccidere un mostro tentacolato, capace di raggiungere la velocità di Mach 20, che potrebbe essere il miglior insegnante che abbiano mai avuto?', '/wOd98jDHkoWy2LZ4gSy67X1ihv1.jpg', '1420848000000', '', '1746898014980'),
(225168, 'anime', 'BARTENDER Glass of God', '', 'At Eden Hall, each glass has a story. A quiet bar lies tucked away in the streets of Tokyo, and it seems only the most desperate souls burdened by their own troubles manage to find its doors. But after a glass of God poured by the brilliant bartender Ryu, they leave renewed. Ryu has a gift—he knows how to soothe the soul with the perfect drink. Who will he meet next?', '/aefIsbDvm2kDkZGEllkYWoMONrl.jpg', '1712188800000', '', '1746898015261'),
(77240, 'anime', 'Captain Tsubasa', '', 'Nuova trasposizione ambientata ai giorni del classico calcistico degli anni ''80. Tsubasa Oozora è un bambino con un amore nel calcio pari soltanto alla sua abilità; appena trasferitosi nella città di Nankatsu si imbatte in una sfida tra vari club della scuola Nankatsu e il portiere della scuola Shutetsu per decidere l''utilizzo di un campo d''allenamento. Genzo Wakabayashi, il portiere, è tanto abile da parare persino i tiri dei giocatori di rugby e baseball, facendo desiderare a Tsubasa di affrontarlo e sconfiggerlo, impresa in cui riesce grazie all''aiuto di un misterioso ubriacone che altri non è che Roberto Hongo, centravanti della nazionale brasiliana. Desideroso di sfidare nuovamente Wakabayashi, Tsubasa si iscrive alla Nankatsu e si unisce al disastrato club di calcio. Innamoratosi del gioco del giovane Tsubasa, Roberto gli promette che, se fosse riuscito a vincere il campionato nazionale giapponese, sarebbe potuto andare insieme a lui in Brasile per diventare un calciatore professionista.', '/dnwavlVjWAPbOaWiAmd5nmMBw5y.jpg', '1522713600000', '', '1746898015541'),
(86031, 'anime', 'Dr. Stone', '', 'Da 3700 anni l''intera umanità si ritrova tramutata in pietra a causa di una misteriosa catastrofe. Taiju Oki riesce inspiegabilmente a risvegliarsi, trovandosi così di fronte ad una realtà completamente diversa da quanto ricordava, dove la natura ha ripreso il sopravvento sulla civiltà umana. Al suo risveglio il ragazzo si ricongiunge al suo amico Senku, un giovane e geniale scienziato, anche lui risvegliatosi qualche mese prima. Insieme i ragazzi sperano di scoprire la causa dietro all''improvvisa tramutazione in pietra, e, nel frattempo, di trovare una cura e ricostruire la civiltà umana grazie al potere della scienza.', '/rocRrglJfYkglKilmFaStvo5EvS.jpg', '1562284800000', '', '1746898015823'),
(61415, 'anime', 'Fate/stay night: Unlimited Blade Works', '', 'Shirou Emiya è un normale studente che viene improvvisamente trascinato in una guerra per ottenere il Santo Graal, un oggetto capace di esaudire qualunque desiderio. Tutti i partecipanti devono usare spiriti eroici chiamati Servant per combattere tra di loro, tuttavia, dato che Shirou è un novizio e privo delle abilità magiche necessarie, deve unirsi a Rin Tohsaka per sopravvivere le battaglie. Questa è solo una soluzione temporanea, dato che Archer, il Servant di Rin, detesta Shirou per qualche sconosciuta ragione.', '/3bI8db4tIPtgFY8mOqp3AB0YXGi.jpg', '1413072000000', '', '1746898016102'),
(60728, 'anime', 'Kill la Kill', '', 'Kill la Kill è ambientato nell''accademia Honnōji, un liceo immaginario situato dalle parti della baia di Tokyo in Giappone. La scuola viene dominata dal suo temibile consiglio studentesco, diretto a sua volta da Satsuki Kiryūin, e i suoi studenti indossano particolari uniformi chiamate ultradivise che li dotano di abilità sovrumane grazie alle cosiddette biofibre, cioè il materiale di cui sono fatte. Ryūko Matoi, una studentessa in possesso di una spada a forma di forbice capace di tagliare le ultradivise, si trasferisce nel liceo in cerca dell''assassino di suo padre', '/4F1WtP3dFIwLPOfa3u29VEVnNkf.jpg', '1380844800000', '', '1746898016382'),
(65950, 'anime', 'Kiznaiver', '', 'Un giorno, Noriko Sonosaki dice alla sua compagna di classe Katsuhira Agata: "Sei stata selezionata per essere una Kiznaiver". Il sistema Kizuna, che consente a Katsuhira di condividere le sue ferite, lo collega ai compagni di classe le cui vite e personalità sono completamente diverse dalla sua. Il sistema Kizuna è un sistema incompleto per l''attuazione della pace nel mondo che collega le persone attraverso le ferite. Tutti coloro che sono collegati a questo sistema sono chiamati Kiznaivers. Quando un Kiznaiver viene ferito, il sistema divide e trasmette la ferita tra gli altri Kiznaiver. La città di Sugomori è costruita su terreni bonificati, ma con il passare degli anni la popolazione della città sta diminuendo. La storia è ambientata in questa città dove vivono Katsuhira e gli altri.', '/wk0zTNzmB8L2cR1lkvDMMFGAqvJ.jpg', '1460160000000', '', '1746898016662'),
(45783, 'anime', 'Kuroko''s Basketball', '', 'Kuroko è un membro del leggendario team di basket delle scuole medie conosciuto come "The Generation of Miracles" (la generazione dei miracoli) e, nonostante sembri che nessuno lo conosca davvero, i principali 5 giocatori della squadra scolastica delle superiori lo considerano il miglior giocatore di basket. Quando questi si unisce alla squadra, tutti restano sorpresi nel constatare che il ragazzo è piccolo, esile e debole... qual''è il segreto che lo ha reso così famoso, e grazie a quale abilità riuscirà ad aiutare il suo team?', '/qi8dlAgQEeahpEn1AOb5BJEOcVB.jpg', '1333843200000', '', '1746898016942'),
(56568, 'anime', 'Nana', '', 'Nana "Hachi" Komatsu e Nana Osaki, due ragazze ventenni accomunate dal nome e dalla decisione di trasferirsi a Tokyo, si conoscono sul treno diretto verso la capitale giapponese. Si rincontrano ancora per caso in un appartamento che entrambe vogliono affittare: decideranno così di essere coinquiline e di condividere la loro vita quotidiana.', '/zVi1CBbNWe6C33B73V2cZZB7uvH.jpg', '1144195200000', '', '1746898017223'),
(94904, 'anime', 'My Next Life as a Villainess: All Routes Lead to Doom!', '', 'Dopo aver battuto la testa un giorno in modo particolarmente forte, la figlia del duca Claes, Katarina, rievoca improvvisamente tutti i ricordi della sua vita passata: quella di un''adolescente giapponese. Poco prima della sua morte prematura, questa ragazza ricorda di aver giocato a un gioco otome ... che è esattamente come il mondo in cui vive ora! Ora è Katarina Claes, l''antagonista del gioco degli otome, che ha maltrattato il protagonista fino alla fine. Conoscendo tutti i possibili risultati del gioco, si rende conto che ogni singolo percorso possibile termina con Katarina che viene uccisa o esiliata! Per evitare questi catastrofici brutti fine, deve usare la sua conoscenza del gioco e le sue astuzie, iniziando con rompere questo fidanzamento con il principe... Katarina sopravviverà mentre si fa strada attraverso questo mondo, dove le bandiere sbagliate inciampano ad ogni turno? Scoprilo in questa commedia romantica di harem inverso, guidata dalla cattiva preferita di tutti!', '/xUnzZYwjnd8rOSRXo6u9k8HikWW.jpg', '1586044800000', '', '1746898017502'),
(116725, 'anime', 'Vivy -Fluorite Eye''s Song-', '', 'Nel prossimo futuro, Vivy, una diva tipo AI, è salita sul palco ogni giorno con la speranza di mettere il suo cuore nella sua canzone. Un giorno, l''A.I. Matsumoto, che afferma di essere arrivato da 100 anni nel futuro, si presenta a Vivy con una richiesta importante...', '/xRakd62ihUP19NBgWyJzjO26NxE.jpg', '1617408000000', '', '1746898017783'),
(70072, 'anime', 'White Album 2: The Other Side of Happiness', '', 'La storia del videogioco segue lo studente Haruki Kitahara e la sua relazione con due ragazze: Setsuna Ogiso e Kazuki Touma, membri del club di musica leggera.', '/bYl6hBOV3Bzb0uAV1mzZ9JnDl1z.jpg', '1381017600000', '', '1746898018063'),
(217766, 'anime', 'Zom 100: Bucket List of the Dead', '', 'Dopo aver lavorato per tre anni in una "black company" (espressione giapponese usata per identificare quelle aziende che costringono i propri dipendenti a lavorare in condizioni degradanti), Akira è arrivato allo stremo, sia mentalmente che fisicamente. Ma una mattina, mentre si avvia verso l''ufficio, scopre che la città è stata invasa dagli zombi. Come potrà sopravvivere in queste condizioni?', '/bTYMgERNC9rVdmxTSzKuex4GWbF.jpg', '1688860800000', '', '1746898018343'),
(46261, 'anime', 'Fairy Tail', '', 'Il Regno di Fiore è un paese neutrale di diciassette milioni di abitanti: in questa nazione la magia è comprata e venduta come una merce qualsiasi ed è parte integrante della vita quotidiana della popolazione. Di quest''ultima però solo una parte, il 10%, è specializzata nel suo uso: si tratta di coloro che vengono chiamati maghi. Molti di loro compiono lavori su commissione che solo loro sono in grado di svolgere e sono riuniti in diverse gilde sparse per tutto il paese, riunite a loro volta in leghe, coadiuvate dal Concilio della Magia, legato strettamente al Governo. Tra le più importanti, la gilda Fairy Tail è famosa per il carattere esuberante e per il grande potere dei suoi membri. Nel tempo questa corporazione è entrata più volte in contrasto con il Concilio a causa dell''anomalo comportamento dei suoi maghi e per il modo a volte disastroso e incurante con cui essi compiono il proprio lavoro. Ma in fondo è anche per questo motivo che il popolo, soprattutto quello della città di Magnolia, dove si trova la sede della gilda, li ammira. Attratta da tale fama, Lucy Heartphilia, una giovane maga degli Spiriti Stellari, parte per accedere a Fairy Tail; durante il suo viaggio, si imbatte in Natsu Dragonil, un mago del fuoco di Fairy Tail alla ricerca del drago Igneel, insieme al suo fidato compagno, il gatto volante Happy. Essi la introducono nella gilda; Lucy conosce così molti altri membri: dal mago del ghiaccio Gray Fullbuster, rivale di Natsu fin dall''infanzia, alla maga guerriera Elsa Scarlett, denominata Titania (regina delle fate). In mezzo a loro Lucy impara che fiducia e amicizia legano tutti i membri della gilda in una grande famiglia. Affezionatasi al gruppo, la giovane maga contribuisce con tutta se stessa a difenderlo ogni qual volta se ne presenti l''occasione, vivendo meravigliose avventure.', '/h50lj7xO65qafNYZCrfQ7ztkMBD.jpg', '1255305600000', '', '1746898018623'),
(105009, 'anime', 'Tokyo Revengers', '', 'La vita di Takemichi Hanagaki è ai minimi storici. Proprio quando pensava che non potesse andare peggio, scopre che Hinata Tachibana, la sua ex ragazza, è stata uccisa dalla Tokyo Manji Gang: un gruppo di feroci criminali che da tempo disturba la pace della società.

Chiedendosi dove sia andato tutto storto, Takemichi si ritrova improvvisamente a viaggiare nel tempo, finendo 12 anni nel passato, quando aveva ancora una relazione con Hinata. Rendendosi conto di avere la possibilità di salvarla, Takemichi decide di infiltrarsi nella Tokyo Manji Gang e scalare i ranghi per riscrivere il futuro e salvare Hinata dal suo tragico destino.', '/arB3L9pZZBSzUPSC8BEv8c3X0bF.jpg', '1618099200000', '', '1746898018903'),
(88046, 'anime', 'Fire Force', '', 'A causa di un inspiegabile fenomeno che assale l''umanità, le persone iniziano a prendere fuoco spontaneamente. Solamente delle speciali squadre di vigili del fuoco possono estinguere quelle misteriose fiamme, grazie ad un''abilità speciale che gli permette di manipolare il fuoco senza che questo abbia delle terribili conseguenze sul loro corpo.', '/q2lTO2j4Nzn3zLab0xMHeBya5sw.jpg', '1562284800000', '', '1746898019183'),
(120089, 'anime', 'SPY x FAMILY', '', 'Twilight, una delle migliori spie al mondo, ha trascorso la vita ad affrontare missioni sotto copertura per rendere il mondo un posto migliore. Un giorno però riceve un compito particolarmente difficile, per riuscire nella sua nuova missione dovrà formare una famiglia temporanea e iniziare una nuova vita!', '/gHZqglFWJTFwx6rnTq4vkPRnuxu.jpg', '1649462400000', '', '1746898019464'),
(61901, 'anime', 'Death Parade', '', 'Dopo la morte, all''uomo è riservato un duplice destino: se è stato onesto in vita, andrà in paradiso; altrimenti ad aspettarlo ci sarà l''inferno. Tuttavia, alcune persone rappresentano l''eccezione: quando due individui muoiono contemporaneamente, la legge vuole che, prima del trapasso, vengano convocati in un posto fra i due mondi dell''oltretomba, per essere giudicati. Arrivano così al Quindecim, un bar gestito da un inespressivo cameriere e una ragazza dai lunghi capelli corvini. Invitati a prendere parte ad un gioco, che può andare dal biliardo al bowling, dalle carte alle freccette, i malcapitati sono costretti a mettere in palio la propria vita, di cui non hanno la consapevolezza di aver già persa. Durante il gioco, l''inespressivo barman, nei panni di giudice, emana il verdetto sulla condotta tenuta e decide se far reincarnare l''anima del defunto o spedirla nell''oblio.', '/qeD9wDenN7CPA99FScSErJCvcWb.jpg', '1420848000000', '', '1746898019744'),
(114868, 'anime', 'Record of Ragnarok', '', 'La storia inizia quando gli dei chiamano una convenzione per decidere se lasciar vivere o morire l''umanità e decidono di distruggere l''umanità. Ma una valchiria solitaria propone un suggerimento per lasciare che gli dei e l''umanità combattano un''ultima battaglia, come ultima speranza per la sopravvivenza dell''umanità. 13 divinità combatteranno contro 13 campioni umani in battaglie uno contro uno per decidere se l''umanità vive o muore.', '/kTs2WNZOukpWdNhoRlH94pSJ3xf.jpg', '1623888000000', '', '1746898020024'),
(131041, 'anime', 'Blue Lock', '', 'Con l''eliminazione del Giappone ai Mondiali di calcio del 2018, la federazione calcistica giapponese si decide a creare un programma in cui trovare giovani promettenti atleti e prepararli per i mondiali del 2022. Isagi Yōichi, un attaccante, riceve l''invito per partecipare a questo programma, proprio subito dopo che la sua squadra perde la possibilità di accedere alle nazionali a causa sua, che nel momento decisivo passò la palla a un compagno meno esperto invece che tentare di tirare lui stesso. L''allenatore del programma sarà Ego Jinpachi, il cui obiettivo è quello di "distruggere il calcio perdente giapponese" con un metodo rivoluzionario: isolare 300 giovani e promettenti attaccanti in una struttura simile a una prigione, chiamata "Blue Lock" e sottoporli a un rigoroso allenamento volto a creare "l''attaccante più egoista e migliore del mondo".', '/sTDTy73OYmKY51EK94Mc6AxogzR.jpg', '1665273600000', '', '1746898020304'),
(76121, 'anime', 'Darling in the FranXX', '', 'La storia è ambientata in un lontano futuro. La terra è devastata e l''umanità ha creato il forte mobile della città di Plantation. I piloti prodotti dentro Plantation vivono presso Mistilteinn, conosciuta anche come "gabbia per uccelli". I bambini vivono al suo interno senza sapere nulla del mondo esterno o della libertà del cielo. Le loro esistenze consistono nel lottare per portare a termine delle missioni. I loro nemici sono dei misteriose forme di vita giganti chiamate Ky?ry? e per combatterle i bambini pilotano dei robots nominati FranXX. Per i bambini, comandare un FranXX è la prova della loro vita. Un ragazzo di nome Hiro viene soprannominato Code:016 e una volta era conosciuto per essere un prodigio. In ogni caso è caduto in disgrazia e la sua vita sembra inutile. Non pilotare un FranXX equivale a non esistere. Un giorno una misteriosa ragazza conosciuta come "Zero Two" appare di fronte a lui: dalla sua testa sporgono due corna.', '/yyUxeNpQoD23XWEdPXLJRGQEtHT.jpg', '1515801600000', '', '1746898020584'),
(68103, 'anime', 'Drifters', '', 'La storia di Drifters si svolge nell''era Sengoku (1467-1603), un periodo di costanti fermenti bellici. Un giovane samurai in punto di morte si trova improvvisamente in un altro, fantastico mondo. Come è possibile ciò? Quale destino attende lo spaesato guerriero?', '/1r91JxYLyfEULX19EjFZqiOjl4m.jpg', '1475798400000', '', '1746898020865'),
(86463, 'anime', 'Rainbow Butterfly Unicorn Kitty', '', 'When a spirited kitten acquires magical powers, it transforms her into a part rainbow, part butterfly and part unicorn hybrid, and she goes on adventures with her best friends, a book-smart owl and a yeti, across a magical world, called Mythlandia.', '/73Llhe2PoJVwuTN7vvINeNvEvYc.jpg', '1548547200000', '', '1746898021186'),
(73223, 'anime', 'Black Clover', '', 'In un mondo dove la magia è al centro della vita quotidiana sono nati Asta, un ragazzo completamente privo di ogni abilità magica, e il suo amico Yuno, che al contrario è dotato di grande forza magica legata al vento. I due sono fin da piccoli rivali e hanno deciso di competere per il titolo di Imperatore Magico, la più alta carica magica del loro regno. Yuno ottiene un leggendario grimorio a quattro foglie dello stesso tipo ottenuto dal primo imperatore magico, mentre Asta, nonostante la sua mancanza di magia, ottiene un misterioso grimorio di cinque foglie (che non può essere chiaramente identificato da altri poiché è usurato), che contiene una misteriosa spada in grado di annullare la magia. Successivamente, lui e Yuno si uniscono ai Cavalieri Magici come primo passo per realizzare le loro ambizioni.', '/kaMisKeOoTBPxPkbC3OW7Wgt6ON.jpg', '1506988800000', '', '1746898021465'),
(97860, 'anime', 'Tower of God', '', 'Raggiungi la vetta e tutto ti apparterrà. Nella cima della Torre esiste tutto ciò che c''è nel mondo e tutto ciò può essere tuo. Puoi diventare un Dio. Questa è la storia dell''inizio e della fine di Rachel, la ragazza che ha scalato la Torre per poter vedere le stelle e di Bam, il ragazzo che non aveva bisogno di nulla tranne che di lei. Nel tentativo di ricongiungersi con la sua amica, il ragazzo ha deciso di scalare la torre, affrontando una moltitudine di sfide mortali atte a determinare chi è degno di accedere ai piani superiori e chi, invece, sarà costretto a terminare il suo viaggio.', '/8v8ANBJNUzvA8F6sM20DBt3zZ44.jpg', '1585785600000', '', '1746898021785'),
(72517, 'anime', 'Classroom of the Elite', '', 'Ayanokoji Kiyotaka sta per cominciare il suo percorso scolastico presso il "Liceo per la formazione di alto livello di Tokyo". Agli studenti di tale scuola, alla fine dei corsi, è garantita l''ammissione al college scelto o verrà trovato lavoro. Inoltre, agli studenti viene data mensilmente una somma di punti, utilizzabili come denaro all''interno della struttura scolastica, ed cosa viene calcolata per merito. Ma la classe a cui viene assegnato Ayanokoji è la 1-D, quella dei ragazzi "problematici"...', '/yuHanbUUIv2UWRxxQFt9n8jtmOJ.jpg', '1499817600000', '', '1746898022226'),
(36837, 'anime', 'Le situazioni di lui & lei', '', 'Yukino Miyazawa è da sempre stata una studentessa modello, un punto di riferimento per l’intera scuola, venerata dalle compagne e molto ambita tra i ragazzi. Attiva, bella, brava nello sport, disponibile e sempre cordiale con tutti. La vita sembrava una discesa, ma l’iscrizione alle superiori le mette di fronte un ragazzo che rischia di offuscare la sua egemonia, Souichiro Arima. Altrettanto bello, altrettanto bravo nello studio e nello sport, ancora più popolare di lei, riesce a metterla in ombra, e questo le causa una vera isteria. Yukino non può accettare di essere la seconda dell’istituto, e decide di fare di tutto per battere Arima ed umiliarlo.', '/hgt4WCrmgOnXWTrYiQMWcWnjMUR.jpg', '907286400000', '', '1746898022506'),
(65676, 'anime', 'Oregairu', '', 'La storia segue le vicende di Hachiman Hikigaya, un solitario e pragmatico liceale con una visione della vita distorta e antisociale che lo porta a non unirsi a nessun gruppo di giovani perché convinto che sarà sempre una fonte di illusioni. La sua insegnante Shizuka Hiratsuka fa in modo che Hachiman si iscriva al club di volontariato dell''istituto, frequentato e gestito dalla ragazza più carina e schietta della scuola, Yukino Yukinoshita, con la quale condivide un passato di solitudine ma per diverse ragioni — lui per i suoi ideali, lei perché invidiata dagli altri per la sua bellezza. Shizuka chiede a Yukino di occuparsi del problema di Hachiman e di renderlo un ragazzo in grado di migliorare i rapporti con il prossimo, in modo tale da garantirgli un futuro migliore nella società. Yukino accetta e Hachiman si ritrova a partecipare alle attività del club.', '/sb5MNoeZGHX21qvtwhmizUsJJqq.jpg', '1365120000000', '', '1746898022786'),
(218843, 'anime', 'The Seven Deadly Sins: Four Knights of the Apocalypse', '', 'Mentre una profezia funesta colpisce le tranquille terre di Britannia, un ragazzo dal cuore puro parte in un viaggio di scoperta... e vendetta.', '/6SWVJvCIC9B16u6wASZ8FEaNssz.jpg', '1696723200000', '', '1746898023067'),
(46671, 'anime', 'The Future Diary', '', 'Studente solitario e introverso passa le giornate annotando ciò che lo circonda sul cellulare, utilizzandolo come un diario. Yukiteru Amano, questo il nome del ragazzo, immagina di conversare con due amici immaginari: Deus Ex Machina e Murmur, di cui il primo è Dio del tempo e dello spazio. Rivelandosi come entità reale, Deus tramuta il cellulare di Amano in un Diario che svela il futuro. Oltre a lui, 12 persone possiedono simili oggetti, dotati di diverse proprietà. Inizia così un Survival Game fratricida tra tutti quanti, mentre dalla parte di Yukiteru ci sarà soltanto una certa stalker dai capelli rosa: Yuno Gasai.', '/5MxOVu9eItgGZh4AQrtAnbZIsJr.jpg', '1318118400000', '', '1746898023347'),
(83097, 'anime', 'The Promised Neverland', '', 'Emma e i suoi amici vivono una vita tranquilla nell''orfanotrofio in cui sono cresciuti; sebbene le regole siano dure, la loro custode li tratta con gentilezza offrendogli del buon cibo e un ambiente molto accogliente in cui vivere. I bambini passano le loro giornate studiando e giocando nell''enorme giardino che circonda la residenza, ma per quale motivo ai bambini è assolutamente proibito uscire dal recinto che delimita l''orfanotrofio? Un giorno Emma e il suo amico Norman proveranno ad oltrepassare il cancello, ma ad aspettarli dall''altro lato troveranno una verità molto più dura di quanto potessero mai immaginare.', '/oBgRCpAbtMpk1v8wfdsIph7lPQE.jpg', '1547164800000', '', '1746898023667'),
(62773, 'anime', 'God Eater', '', 'All''inizio degli anni 2050, forme di vita sconosciute chiamate "cellule Oracle" iniziano il loro consumo incontrollato di tutta la vita sulla Terra. Il loro appetito famelico e la loro notevole adattabilità fanno guadagnare loro prima paura, poi soggezione e infine il nome "aragami". Di fronte a un nemico completamente immune alle armi convenzionali, la civiltà urbana crolla e ogni giorno l''umanità è spinta sempre più verso l''estinzione. Per l''umanità resta un solo raggio di speranza. In seguito allo sviluppo di "God Arcs", armi viventi che incorporano cellule Oracle, i loro possessori sono organizzati in una forza d''élite.', '/5H2XJUqkuLdhoYAxUOpa3NYLo8T.jpg', '1436659200000', '', '1746898023947'),
(61374, 'anime', 'Tokyo Ghoul', '', 'A Tokyo si stanno verificando una serie di strani e cruenti omicidi dovuti alla presenza dei ghoul, mostri che vedono gli umani solo come prede e che si possono cibare unicamente della loro carne. Ken Kaneki è uno studente universitario, dedito allo studio e alla lettura, che un giorno conosce in un bar Rize, sua affascinante coetanea: in realtà anche la ragazza è un ghoul e Ken diventerà ben presto la sua preda. Rize infatti, con un pretesto, attira Ken in un luogo isolato dove lo ferisce gravemente con dei ripetuti attacchi, ma prima di poterlo divorare, muore colpita da una serie di travi di ferro che precipita fortunatamente da un edificio in costruzione nei paraggi. Il ragazzo viene quindi portato d''urgenza in un ospedale dove il chirurgo della sua operazione, in un gesto disperato, decide di sottoporlo a un trapianto di organi, presi proprio dal corpo di Rize. Sopravvissuto all''impossibile, Ken inizia presto a capire però di essere diventato anche lui una specie di ghoul in una città sparsa di questi mostri, dove ciascuno, per mangiare, deve "cacciare" nel proprio territorio.', '/1m4RlC9BTCbyY549TOdVQ5NRPcR.jpg', '1404432000000', '', '1746898024227'),
(80564, 'anime', 'Banana Fish', '', 'La natura ha reso bello Ash Lynx; nutrimento lo rendeva un assassino freddo e spietato. Un fuggiasco cresciuto come erede adottivo e sex toy di "Papa" Dino Golzine, Ash, ora ribelle all''età di diciassette anni, abbandona il regno tenuto dal diavolo che lo ha cresciuto. Ma l''orribile segreto che ha fatto impazzire il fratello maggiore di Ash in Vietnam è improvvisamente caduto nelle mani insaziabilmente ambiziose di papà - ed è proprio il momento sbagliato per Eiji Okamura, un giovane fotografo giapponese dal cuore puro, per fare la conoscenza di Ash Lynx ...', '/d2TW5Rtd0uCasHlQygsDfWCROl2.jpg', '1530835200000', '', '1746898024709'),
(24835, 'anime', 'Clannad', '', 'Tomoya Okazaki è un ragazzo timido ed introverso a causa della morte dei suoi genitori. Un giorno incontra Nagisa Furukawa, una ragazza impacciata a relazionarsi con gli altri, poichè ha dovuto ripetere l''anno, che vuole aprire un club di teatro. Tra i due si instaura un rapporto di amicizia e Tomoya decide di aiutare Nagisa nel suo progetto.', '/bmugfsOLi5Q01nTsFkNwO0V4xgg.jpg', '1191542400000', '', '1746898025068'),
(60811, 'anime', 'Ping Pong The Animation', '', 'La storia è incentrata su Tsukimoto (''Smile'') e Hoshino (''Peko''), amici d''infanzia che giocano a ping pong sin da quando erano studenti delle elementari. Tsukimoto - l''impassibile ragazzo con gli occhiali, descritto come un robot da tutti quelli che lo conoscono - gioca "per ammazzare il tempo"; Hoshino - l''appassionato e carismatico ''eroe'' che Tsukimoto idolatrava durante la loro infanzia - gioca perché "ama il ping pong e odia perdere". Come sarà il trattamento riservato a questi due da parte del freddo e crudele mondo delle competizioni sportive? E che cosa accadrà al loro inevitabile scontro come contendenti per il trofeo singolo del liceo maschile?', '/frgVn3ww547TVQH8vS2bWKZnEBu.jpg', '1397174400000', '', '1746898025629'),
(100068, 'anime', 'Patema inverted: Beginning of the Day', '', 'Distribuzione online del prologo del film Sakasama no Patema programmato per fine 2012. Patema è la principessa di una comunità che vive in dei sotterranei. Nonostante sia proibito, la principessa esce spesso di nascosto ad esplorare i tunnel, finché un giorno...', '/fDWfoPj3pWWFo1w8blIAKoMA0Nq.jpg', '1330128000000', '', '1746898025909');


-- Inserisci i rating (WorkRating)
INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46195_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  10,
  1746897989770,
  1746897989770
FROM Work w
WHERE w.externalId = 46195 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_62564_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  10,
  1746897990033,
  1746897990033
FROM Work w
WHERE w.externalId = 62564 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_119100_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9.5,
  1746897990283,
  1746897990283
FROM Work w
WHERE w.externalId = 119100 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_57041_user13_s',
  w.id,
  w.externalId,
  'user13',
  9.5,
  1746897990557,
  1746897990557
FROM Work w
WHERE w.externalId = 57041 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_57041_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8.5,
  1746897990557,
  1746897990557
FROM Work w
WHERE w.externalId = 57041 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_83121_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9.5,
  1746897990842,
  1746897990842
FROM Work w
WHERE w.externalId = 83121 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46298_user13_s',
  w.id,
  w.externalId,
  'user13',
  9.5,
  1746897991102,
  1746897991102
FROM Work w
WHERE w.externalId = 46298 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46298_3875feef-943f-5e0a-8ce5-e9a71e97f358_s',
  w.id,
  w.externalId,
  '3875feef-943f-5e0a-8ce5-e9a71e97f358',
  9,
  1746897991102,
  1746897991102
FROM Work w
WHERE w.externalId = 46298 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46298_user3_s',
  w.id,
  w.externalId,
  'user3',
  9.5,
  1746897991102,
  1746897991102
FROM Work w
WHERE w.externalId = 46298 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46298_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746897991102,
  1746897991102
FROM Work w
WHERE w.externalId = 46298 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46298_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9.5,
  1746897991102,
  1746897991102
FROM Work w
WHERE w.externalId = 46298 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46298_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  9.5,
  1746897991102,
  1746897991102
FROM Work w
WHERE w.externalId = 46298 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46298_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9,
  1746897991102,
  1746897991102
FROM Work w
WHERE w.externalId = 46298 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46298_user8_s',
  w.id,
  w.externalId,
  'user8',
  9.5,
  1746897991102,
  1746897991102
FROM Work w
WHERE w.externalId = 46298 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46298_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746897991102,
  1746897991102
FROM Work w
WHERE w.externalId = 46298 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60863_user13_s',
  w.id,
  w.externalId,
  'user13',
  9.5,
  1746897991351,
  1746897991351
FROM Work w
WHERE w.externalId = 60863 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60863_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897991351,
  1746897991351
FROM Work w
WHERE w.externalId = 60863 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60863_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9.5,
  1746897991351,
  1746897991351
FROM Work w
WHERE w.externalId = 60863 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60863_user8_s',
  w.id,
  w.externalId,
  'user8',
  10,
  1746897991351,
  1746897991351
FROM Work w
WHERE w.externalId = 60863 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_209867_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  10,
  1746897991593,
  1746897991593
FROM Work w
WHERE w.externalId = 209867 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_209867_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746897991593,
  1746897991593
FROM Work w
WHERE w.externalId = 209867 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_209867_user8_s',
  w.id,
  w.externalId,
  'user8',
  10,
  1746897991593,
  1746897991593
FROM Work w
WHERE w.externalId = 209867 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61663_user13_s',
  w.id,
  w.externalId,
  'user13',
  8.5,
  1746897991843,
  1746897991843
FROM Work w
WHERE w.externalId = 61663 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61663_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746897991843,
  1746897991843
FROM Work w
WHERE w.externalId = 61663 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61663_user8_s',
  w.id,
  w.externalId,
  'user8',
  10,
  1746897991843,
  1746897991843
FROM Work w
WHERE w.externalId = 61663 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1429_user13_s',
  w.id,
  w.externalId,
  'user13',
  9,
  1746897992096,
  1746897992096
FROM Work w
WHERE w.externalId = 1429 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1429_3875feef-943f-5e0a-8ce5-e9a71e97f358_s',
  w.id,
  w.externalId,
  '3875feef-943f-5e0a-8ce5-e9a71e97f358',
  9.5,
  1746897992096,
  1746897992096
FROM Work w
WHERE w.externalId = 1429 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1429_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897992096,
  1746897992096
FROM Work w
WHERE w.externalId = 1429 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1429_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9.5,
  1746897992096,
  1746897992096
FROM Work w
WHERE w.externalId = 1429 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1429_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  9.5,
  1746897992096,
  1746897992096
FROM Work w
WHERE w.externalId = 1429 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1429_user8_s',
  w.id,
  w.externalId,
  'user8',
  9,
  1746897992096,
  1746897992096
FROM Work w
WHERE w.externalId = 1429 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_1429_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  9.5,
  1746897992096,
  1746897992096
FROM Work w
WHERE w.externalId = 1429 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_37854_user13_s',
  w.id,
  w.externalId,
  'user13',
  10,
  1746897992793,
  1746897992793
FROM Work w
WHERE w.externalId = 37854 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_37854_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  10,
  1746897992793,
  1746897992793
FROM Work w
WHERE w.externalId = 37854 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_37854_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746897992793,
  1746897992793
FROM Work w
WHERE w.externalId = 37854 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_37854_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9,
  1746897992793,
  1746897992793
FROM Work w
WHERE w.externalId = 37854 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_37854_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746897992793,
  1746897992793
FROM Work w
WHERE w.externalId = 37854 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_124396_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746897993506,
  1746897993506
FROM Work w
WHERE w.externalId = 124396 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_117933_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746897993755,
  1746897993755
FROM Work w
WHERE w.externalId = 117933 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_117933_user8_s',
  w.id,
  w.externalId,
  'user8',
  9,
  1746897993755,
  1746897993755
FROM Work w
WHERE w.externalId = 117933 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_890_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746897994030,
  1746897994030
FROM Work w
WHERE w.externalId = 890 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_890_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8.5,
  1746897994030,
  1746897994030
FROM Work w
WHERE w.externalId = 890 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_890_user8_s',
  w.id,
  w.externalId,
  'user8',
  9,
  1746897994030,
  1746897994030
FROM Work w
WHERE w.externalId = 890 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_36041_user13_s',
  w.id,
  w.externalId,
  'user13',
  8.5,
  1746897994275,
  1746897994275
FROM Work w
WHERE w.externalId = 36041 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_36041_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746897994275,
  1746897994275
FROM Work w
WHERE w.externalId = 36041 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31654_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8.5,
  1746897994541,
  1746897994541
FROM Work w
WHERE w.externalId = 31654 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31654_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9,
  1746897994541,
  1746897994541
FROM Work w
WHERE w.externalId = 31654 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31654_user9_s',
  w.id,
  w.externalId,
  'user9',
  10,
  1746897994541,
  1746897994541
FROM Work w
WHERE w.externalId = 31654 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_63926_user13_s',
  w.id,
  w.externalId,
  'user13',
  9,
  1746897994791,
  1746897994791
FROM Work w
WHERE w.externalId = 63926 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_63926_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897994791,
  1746897994791
FROM Work w
WHERE w.externalId = 63926 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_63926_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  10,
  1746897994791,
  1746897994791
FROM Work w
WHERE w.externalId = 63926 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_63926_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746897994791,
  1746897994791
FROM Work w
WHERE w.externalId = 63926 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_63926_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8.5,
  1746897994791,
  1746897994791
FROM Work w
WHERE w.externalId = 63926 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_63926_user9_s',
  w.id,
  w.externalId,
  'user9',
  10,
  1746897994791,
  1746897994791
FROM Work w
WHERE w.externalId = 63926 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_105248_user13_s',
  w.id,
  w.externalId,
  'user13',
  8.5,
  1746897995042,
  1746897995042
FROM Work w
WHERE w.externalId = 105248 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_105248_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746897995042,
  1746897995042
FROM Work w
WHERE w.externalId = 105248 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_105248_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8.5,
  1746897995042,
  1746897995042
FROM Work w
WHERE w.externalId = 105248 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31911_user13_s',
  w.id,
  w.externalId,
  'user13',
  9,
  1746897995292,
  1746897995292
FROM Work w
WHERE w.externalId = 31911 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31911_3875feef-943f-5e0a-8ce5-e9a71e97f358_s',
  w.id,
  w.externalId,
  '3875feef-943f-5e0a-8ce5-e9a71e97f358',
  8,
  1746897995292,
  1746897995292
FROM Work w
WHERE w.externalId = 31911 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31911_user3_s',
  w.id,
  w.externalId,
  'user3',
  9.5,
  1746897995292,
  1746897995292
FROM Work w
WHERE w.externalId = 31911 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31911_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746897995292,
  1746897995292
FROM Work w
WHERE w.externalId = 31911 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31911_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8.5,
  1746897995292,
  1746897995292
FROM Work w
WHERE w.externalId = 31911 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31911_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  6,
  1746897995292,
  1746897995292
FROM Work w
WHERE w.externalId = 31911 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31911_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  10,
  1746897995292,
  1746897995292
FROM Work w
WHERE w.externalId = 31911 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31911_user8_s',
  w.id,
  w.externalId,
  'user8',
  10,
  1746897995292,
  1746897995292
FROM Work w
WHERE w.externalId = 31911 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31911_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746897995292,
  1746897995292
FROM Work w
WHERE w.externalId = 31911 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_42410_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8.5,
  1746897995562,
  1746897995562
FROM Work w
WHERE w.externalId = 42410 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_42253_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8.5,
  1746897995833,
  1746897995833
FROM Work w
WHERE w.externalId = 42253 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_67075_user13_s',
  w.id,
  w.externalId,
  'user13',
  8.5,
  1746897996102,
  1746897996102
FROM Work w
WHERE w.externalId = 67075 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_67075_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746897996102,
  1746897996102
FROM Work w
WHERE w.externalId = 67075 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_67075_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746897996102,
  1746897996102
FROM Work w
WHERE w.externalId = 67075 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_26867_user13_s',
  w.id,
  w.externalId,
  'user13',
  9,
  1746897996373,
  1746897996373
FROM Work w
WHERE w.externalId = 26867 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_26867_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897996373,
  1746897996373
FROM Work w
WHERE w.externalId = 26867 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_26867_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8.5,
  1746897996373,
  1746897996373
FROM Work w
WHERE w.externalId = 26867 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_82739_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8.5,
  1746897996776,
  1746897996776
FROM Work w
WHERE w.externalId = 82739 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_75214_user3_s',
  w.id,
  w.externalId,
  'user3',
  8.5,
  1746897997023,
  1746897997023
FROM Work w
WHERE w.externalId = 75214 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_75214_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8.5,
  1746897997023,
  1746897997023
FROM Work w
WHERE w.externalId = 75214 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13916_user13_s',
  w.id,
  w.externalId,
  'user13',
  9,
  1746897997284,
  1746897997284
FROM Work w
WHERE w.externalId = 13916 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13916_user3_s',
  w.id,
  w.externalId,
  'user3',
  8,
  1746897997284,
  1746897997284
FROM Work w
WHERE w.externalId = 13916 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13916_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897997284,
  1746897997284
FROM Work w
WHERE w.externalId = 13916 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13916_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746897997284,
  1746897997284
FROM Work w
WHERE w.externalId = 13916 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13916_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  9,
  1746897997284,
  1746897997284
FROM Work w
WHERE w.externalId = 13916 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13916_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9,
  1746897997284,
  1746897997284
FROM Work w
WHERE w.externalId = 13916 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_13916_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746897997284,
  1746897997284
FROM Work w
WHERE w.externalId = 13916 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_203737_user13_s',
  w.id,
  w.externalId,
  'user13',
  8,
  1746897997574,
  1746897997574
FROM Work w
WHERE w.externalId = 203737 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_203737_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746897997574,
  1746897997574
FROM Work w
WHERE w.externalId = 203737 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_203737_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746897997574,
  1746897997574
FROM Work w
WHERE w.externalId = 203737 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_203737_user8_s',
  w.id,
  w.externalId,
  'user8',
  9,
  1746897997574,
  1746897997574
FROM Work w
WHERE w.externalId = 203737 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_203737_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8.5,
  1746897997574,
  1746897997574
FROM Work w
WHERE w.externalId = 203737 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_12971_user13_s',
  w.id,
  w.externalId,
  'user13',
  9,
  1746897997875,
  1746897997875
FROM Work w
WHERE w.externalId = 12971 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_12971_user3_s',
  w.id,
  w.externalId,
  'user3',
  8,
  1746897997875,
  1746897997875
FROM Work w
WHERE w.externalId = 12971 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_12971_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897997875,
  1746897997875
FROM Work w
WHERE w.externalId = 12971 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_12971_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746897997875,
  1746897997875
FROM Work w
WHERE w.externalId = 12971 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_12971_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746897997875,
  1746897997875
FROM Work w
WHERE w.externalId = 12971 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_12971_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9.5,
  1746897997875,
  1746897997875
FROM Work w
WHERE w.externalId = 12971 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_12971_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746897997875,
  1746897997875
FROM Work w
WHERE w.externalId = 12971 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_280110_user13_s',
  w.id,
  w.externalId,
  'user13',
  8,
  1746897998125,
  1746897998125
FROM Work w
WHERE w.externalId = 280110 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_280110_user3_s',
  w.id,
  w.externalId,
  'user3',
  7,
  1746897998125,
  1746897998125
FROM Work w
WHERE w.externalId = 280110 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_280110_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7,
  1746897998125,
  1746897998125
FROM Work w
WHERE w.externalId = 280110 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_280110_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746897998125,
  1746897998125
FROM Work w
WHERE w.externalId = 280110 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_280110_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8.5,
  1746897998125,
  1746897998125
FROM Work w
WHERE w.externalId = 280110 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_280110_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9.5,
  1746897998125,
  1746897998125
FROM Work w
WHERE w.externalId = 280110 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_280110_user8_s',
  w.id,
  w.externalId,
  'user8',
  9,
  1746897998125,
  1746897998125
FROM Work w
WHERE w.externalId = 280110 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_66958_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897998399,
  1746897998399
FROM Work w
WHERE w.externalId = 66958 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_66958_user8_s',
  w.id,
  w.externalId,
  'user8',
  8.5,
  1746897998399,
  1746897998399
FROM Work w
WHERE w.externalId = 66958 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_207250_user13_s',
  w.id,
  w.externalId,
  'user13',
  7.5,
  1746897998655,
  1746897998655
FROM Work w
WHERE w.externalId = 207250 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_207250_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746897998655,
  1746897998655
FROM Work w
WHERE w.externalId = 207250 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_26453_user13_s',
  w.id,
  w.externalId,
  'user13',
  8,
  1746897998919,
  1746897998919
FROM Work w
WHERE w.externalId = 26453 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_26453_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8.5,
  1746897998919,
  1746897998919
FROM Work w
WHERE w.externalId = 26453 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_30984_user13_s',
  w.id,
  w.externalId,
  'user13',
  9,
  1746897999166,
  1746897999166
FROM Work w
WHERE w.externalId = 30984 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_30984_user3_s',
  w.id,
  w.externalId,
  'user3',
  7,
  1746897999166,
  1746897999166
FROM Work w
WHERE w.externalId = 30984 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_30984_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746897999166,
  1746897999166
FROM Work w
WHERE w.externalId = 30984 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_30984_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  10,
  1746897999166,
  1746897999166
FROM Work w
WHERE w.externalId = 30984 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_30984_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8.5,
  1746897999166,
  1746897999166
FROM Work w
WHERE w.externalId = 30984 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_30984_user8_s',
  w.id,
  w.externalId,
  'user8',
  7.5,
  1746897999166,
  1746897999166
FROM Work w
WHERE w.externalId = 30984 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_30991_user13_s',
  w.id,
  w.externalId,
  'user13',
  8,
  1746897999446,
  1746897999446
FROM Work w
WHERE w.externalId = 30991 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_30991_user3_s',
  w.id,
  w.externalId,
  'user3',
  9,
  1746897999446,
  1746897999446
FROM Work w
WHERE w.externalId = 30991 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_30991_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897999446,
  1746897999446
FROM Work w
WHERE w.externalId = 30991 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_30991_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746897999446,
  1746897999446
FROM Work w
WHERE w.externalId = 30991 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_30991_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  6,
  1746897999446,
  1746897999446
FROM Work w
WHERE w.externalId = 30991 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_30991_user8_s',
  w.id,
  w.externalId,
  'user8',
  9,
  1746897999446,
  1746897999446
FROM Work w
WHERE w.externalId = 30991 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_220542_user13_s',
  w.id,
  w.externalId,
  'user13',
  8,
  1746897999726,
  1746897999726
FROM Work w
WHERE w.externalId = 220542 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_220542_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746897999726,
  1746897999726
FROM Work w
WHERE w.externalId = 220542 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_220542_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8.5,
  1746897999726,
  1746897999726
FROM Work w
WHERE w.externalId = 220542 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_42509_user13_s',
  w.id,
  w.externalId,
  'user13',
  7,
  1746898000007,
  1746898000007
FROM Work w
WHERE w.externalId = 42509 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_42509_user3_s',
  w.id,
  w.externalId,
  'user3',
  8.5,
  1746898000007,
  1746898000007
FROM Work w
WHERE w.externalId = 42509 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_42509_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  10,
  1746898000007,
  1746898000007
FROM Work w
WHERE w.externalId = 42509 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_42509_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746898000007,
  1746898000007
FROM Work w
WHERE w.externalId = 42509 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_42509_user8_s',
  w.id,
  w.externalId,
  'user8',
  9,
  1746898000007,
  1746898000007
FROM Work w
WHERE w.externalId = 42509 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_42509_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7.5,
  1746898000007,
  1746898000007
FROM Work w
WHERE w.externalId = 42509 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_208891_user13_s',
  w.id,
  w.externalId,
  'user13',
  8,
  1746898000327,
  1746898000327
FROM Work w
WHERE w.externalId = 208891 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_208891_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898000327,
  1746898000327
FROM Work w
WHERE w.externalId = 208891 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_208891_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746898000327,
  1746898000327
FROM Work w
WHERE w.externalId = 208891 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_208891_user8_s',
  w.id,
  w.externalId,
  'user8',
  8.5,
  1746898000327,
  1746898000327
FROM Work w
WHERE w.externalId = 208891 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_64706_user13_s',
  w.id,
  w.externalId,
  'user13',
  9.5,
  1746898000607,
  1746898000607
FROM Work w
WHERE w.externalId = 64706 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_64706_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898000607,
  1746898000607
FROM Work w
WHERE w.externalId = 64706 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_64706_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8.5,
  1746898000607,
  1746898000607
FROM Work w
WHERE w.externalId = 64706 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_64706_user8_s',
  w.id,
  w.externalId,
  'user8',
  6.5,
  1746898000607,
  1746898000607
FROM Work w
WHERE w.externalId = 64706 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_65249_user13_s',
  w.id,
  w.externalId,
  'user13',
  7.5,
  1746898000888,
  1746898000888
FROM Work w
WHERE w.externalId = 65249 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_65249_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898000888,
  1746898000888
FROM Work w
WHERE w.externalId = 65249 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_65249_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8.5,
  1746898000888,
  1746898000888
FROM Work w
WHERE w.externalId = 65249 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_65249_user8_s',
  w.id,
  w.externalId,
  'user8',
  9.5,
  1746898000888,
  1746898000888
FROM Work w
WHERE w.externalId = 65249 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_65249_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7,
  1746898000888,
  1746898000888
FROM Work w
WHERE w.externalId = 65249 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76059_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898001168,
  1746898001168
FROM Work w
WHERE w.externalId = 76059 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_39434_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898001448,
  1746898001448
FROM Work w
WHERE w.externalId = 39434 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_39434_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898001448,
  1746898001448
FROM Work w
WHERE w.externalId = 39434 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_12598_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898001728,
  1746898001728
FROM Work w
WHERE w.externalId = 12598 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_45213_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898002009,
  1746898002009
FROM Work w
WHERE w.externalId = 45213 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_138357_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898002289,
  1746898002289
FROM Work w
WHERE w.externalId = 138357 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_23591_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898002569,
  1746898002569
FROM Work w
WHERE w.externalId = 23591 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_73017_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746898002891,
  1746898002891
FROM Work w
WHERE w.externalId = 73017 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31724_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  10,
  1746898003170,
  1746898003170
FROM Work w
WHERE w.externalId = 31724 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31724_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  6,
  1746898003170,
  1746898003170
FROM Work w
WHERE w.externalId = 31724 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31724_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898003170,
  1746898003170
FROM Work w
WHERE w.externalId = 31724 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_85991_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898003650,
  1746898003650
FROM Work w
WHERE w.externalId = 85991 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_270474_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898003931,
  1746898003931
FROM Work w
WHERE w.externalId = 270474 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76757_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898004211,
  1746898004211
FROM Work w
WHERE w.externalId = 76757 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_92602_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898004491,
  1746898004491
FROM Work w
WHERE w.externalId = 92602 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_42557_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898004852,
  1746898004852
FROM Work w
WHERE w.externalId = 42557 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_72636_user13_s',
  w.id,
  w.externalId,
  'user13',
  8,
  1746898005132,
  1746898005132
FROM Work w
WHERE w.externalId = 72636 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_72636_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898005132,
  1746898005132
FROM Work w
WHERE w.externalId = 72636 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_72636_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  9,
  1746898005132,
  1746898005132
FROM Work w
WHERE w.externalId = 72636 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_72636_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  7,
  1746898005132,
  1746898005132
FROM Work w
WHERE w.externalId = 72636 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_72636_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746898005132,
  1746898005132
FROM Work w
WHERE w.externalId = 72636 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_902_user13_s',
  w.id,
  w.externalId,
  'user13',
  7.5,
  1746898005413,
  1746898005413
FROM Work w
WHERE w.externalId = 902 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_902_3875feef-943f-5e0a-8ce5-e9a71e97f358_s',
  w.id,
  w.externalId,
  '3875feef-943f-5e0a-8ce5-e9a71e97f358',
  8.5,
  1746898005413,
  1746898005413
FROM Work w
WHERE w.externalId = 902 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_902_user4_s',
  w.id,
  w.externalId,
  'user4',
  6,
  1746898005413,
  1746898005413
FROM Work w
WHERE w.externalId = 902 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_902_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746898005413,
  1746898005413
FROM Work w
WHERE w.externalId = 902 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_902_user8_s',
  w.id,
  w.externalId,
  'user8',
  9,
  1746898005413,
  1746898005413
FROM Work w
WHERE w.externalId = 902 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61459_user13_s',
  w.id,
  w.externalId,
  'user13',
  8.5,
  1746898005732,
  1746898005732
FROM Work w
WHERE w.externalId = 61459 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61459_user3_s',
  w.id,
  w.externalId,
  'user3',
  8,
  1746898005732,
  1746898005732
FROM Work w
WHERE w.externalId = 61459 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61459_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898005732,
  1746898005732
FROM Work w
WHERE w.externalId = 61459 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61459_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8.5,
  1746898005732,
  1746898005732
FROM Work w
WHERE w.externalId = 61459 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61459_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  7.5,
  1746898005732,
  1746898005732
FROM Work w
WHERE w.externalId = 61459 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61459_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898005732,
  1746898005732
FROM Work w
WHERE w.externalId = 61459 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61459_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7.5,
  1746898005732,
  1746898005732
FROM Work w
WHERE w.externalId = 61459 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_66941_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898006014,
  1746898006014
FROM Work w
WHERE w.externalId = 66941 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_99778_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898006293,
  1746898006293
FROM Work w
WHERE w.externalId = 99778 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_34801_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746898006574,
  1746898006574
FROM Work w
WHERE w.externalId = 34801 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_85937_user13_s',
  w.id,
  w.externalId,
  'user13',
  8,
  1746898006854,
  1746898006854
FROM Work w
WHERE w.externalId = 85937 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_85937_3875feef-943f-5e0a-8ce5-e9a71e97f358_s',
  w.id,
  w.externalId,
  '3875feef-943f-5e0a-8ce5-e9a71e97f358',
  8,
  1746898006854,
  1746898006854
FROM Work w
WHERE w.externalId = 85937 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_85937_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898006854,
  1746898006854
FROM Work w
WHERE w.externalId = 85937 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_85937_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746898006854,
  1746898006854
FROM Work w
WHERE w.externalId = 85937 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_85937_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746898006854,
  1746898006854
FROM Work w
WHERE w.externalId = 85937 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_85937_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9.5,
  1746898006854,
  1746898006854
FROM Work w
WHERE w.externalId = 85937 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_85937_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746898006854,
  1746898006854
FROM Work w
WHERE w.externalId = 85937 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_85937_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  7,
  1746898006854,
  1746898006854
FROM Work w
WHERE w.externalId = 85937 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46260_user13_s',
  w.id,
  w.externalId,
  'user13',
  8.5,
  1746898007134,
  1746898007134
FROM Work w
WHERE w.externalId = 46260 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46260_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  6,
  1746898007134,
  1746898007134
FROM Work w
WHERE w.externalId = 46260 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46260_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746898007134,
  1746898007134
FROM Work w
WHERE w.externalId = 46260 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46260_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746898007134,
  1746898007134
FROM Work w
WHERE w.externalId = 46260 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46260_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9,
  1746898007134,
  1746898007134
FROM Work w
WHERE w.externalId = 46260 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46260_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898007134,
  1746898007134
FROM Work w
WHERE w.externalId = 46260 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46260_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746898007134,
  1746898007134
FROM Work w
WHERE w.externalId = 46260 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_95479_user13_s',
  w.id,
  w.externalId,
  'user13',
  7,
  1746898007414,
  1746898007414
FROM Work w
WHERE w.externalId = 95479 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_95479_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898007414,
  1746898007414
FROM Work w
WHERE w.externalId = 95479 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_95479_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746898007414,
  1746898007414
FROM Work w
WHERE w.externalId = 95479 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_95479_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8.5,
  1746898007414,
  1746898007414
FROM Work w
WHERE w.externalId = 95479 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_95479_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9,
  1746898007414,
  1746898007414
FROM Work w
WHERE w.externalId = 95479 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_95479_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746898007414,
  1746898007414
FROM Work w
WHERE w.externalId = 95479 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_77939_user13_s',
  w.id,
  w.externalId,
  'user13',
  8,
  1746898007694,
  1746898007694
FROM Work w
WHERE w.externalId = 77939 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_77939_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8.5,
  1746898007694,
  1746898007694
FROM Work w
WHERE w.externalId = 77939 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_77939_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746898007694,
  1746898007694
FROM Work w
WHERE w.externalId = 77939 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_205050_user13_s',
  w.id,
  w.externalId,
  'user13',
  8.5,
  1746898007975,
  1746898007975
FROM Work w
WHERE w.externalId = 205050 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_205050_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746898007975,
  1746898007975
FROM Work w
WHERE w.externalId = 205050 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_205050_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898007975,
  1746898007975
FROM Work w
WHERE w.externalId = 205050 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_117465_user13_s',
  w.id,
  w.externalId,
  'user13',
  7.5,
  1746898008295,
  1746898008295
FROM Work w
WHERE w.externalId = 117465 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_117465_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898008295,
  1746898008295
FROM Work w
WHERE w.externalId = 117465 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_117465_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746898008295,
  1746898008295
FROM Work w
WHERE w.externalId = 117465 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_117465_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8,
  1746898008295,
  1746898008295
FROM Work w
WHERE w.externalId = 117465 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_117465_user8_s',
  w.id,
  w.externalId,
  'user8',
  7.5,
  1746898008295,
  1746898008295
FROM Work w
WHERE w.externalId = 117465 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_127532_user13_s',
  w.id,
  w.externalId,
  'user13',
  8,
  1746898008615,
  1746898008615
FROM Work w
WHERE w.externalId = 127532 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_127532_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7,
  1746898008615,
  1746898008615
FROM Work w
WHERE w.externalId = 127532 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_127532_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746898008615,
  1746898008615
FROM Work w
WHERE w.externalId = 127532 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_127532_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9,
  1746898008615,
  1746898008615
FROM Work w
WHERE w.externalId = 127532 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_127532_user8_s',
  w.id,
  w.externalId,
  'user8',
  7.5,
  1746898008615,
  1746898008615
FROM Work w
WHERE w.externalId = 127532 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_65931_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7,
  1746898008896,
  1746898008896
FROM Work w
WHERE w.externalId = 65931 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_65931_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8.5,
  1746898008896,
  1746898008896
FROM Work w
WHERE w.externalId = 65931 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_62273_user13_s',
  w.id,
  w.externalId,
  'user13',
  7,
  1746898009176,
  1746898009176
FROM Work w
WHERE w.externalId = 62273 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_62273_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746898009176,
  1746898009176
FROM Work w
WHERE w.externalId = 62273 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_62273_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746898009176,
  1746898009176
FROM Work w
WHERE w.externalId = 62273 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_62273_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746898009176,
  1746898009176
FROM Work w
WHERE w.externalId = 62273 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_79166_user13_s',
  w.id,
  w.externalId,
  'user13',
  7.5,
  1746898009456,
  1746898009456
FROM Work w
WHERE w.externalId = 79166 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_79166_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898009456,
  1746898009456
FROM Work w
WHERE w.externalId = 79166 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_93816_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7,
  1746898009737,
  1746898009737
FROM Work w
WHERE w.externalId = 93816 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_93816_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8.5,
  1746898009737,
  1746898009737
FROM Work w
WHERE w.externalId = 93816 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_37305_user13_s',
  w.id,
  w.externalId,
  'user13',
  7.5,
  1746898010016,
  1746898010016
FROM Work w
WHERE w.externalId = 37305 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_37305_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746898010016,
  1746898010016
FROM Work w
WHERE w.externalId = 37305 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31910_user13_s',
  w.id,
  w.externalId,
  'user13',
  8,
  1746898010297,
  1746898010297
FROM Work w
WHERE w.externalId = 31910 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31910_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  6,
  1746898010297,
  1746898010297
FROM Work w
WHERE w.externalId = 31910 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31910_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746898010297,
  1746898010297
FROM Work w
WHERE w.externalId = 31910 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31910_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  8,
  1746898010297,
  1746898010297
FROM Work w
WHERE w.externalId = 31910 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31910_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  9,
  1746898010297,
  1746898010297
FROM Work w
WHERE w.externalId = 31910 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31910_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746898010297,
  1746898010297
FROM Work w
WHERE w.externalId = 31910 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_31910_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  8,
  1746898010297,
  1746898010297
FROM Work w
WHERE w.externalId = 31910 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_114410_user13_s',
  w.id,
  w.externalId,
  'user13',
  7,
  1746898010777,
  1746898010777
FROM Work w
WHERE w.externalId = 114410 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_114410_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746898010777,
  1746898010777
FROM Work w
WHERE w.externalId = 114410 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_114410_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746898010777,
  1746898010777
FROM Work w
WHERE w.externalId = 114410 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_114410_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  6,
  1746898010777,
  1746898010777
FROM Work w
WHERE w.externalId = 114410 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_114410_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898010777,
  1746898010777
FROM Work w
WHERE w.externalId = 114410 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_207784_user13_s',
  w.id,
  w.externalId,
  'user13',
  7.5,
  1746898011057,
  1746898011057
FROM Work w
WHERE w.externalId = 207784 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_207784_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898011057,
  1746898011057
FROM Work w
WHERE w.externalId = 207784 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_207784_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746898011057,
  1746898011057
FROM Work w
WHERE w.externalId = 207784 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_116727_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7.5,
  1746898011338,
  1746898011338
FROM Work w
WHERE w.externalId = 116727 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_95550_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7.5,
  1746898011618,
  1746898011618
FROM Work w
WHERE w.externalId = 95550 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_139130_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7.5,
  1746898011978,
  1746898011978
FROM Work w
WHERE w.externalId = 139130 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_238843_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7.5,
  1746898012259,
  1746898012259
FROM Work w
WHERE w.externalId = 238843 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_223500_user13_s',
  w.id,
  w.externalId,
  'user13',
  7.5,
  1746898012539,
  1746898012539
FROM Work w
WHERE w.externalId = 223500 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_223500_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  6.5,
  1746898012539,
  1746898012539
FROM Work w
WHERE w.externalId = 223500 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_223500_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8.5,
  1746898012539,
  1746898012539
FROM Work w
WHERE w.externalId = 223500 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_64710_user13_s',
  w.id,
  w.externalId,
  'user13',
  7,
  1746898012819,
  1746898012819
FROM Work w
WHERE w.externalId = 64710 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_64710_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7.5,
  1746898012819,
  1746898012819
FROM Work w
WHERE w.externalId = 64710 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_64710_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  7.5,
  1746898012819,
  1746898012819
FROM Work w
WHERE w.externalId = 64710 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_83100_user13_s',
  w.id,
  w.externalId,
  'user13',
  7.5,
  1746898013100,
  1746898013100
FROM Work w
WHERE w.externalId = 83100 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_83100_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  6,
  1746898013100,
  1746898013100
FROM Work w
WHERE w.externalId = 83100 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_83100_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  8,
  1746898013100,
  1746898013100
FROM Work w
WHERE w.externalId = 83100 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_83100_user8_s',
  w.id,
  w.externalId,
  'user8',
  7.5,
  1746898013100,
  1746898013100
FROM Work w
WHERE w.externalId = 83100 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_65942_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  6.5,
  1746898013419,
  1746898013419
FROM Work w
WHERE w.externalId = 65942 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_65942_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898013419,
  1746898013419
FROM Work w
WHERE w.externalId = 65942 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_116983_user13_s',
  w.id,
  w.externalId,
  'user13',
  6.5,
  1746898013699,
  1746898013699
FROM Work w
WHERE w.externalId = 116983 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_116983_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746898013699,
  1746898013699
FROM Work w
WHERE w.externalId = 116983 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_116983_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898013699,
  1746898013699
FROM Work w
WHERE w.externalId = 116983 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_100565_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7,
  1746898013980,
  1746898013980
FROM Work w
WHERE w.externalId = 100565 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_67043_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7,
  1746898014260,
  1746898014260
FROM Work w
WHERE w.externalId = 67043 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_62110_user13_s',
  w.id,
  w.externalId,
  'user13',
  7,
  1746898014980,
  1746898014980
FROM Work w
WHERE w.externalId = 62110 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_62110_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  6.5,
  1746898014980,
  1746898014980
FROM Work w
WHERE w.externalId = 62110 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_62110_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7.5,
  1746898014980,
  1746898014980
FROM Work w
WHERE w.externalId = 62110 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_225168_user13_s',
  w.id,
  w.externalId,
  'user13',
  6,
  1746898015261,
  1746898015261
FROM Work w
WHERE w.externalId = 225168 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_225168_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898015261,
  1746898015261
FROM Work w
WHERE w.externalId = 225168 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_77240_user13_s',
  w.id,
  w.externalId,
  'user13',
  7,
  1746898015541,
  1746898015541
FROM Work w
WHERE w.externalId = 77240 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_77240_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746898015541,
  1746898015541
FROM Work w
WHERE w.externalId = 77240 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_77240_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  7,
  1746898015541,
  1746898015541
FROM Work w
WHERE w.externalId = 77240 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_77240_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746898015541,
  1746898015541
FROM Work w
WHERE w.externalId = 77240 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_86031_user13_s',
  w.id,
  w.externalId,
  'user13',
  7,
  1746898015823,
  1746898015823
FROM Work w
WHERE w.externalId = 86031 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_86031_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7,
  1746898015823,
  1746898015823
FROM Work w
WHERE w.externalId = 86031 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_86031_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746898015823,
  1746898015823
FROM Work w
WHERE w.externalId = 86031 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_86031_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8,
  1746898015823,
  1746898015823
FROM Work w
WHERE w.externalId = 86031 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_86031_user8_s',
  w.id,
  w.externalId,
  'user8',
  6,
  1746898015823,
  1746898015823
FROM Work w
WHERE w.externalId = 86031 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61415_user13_s',
  w.id,
  w.externalId,
  'user13',
  7,
  1746898016102,
  1746898016102
FROM Work w
WHERE w.externalId = 61415 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61415_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746898016102,
  1746898016102
FROM Work w
WHERE w.externalId = 61415 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60728_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  9,
  1746898016382,
  1746898016382
FROM Work w
WHERE w.externalId = 60728 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60728_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  5,
  1746898016382,
  1746898016382
FROM Work w
WHERE w.externalId = 60728 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60728_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746898016382,
  1746898016382
FROM Work w
WHERE w.externalId = 60728 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_65950_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7,
  1746898016662,
  1746898016662
FROM Work w
WHERE w.externalId = 65950 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_45783_user13_s',
  w.id,
  w.externalId,
  'user13',
  7,
  1746898016942,
  1746898016942
FROM Work w
WHERE w.externalId = 45783 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_45783_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7.5,
  1746898016942,
  1746898016942
FROM Work w
WHERE w.externalId = 45783 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_45783_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  6.5,
  1746898016942,
  1746898016942
FROM Work w
WHERE w.externalId = 45783 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_56568_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898017223,
  1746898017223
FROM Work w
WHERE w.externalId = 56568 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_56568_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  6,
  1746898017223,
  1746898017223
FROM Work w
WHERE w.externalId = 56568 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_94904_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746898017502,
  1746898017502
FROM Work w
WHERE w.externalId = 94904 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_94904_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746898017502,
  1746898017502
FROM Work w
WHERE w.externalId = 94904 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_116725_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7,
  1746898017783,
  1746898017783
FROM Work w
WHERE w.externalId = 116725 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_70072_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7,
  1746898018063,
  1746898018063
FROM Work w
WHERE w.externalId = 70072 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_217766_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  6,
  1746898018343,
  1746898018343
FROM Work w
WHERE w.externalId = 217766 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_217766_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898018343,
  1746898018343
FROM Work w
WHERE w.externalId = 217766 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46261_user13_s',
  w.id,
  w.externalId,
  'user13',
  6.5,
  1746898018623,
  1746898018623
FROM Work w
WHERE w.externalId = 46261 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46261_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746898018623,
  1746898018623
FROM Work w
WHERE w.externalId = 46261 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46261_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746898018623,
  1746898018623
FROM Work w
WHERE w.externalId = 46261 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_105009_user13_s',
  w.id,
  w.externalId,
  'user13',
  7,
  1746898018903,
  1746898018903
FROM Work w
WHERE w.externalId = 105009 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_105009_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  6.5,
  1746898018903,
  1746898018903
FROM Work w
WHERE w.externalId = 105009 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_105009_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746898018903,
  1746898018903
FROM Work w
WHERE w.externalId = 105009 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_88046_user13_s',
  w.id,
  w.externalId,
  'user13',
  7,
  1746898019183,
  1746898019183
FROM Work w
WHERE w.externalId = 88046 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_88046_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  6,
  1746898019183,
  1746898019183
FROM Work w
WHERE w.externalId = 88046 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_88046_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  6.5,
  1746898019183,
  1746898019183
FROM Work w
WHERE w.externalId = 88046 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_88046_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  7,
  1746898019183,
  1746898019183
FROM Work w
WHERE w.externalId = 88046 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_88046_user8_s',
  w.id,
  w.externalId,
  'user8',
  7.5,
  1746898019183,
  1746898019183
FROM Work w
WHERE w.externalId = 88046 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_120089_user13_s',
  w.id,
  w.externalId,
  'user13',
  6.5,
  1746898019464,
  1746898019464
FROM Work w
WHERE w.externalId = 120089 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_120089_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7,
  1746898019464,
  1746898019464
FROM Work w
WHERE w.externalId = 120089 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_120089_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  7,
  1746898019464,
  1746898019464
FROM Work w
WHERE w.externalId = 120089 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_120089_user8_s',
  w.id,
  w.externalId,
  'user8',
  6.5,
  1746898019464,
  1746898019464
FROM Work w
WHERE w.externalId = 120089 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61901_user13_s',
  w.id,
  w.externalId,
  'user13',
  6.5,
  1746898019744,
  1746898019744
FROM Work w
WHERE w.externalId = 61901 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61901_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7,
  1746898019744,
  1746898019744
FROM Work w
WHERE w.externalId = 61901 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61901_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  6,
  1746898019744,
  1746898019744
FROM Work w
WHERE w.externalId = 61901 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61901_user8_s',
  w.id,
  w.externalId,
  'user8',
  7,
  1746898019744,
  1746898019744
FROM Work w
WHERE w.externalId = 61901 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_114868_user13_s',
  w.id,
  w.externalId,
  'user13',
  6.5,
  1746898020024,
  1746898020024
FROM Work w
WHERE w.externalId = 114868 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_114868_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  5,
  1746898020024,
  1746898020024
FROM Work w
WHERE w.externalId = 114868 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_114868_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  7,
  1746898020024,
  1746898020024
FROM Work w
WHERE w.externalId = 114868 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_114868_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8,
  1746898020024,
  1746898020024
FROM Work w
WHERE w.externalId = 114868 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_131041_user13_s',
  w.id,
  w.externalId,
  'user13',
  7.5,
  1746898020304,
  1746898020304
FROM Work w
WHERE w.externalId = 131041 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_131041_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  6,
  1746898020304,
  1746898020304
FROM Work w
WHERE w.externalId = 131041 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_131041_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  6.5,
  1746898020304,
  1746898020304
FROM Work w
WHERE w.externalId = 131041 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_131041_8bde425d-94ee-5042-afa2-28340eaec3eb_s',
  w.id,
  w.externalId,
  '8bde425d-94ee-5042-afa2-28340eaec3eb',
  7,
  1746898020304,
  1746898020304
FROM Work w
WHERE w.externalId = 131041 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_131041_user8_s',
  w.id,
  w.externalId,
  'user8',
  6,
  1746898020304,
  1746898020304
FROM Work w
WHERE w.externalId = 131041 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76121_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898020584,
  1746898020584
FROM Work w
WHERE w.externalId = 76121 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_76121_user8_s',
  w.id,
  w.externalId,
  'user8',
  5,
  1746898020584,
  1746898020584
FROM Work w
WHERE w.externalId = 76121 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_68103_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  6.5,
  1746898020865,
  1746898020865
FROM Work w
WHERE w.externalId = 68103 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_86463_bf3989da-315e-5cf6-a218-b670f3406e8e_s',
  w.id,
  w.externalId,
  'bf3989da-315e-5cf6-a218-b670f3406e8e',
  6.5,
  1746898021186,
  1746898021186
FROM Work w
WHERE w.externalId = 86463 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_73223_user13_s',
  w.id,
  w.externalId,
  'user13',
  6,
  1746898021465,
  1746898021465
FROM Work w
WHERE w.externalId = 73223 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_73223_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  5,
  1746898021465,
  1746898021465
FROM Work w
WHERE w.externalId = 73223 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_73223_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  8,
  1746898021465,
  1746898021465
FROM Work w
WHERE w.externalId = 73223 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_97860_user13_s',
  w.id,
  w.externalId,
  'user13',
  6.5,
  1746898021785,
  1746898021785
FROM Work w
WHERE w.externalId = 97860 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_97860_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  6,
  1746898021785,
  1746898021785
FROM Work w
WHERE w.externalId = 97860 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_97860_user8_s',
  w.id,
  w.externalId,
  'user8',
  6.5,
  1746898021785,
  1746898021785
FROM Work w
WHERE w.externalId = 97860 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_72517_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  4,
  1746898022226,
  1746898022226
FROM Work w
WHERE w.externalId = 72517 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_72517_user8_s',
  w.id,
  w.externalId,
  'user8',
  8,
  1746898022226,
  1746898022226
FROM Work w
WHERE w.externalId = 72517 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_36837_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  6,
  1746898022506,
  1746898022506
FROM Work w
WHERE w.externalId = 36837 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_65676_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  6,
  1746898022786,
  1746898022786
FROM Work w
WHERE w.externalId = 65676 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_218843_user13_s',
  w.id,
  w.externalId,
  'user13',
  5.5,
  1746898023067,
  1746898023067
FROM Work w
WHERE w.externalId = 218843 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_218843_user3_s',
  w.id,
  w.externalId,
  'user3',
  6,
  1746898023067,
  1746898023067
FROM Work w
WHERE w.externalId = 218843 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_218843_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  6.5,
  1746898023067,
  1746898023067
FROM Work w
WHERE w.externalId = 218843 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_218843_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  7,
  1746898023067,
  1746898023067
FROM Work w
WHERE w.externalId = 218843 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_218843_user8_s',
  w.id,
  w.externalId,
  'user8',
  4,
  1746898023067,
  1746898023067
FROM Work w
WHERE w.externalId = 218843 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46671_user13_s',
  w.id,
  w.externalId,
  'user13',
  5.5,
  1746898023347,
  1746898023347
FROM Work w
WHERE w.externalId = 46671 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46671_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  6,
  1746898023347,
  1746898023347
FROM Work w
WHERE w.externalId = 46671 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_46671_user8_s',
  w.id,
  w.externalId,
  'user8',
  4,
  1746898023347,
  1746898023347
FROM Work w
WHERE w.externalId = 46671 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_83097_user13_s',
  w.id,
  w.externalId,
  'user13',
  5.5,
  1746898023667,
  1746898023667
FROM Work w
WHERE w.externalId = 83097 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_83097_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  6,
  1746898023667,
  1746898023667
FROM Work w
WHERE w.externalId = 83097 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_83097_user8_s',
  w.id,
  w.externalId,
  'user8',
  4,
  1746898023667,
  1746898023667
FROM Work w
WHERE w.externalId = 83097 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_62773_3bb8798f-1ff0-59c3-9da8-1cfa2094c876_s',
  w.id,
  w.externalId,
  '3bb8798f-1ff0-59c3-9da8-1cfa2094c876',
  5,
  1746898023947,
  1746898023947
FROM Work w
WHERE w.externalId = 62773 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61374_user13_s',
  w.id,
  w.externalId,
  'user13',
  5,
  1746898024227,
  1746898024227
FROM Work w
WHERE w.externalId = 61374 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61374_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  5.5,
  1746898024227,
  1746898024227
FROM Work w
WHERE w.externalId = 61374 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61374_9931aaec-16c2-5cf9-a135-44afbdbaa1e4_s',
  w.id,
  w.externalId,
  '9931aaec-16c2-5cf9-a135-44afbdbaa1e4',
  3,
  1746898024227,
  1746898024227
FROM Work w
WHERE w.externalId = 61374 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61374_user8_s',
  w.id,
  w.externalId,
  'user8',
  5,
  1746898024227,
  1746898024227
FROM Work w
WHERE w.externalId = 61374 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_61374_user9_s',
  w.id,
  w.externalId,
  'user9',
  7,
  1746898024227,
  1746898024227
FROM Work w
WHERE w.externalId = 61374 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_80564_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  7,
  1746898024709,
  1746898024709
FROM Work w
WHERE w.externalId = 80564 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_24835_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8.5,
  1746898025068,
  1746898025068
FROM Work w
WHERE w.externalId = 24835 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_60811_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8,
  1746898025629,
  1746898025629
FROM Work w
WHERE w.externalId = 60811 AND w.type = 'anime';

INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  'wr_100068_2e1b9659-f640-5ea7-8748-0524f2c71888_s',
  w.id,
  w.externalId,
  '2e1b9659-f640-5ea7-8748-0524f2c71888',
  8.5,
  1746898025909,
  1746898025909
FROM Work w
WHERE w.externalId = 100068 AND w.type = 'anime';