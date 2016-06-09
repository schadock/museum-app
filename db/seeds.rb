Exhibit.destroy_all
Type.destroy_all

mitologia = Type.create!(name: 'Mitologia', photo: 'eksp-list-item1')
sportowcy = Type.create!(name: 'Sportowcy', photo: 'eksp-list-item2')
postacie_historyczne = Type.create!(name: 'Postacie historyczne', photo: 'eksp-list-item3')


e1 = Exhibit.create(
    title: 'Stela Hegos', 
    author:  'krąg Agorakritosa',
    date_of_origin: 'ok. 430-450 p.n.e.', 
    description: 'Stela (pionowo ustawiona płyta z dekoracją rzeźbiarską) była jednym z powszechniej stosowanych w antycznej Grecji typów nagrobków. Płaskorzeźby ukazywały zwykle zmarłego, niekiedy w scenie pożegnania zmarłego z najbliższymi, symbolizującej pożegnanie z życiem. Tak jest też w przypadku steli nagrobnej Hegeso — młodej kobiety, przedstawionej ze służącą, podającą jej szkatułkę, zapewne z biżuterią. Stelę Hegeso wiąże się zwykle z kręgiem Agorakritosa z wyspy Paros, najlepszego ucznia Fidiasza, któremu mistrz pozwalał nawet podpisywać się obok siebie na wykonanych wspólnie dziełach. Wprawdzie autorstwo steli Hegeso nie zostało dotąd jednoznacznie ustalone, jednak doskonałość rzeźby pozwala sądzić, że może to być dzieło tego znakomitego artysty.', 
    ex_id: '1',
    type: nil,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/1.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/1.png",
    questions_attributes: [
    { 
     content: 'Dlaczego władze Aten zakazały tworzenia steli nagrobnych?',
     answers_attributes: [
       {content: "ze względu na nadmierne ich zdaniem zbytek grobowców", correct: true},
       {content: "przez złe moce, które wydobywały się z amfor", correct: false},
       {content: "ze względu na brak materiałów budowlanych przy budowie Olimpu", correct: false}
     ]
   }
 ]
)

Cord.create(
    exhibit_id: e1.id,
    cord: "pos-eksp-1")

e2 = Exhibit.create(
  title: 'Woźnica Diomedesa (tzw. Auriga)', 
  author:  'Pitagoras z Region', 
  date_of_origin: 'ok. 475 r. p.n.e.', 
  description: 'Posąg Aurigi jest jedną z niewielu rzeźb antycznych z brązu, zachowanych do naszych czasów. Stanowił on fragment wielkiego pomnika władcy sycylijskiego Polyzatosa. Wystawił on w wyścigach organizowanych na cześć Apolla w jego sanktuarium w Delos zaprzęg, który wygrał zawody. Pomnik przedstawiał kwadrygę z woźnicą i stojącym obok Polyzatosem, ustawioną na wysokim cokole, obok świątyni Apolla. Rzeźbę usytuowano tak, by mogli ją oglądać ludzie idący w procesji wokół świątyni, stąd pochylenie i zwrócenie głowy woźnicy w bok. Jest to dzieło przełomowe, mające jeszcze cechy dawnego, archaicznego stylu rzeźby greckiej, a zarazem kryjące zapowiedź dążenia do naśladowania rzeczywistości, właściwą sztuce okresu klasycznego. Pionowe fałdy długiej szaty (xystis) kojarzące się ze żłobkowaniem kolumny, nadają postaci monumentalny, jeszcze nieco archaiczny  charakter. Lekki skręt ciała sprawiający, że postać staje się bardziej naturalna, a także szczegółowo opracowana twarz z migdałowymi oczami i prostym nosem zapowiadają już sztukę okresu klasycznego.
  Pomnik został zniszczony w wyniku osunięcia się skał w 372 r p.n.e. Resztki monumentu odnaleziono dopiero w 1896 r., zatem w czasach powstawania szczecińskiej kolekcji Auriga był jednym z najnowszych i najciekawszych odkryć.',  
  ex_id: '2', 
  type: sportowcy,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/2.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/2.png"    )
Cord.create(
    exhibit_id: e2.id,
    cord: "pos-eksp-2")


e3 = Exhibit.create(
    title: 'Lekyt nagrobny', 
    author:  'nieznany twórca attycki', 
    date_of_origin: 'po 316 r. p.n.e.', 
    description: 'Lekyt – smukły dzban, służący do przechowywania oliwy, zyskał u schyłku IV w. p.n.e. nową funkcję i nowe znaczenie. W 316 r. p.n.e. władze Aten, walcząc z nadmiernym ich zadaniem zbytkiem grobowców, zakazały wykonywania stel nagrobnych. W związku z tym wykształcił się zwyczaj ustawiania na grobach lekytów, nawiązujących do obrzędów pogrzebowych. Lekyty nagrobne były jednak znacznie większe niż ich pierwowzory i w przeciwieństwie do nich kamienne, a nie ceramiczne. Płaskorzeźbione dekoracje odwoływały się do wierzeń w życie pozagrobowe.', 
    ex_id: '3',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/5.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/4.png")
Cord.create(
    exhibit_id: e3.id,
    cord: "pos-eksp-3")


e4 = Exhibit.create(
    title: 'Głowa Meduzy (tzw. Meduza Rondanini)', 
    author:  'autor nieznany', 
    date_of_origin: 'koniec V w. p.n.e.', 
    description: 'W greckiej mitologii Meduza była jedną z trzech sióstr o potwornym wyglądzie. Z jej głowy wyrastały węże, a jej spojrzenie zamieniało ludzi w kamienie. Meduzę pokonał bohater Perseusz dzięki pomocy kilkorga bogów olimpijskich. Otrzymał od nich m.in. hełm czyniący go niewidzialnym i polerowaną tarczę; patrząc w nią widział potwora, unikając jednocześnie zabójczego spojrzenia. Odciętą głowę pokonanej Meduzy Perseusz podarował Atenie, której najwięcej zawdzięczał, ta zaś umieściła ją na swojej tarczy (egidzie). Tak też – z głową Meduzy na tarczy – zwykle przedstawiano Atenę. Rzeźba, pochodząca z okresu klasycznego, utrzymana była jednak w surowym duchu epoki archaicznej. Świadome nawiązanie do dawnej sztuki mogło być związane z pochodzeniem: głowa Meduzy mogła być bowiem wzorowana na dekoracji tarczy posągu Ateny dłuta Fidiasza, ustawionego w Partenonie na akropolu ateńskim. 
    Oryginał nie jest znany, zachowała się natomiast antyczna kopia z marmuru, będąca własnością włoskiej rodziny arystokratycznej, od której nazwiska wzięła się zwyczajowa nazwa dzieła. W szczecińskiej rekonstrukcji zwracają uwagę długie rzęsy Meduzy, a także wykonane z barwnej emalii oczy.  W czasach powstania kolekcji uważano ją za dzieło z kręgu Kresilasa, dziś łączy się ją też z Polikletem. Dzieła i sylwetki obu rzeźbiarzy przedstawiamy w dalszej części wystawy.',  
    ex_id: '4',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/4.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/3.png")
Cord.create(
    exhibit_id: e4.id,
    cord: "pos-eksp-4")

e5 = Exhibit.create(
    title: 'tzw. Narcyz (młodzieniec wsparty na kolumnie)', 
    author:  'naśladowca Polikleta', 
    date_of_origin: 'ok. 400 r. w. p.n.e.', 
    description: 'Rzeźba, przez długi czas łączona z Polikletem, jest zapewne dziełem jego naśladowcy, młodszego o jedno pokolenie. Wedle tradycji przedstawia Narcyza – chłopca tak pięknego, że zakochał się we własnym odbiciu, które ujrzał w wodzie.',  
    ex_id: '5',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/7.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/6.png")
Cord.create(
    exhibit_id: e5.id,
    cord: "pos-eksp-5")


e6 = Exhibit.create(
    title: 'Perykles', 
    author:  'Kresilas z Aten',
    date_of_origin: 'ok. 440-430 r. p.n.e.', 
    description: 'Perykles (500-429 p.n.e.), najsłynniejszy polityk ateński, kierował miastem w okresie jego największej świetności. Portret jest fragmentem posągu, ustawionego na Akropolu i przedstawiającego Peryklesa jako wojownika opartego na włóczni, w geście naśladującym Atenę. Celem artysty było nie tyle odtworzenie rzeczywistego wyglądu męża stanu, ile stworzenie jego idealnego wizerunku, który cechować miała równowaga piękna i mądrości. W związku z tym twarz postaci, choć zapewne oddaje zasadnicze rysy Peryklesa, została upiększona, a odsunięty do tyłu hełm ma zakrywać wydłużoną głowę.', 
    ex_id: '6',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/15.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/14.png")
Cord.create(
    exhibit_id: e6.id,
    cord: "pos-eksp-6")


e7 = Exhibit.create(
    title: 'Atena i Marsjasz',
    author:  'Myron z Eleuterai',
    date_of_origin: 'ok. 457–447 r. p.n.e.',
    description: 'Rzeźba Myrona odnosi się do jednego z kluczowych momentów mitu o satyrze Marsjaszu. Atena wymyśliła nowy instrument – aulos (rodzaj fletu) – jednak zauważyła, że w czasie gry trzeba wydymać policzki, co zniekształca jej twarz. Bogini porzuciła więc instrument, który podniósł Marsjasz, z czasem stając się mistrzem gry na aulosie. Myron przedstawił chwilę, w której Marsjasz spostrzegł porzucony flet i chce go podnieść, powstrzymywany strachem przed boginią. Myron skontrastował postaci, starając się oddać ich charakter. Z jednej strony powściągliwa, surowa postać Ateny, ubranej w długą, skromną szatę, z drugiej – nagi Marsjasz o tanecznych ruchach. Jego sylwetka inspirowana była zapewne tradycją spektakli i pochodów organizowanych ku czci Dionizjosa, boga winnej latorośli i płodnych sił przyrody.
    Oryginał dzieła nie zachował się, znany był jednak z opisów. Na ich podstawie w XIX w. rozpoznano w kilku marmurowych posągach z czasów rzymskich kopie poszczególnych figur wchodzących w skład dzieła Myrona. Na ich podstawie A. Furtwängler dokonał rekonstrukcji całej grupy. W późniejszych latach jego koncepcję krytykowano, wskazując m.in. na to, że dynamiczna postać Marsjasza pochodzi zapewne z późniejszych czasów. Niezależnie od historycznej poprawności szczecińska rzeźba świadczy o tym, jak żywa była tradycja antyczna w Europie przełomu XIX i XX w., i jak głębokie było pragnienie wyjaśnienia związanych z nią zagadek.',
    ex_id: '7',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/6.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/5.png")
Cord.create(
    exhibit_id: e7.id,
    cord: "pos-eksp-7")


e8 = Exhibit.create(
  title: 'Dyskobol', 
  author:  'Myron z Eleuterai', 
  date_of_origin: 'ok. 460–450 r. p.n.e.', 
  description: 'Myron, jeden z najsłynniejszych rzeźbiarzy okresu klasycznego, tworzył ok. 480–445 r. p.n.e., głównie w Atenach. Sławę przyniosły mu rzeźby ustawione na ateńskim Akropolu, wśród nich przedstawienie prowadzonej na ofiarę krowy, tak podobno realistyczne, że miały się na nie rzucać lwy. 
  „Dyskobol” ceniony był ze względu na efektowność ujęcia tematu. Postać została przedstawiona w krótkiej chwili spoczynku, skupienia sił przed wykonaniem gwałtownego ruchu. Mimo swego nowatorstwa rzeźba Myrona zachowała wiele cech sztuki okresu archaicznego. Jest ona „oderwanym od tła reliefem”, przeznaczonym do oglądania wyłącznie z jednej, frontalnej perspektywy. 
  Oryginał rzeźby nie zachował się, a jej kształt znany jest dzięki kilku uszkodzonym kopiom i opisom. Szczeciński „Dyskobol” jest rekonstrukcją domniemanego pierwotnego wyglądu dzieła Myrona, wykonaną według  koncepcji  A. Furtwänglera  (uzupełniono m.in. głowę i rękę z dyskiem).',  
  ex_id: '8', 
  type: sportowcy,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/9.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/8.png")
Cord.create(
    exhibit_id: e8.id,
    cord: "pos-eksp-8")


e9 = Exhibit.create(
    title: 'przedstawienie Bogini tzw. Aspazja', 
    author:  'Kalamis',
    date_of_origin: 'ok. 465 p.n.e.', 
    description: 'Tradycyjna nazwa rzeźby odnosi się do słynnej Aspazji z Miletu, żony ateńskiego stratega Peryklesa (jego podobiznę prezentujemy pośród portretów) W rzeczywistości było to przedstawienie bogini, być może Afrodyty ustawione w Propylejach - monumentalnej bramie ateńskiego Akropolu. Doskonale wymodelowane dzieło Kalamisa uznaje się za syntezę osiągnięć dwóch szkół rzeźbiarskich okresu klasycznego: surowej, doryckiej tektoniki i attyckiego wdzięku.', 
    ex_id: '9',
    type: mitologia,
        big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/10.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/9.png")
Cord.create(
    exhibit_id: e9.id,
    cord: "pos-eksp-9")


e10 = Exhibit.create(
    title: 'Dionizos', 
    author:  'Alkamenes',
    date_of_origin: 'ok. 430 r. p.n.e.', 
    description: 'Popiersie Dionizosa — boga winnej latorośli i płodnych sił przyrody — jest kopią fragmentu jego posągu, wykonanego przez rzeźbiarza Alkamenesa i ustawionego w sanktuarium tego bóstwa przy teatrze na stokach Akropolu w Atenach. W przeciwieństwie do Fidiasza i Polikleta, Alkamenes nie przedstawiał bogów jako młodzieńców, lecz jako dorosłych mężczyzn, zgodnie z dawną tradycją. Jego Dionizos wyobrażony został jako brodaty mędrzec, siedzący na tronie. ',  
    ex_id: '10',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/16.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/15.png")
Cord.create(
    exhibit_id: e10.id,
    cord: "pos-eksp-10")



e11 = Exhibit.create(
    title: 'Doryforos- Herma portretowa', 
    author:  'Poliklet z Argot',
    date_of_origin: 'ok. 450 440 p.n.e.', 
    description: 'Popiersie (herma) jest fragmentem posągu słynnego Doryforosa, eksponowanego na naszej wystawie. Dzieło Polikleta było w starożytności wielokrotnie kopiowane. Herma, która posłużyła za wzór dla szczecińskiej rzeźby, wykonana w drugiej połowie I w, p n,e, przez greckiego twórcę Apoloniosa, znaleziona została w willi rodziny Pizonów w Herkulanum, antycznym mieście zasypanym wraz z Pompejami przez popioły Wezuwiusza.', 
    ex_id: '11',
    type: nil,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/8.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/7.png")
Cord.create(
    exhibit_id: e11.id,
    cord: "pos-eksp-11")


e12 = Exhibit.create(
    title: 'Doryforos (Niosący włócznię)', 
    author:  'Poliklet z Argos', 
    date_of_origin: 'ok. 450–440 p.n.e.', 
    description: 'Rzeźba przedstawia oszczepnika, zapewne zwycięzcę w zawodach sportowych. Jest to najsłynniejsze dzieło Polikleta, znane przede wszystkim jako ilustracja opracowanego przez niego kanonu, czyli sposobu przedstawiania postaci ludzkiej. Kanon Polikleta miał charakter geometryczny i opierał się na ustaleniu właściwych, zdaniem twórcy, proporcji części ciała względem siebie nawzajem i względem całej figury. Tors miał się zamykać w obrysie kwadratu, głowa – kuli, stopa miała stanowić 1/6 wysokości całego ciała, twarz – 1/10 itd. Punktem wyjścia dla Polikleta były zapewne popularne w ówczesnej Grecji pitagorejskie teorie, dopatrujące się idei piękna w zestawieniach liczb. Kanon nie powstał jednak tylko z suchych obliczeń, ale też z wnikliwej obserwacji rzeczywistości i dążenia do osiągnięcia absolutnej harmonii ciała, dlatego Poliklet starał się nadać rzeźbie pozór łagodnego ruchu, ustawiając ją w swobodnej pozie, zwanej kontrapostem. Teoria Polikleta wzbudzała w jego czasach gorące dyskusje. Wedle antycznej anegdoty, aby je uciąć, mistrz wykonał dwa posągi z tego samego modela, jeden z nich w myśl własnych założeń, drugi w duchu tego, co twierdzili krytycy. Gdy obie rzeźby wystawiono na widok publiczny, drugi z posągów został wyśmiany przez widzów, którzy w ten sposób przyznali rację Polikletowi.
    Oryginał dzieła nie przetrwał upadku świata antycznego, zachowało się natomiast kilka dość wiernych kopii. W epoce nowożytnej rzeźb tych nie identyfikowano jednak ze słynnym Doryforosem – choć uczeni starali się odtworzyć jego dzieła na podstawie opisów. Dopiero w 1862 r. K. Friedrichs utożsamił ze słynną rzeźbą Polikleta kilka zachowanych w zbiorach europejskich marmurowych kopii. Na przełomie XIX i XX w. A. Furtwängler odtworzył pierwotny wygląd Doryforosa, opierając się na wnikliwej analizie tych kopii (różniących się od siebie w szczegółach). Już po śmierci badacza, realizując zamówienie dla szczecińskiego muzeum, zrekonstruowano arcydzieło Polikleta. Zadania tego podjął się – pod kierunkiem ucznia Furtwänglera, P. Woltersa – berliński rzeźbiarz G. Römer. Posłużył się on przy tym tradycyjną techniką odlewniczą, stosowaną przez rzeźbiarzy antycznych. Na użycie tej metody, znacznie kosztowniejszej od kopii galwanicznych, nalegał nowy dyrektor szczecińskiego muzeum, Walter Riezler, który chciał, by nowa rzeźba była jak najbardziej wierną antycznym oryginałom. Jego nalegania sprawiły, że starano się również odtworzyć pierwotną kolorystykę. Posąg pokryto ciemną patyną, włosy pozłocono, wargi podkreślono karminem, a oczy wykonano ze szkła i emalii. Rzeźbę uzupełniono też o włócznię (zaginioną po II wojnie światowej), choć nie zachowała się ona w żadnej z antycznych kopii.', 
    ex_id: '12',
    type: sportowcy,    
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/11.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/10.png")
Cord.create(
    exhibit_id: e12.id,
    cord: "pos-eksp-12")

e13 = Exhibit.create(
    title: 'Młodzieniec, tzw. KYNISKOS', 
    author:  'naśladowca Polikleta', 
    date_of_origin: 'koniec V w. p.n.e.', 
    description: 'W czasach powstawania szczecińskiej kolekcji posąg ten – znany z marmurowej kopii z ok. 150 r. p.n.e. – uchodził za dzieło samego Polikleta. Utożsamiano go ze statuą Kyniskosa, zwycięzcy w olimpijskich zawodach bokserskich z 464–460 r. p.n.e. Przy tworzeniu szczecińskiej rzeźby, kierując się tą hipotezą, dokonano swobodnej rekonstrukcji prawej ręki. Obecnie uważa się, że rzeźba ta nie jest dziełem samego mistrza, lecz jednego z jego uczniów (nie przedstawia zatem Kyniskosa) i stanowi świadectwo wielkiego wpływu, jaki Poliklet wywarł na rzeźbę grecką. 
    Zwyczajowa nazwa pochodzi od miejsca nazwiska rodziny, w której posiadaniu posąg znajdował się przez wiele lat. Posąg znany jest z marmurowej kopii z ok. 150 r. p.n.e.',  
    ex_id: '13',
    type: nil,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/13.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/12.png")
Cord.create(
    exhibit_id: e13.id,
    cord: "pos-eksp-13")


e14 = Exhibit.create(
    title: 'Ranna Amazonka (tzw. Amazonka Sosiklesa)',
    author:  'Poliklet lub Fidiasz',
    date_of_origin: 'ok. 440 p.n.e.',
    description: 'Rzeźba ta jest pokłosiem jednego z najsłynniejszych konkursów artystycznych antyku. W okresie klasycznym ogłaszanie takich konkursów było częstą praktyką, zaś przedstawione przez artystów prace porównywano przede wszystkim pod względem sposobu ujęcia tematu. Ranna Amazonka powstała dla wielkiej świątyni Artemidy (bogini lasów i łowów) w Efezie. W okresie wojen miedzy miastami greckimi rzeźba ta miała przypominać o prawie azylu w świątyni. Amazonka, należąca do mitycznego plemienia wojowniczych kobiet, będąca dla Greków symbolem waleczności, pokazana została w chwili, gdy jest całkowicie bezbronna. Zraniona, zdejmuje delikatnie szatę z ramienia. Pierwsze miejsce w konkursie zajął Poliklet, drugie Fidiasz, a trzecie Kresilas (sylwetki tych twórców przedstawiamy w dalszej części wystawy). 
    Żadna z trzech słynnych rzeźb nie zachowała się do naszych czasów, jednak ich sława sprawiła, że badacze wielokrotnie usiłowali przyporządkować znane z rzymskich kopii rzeźby autorom. W czasach tworzenia szczecińskiej kolekcji za dzieło Polikleta uważana była tzw. Amazonka Sosiklesa (od imienia kopisty, wyrytego na antycznym posągu), toteż ją właśnie skopiowano w brązie. Stało się tak wbrew zdaniu doradzającego Dohrnom A. Furtwänglera, który za dzieło Polikleta uznawał inną rzeźbę, tzw. Amazonkę Mattei. Część współczesnych badaczy podziela jego tezy, Amazonkę Sosiklesa przypisując Fidiaszowi, jednak spór dotyczący wyników konkursu nie został dotąd ostatecznie rozstrzygnięty.',
    ex_id: '14',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/14.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/13.png")
Cord.create(
    exhibit_id: e14.id,
    cord: "pos-eksp-14")


e15 = Exhibit.create(
    title: 'Herakles Epitrapezios ', 
    author:  'Lizyp z Sykionu',
    date_of_origin: '332 r. p.n.e.', 
    description: 'Rzeźba powstała zapewne w związku ze zdobyciem przez Aleksandra Macedońskiego Tyru, fenickiego miasta w dzisiejszym Libanie. Przedstawia ona mitycznego herosa greckiego, Heraklesa, zarazem jednak mogła być przez Fenicjan rozumiana jako wizerunek ich boga mórz, Melkarta, legendarnego założyciela Tyru. O twórcy tego dzieła, Lizypie, mówimy obszerniej przy figurze Apoksjomenosa.',  
    ex_id: '15',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/17.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/16.png")
Cord.create(
    exhibit_id: e15.id,
    cord: "pos-eksp-15")

e16 = Exhibit.create(
    title: 'Apollo Kitarodos (grający na kitarze – antycznym instrumencie)',
    author:  'Poliklet z Argos',
    date_of_origin: 'ok. 460 r. p.n.e.',
    description: 'Poliklet (ok. 480–415 p.n.e.) uchodzi za największego rzeźbiarza klasycznej Grecji. Działał w Atenach, w czasach Peryklesa, w okresie największej świetności tego miasta. W swojej twórczości skupił się na poszukiwaniach doskonałego sposobu przedstawiania postaci ludzkiej, tworząc najsłynniejszy antyczny kanon (obszerniej mówimy o nim przy rzeźbie Doryforosa). Już w starożytności zwracano uwagę na to, że bogowie, herosi i śmiertelnicy przedstawiani przez Polikleta nie różnią się od siebie – wszyscy są równie doskonali i piękni. Apollo – wielki bóg światła i wyroczni, opiekun sztuk – przedstawiony został w spokojnej, ale dość swobodnej pozie. Ze wszystkich znanych dzieł Polikleta właśnie Apollo Kitarodos najsilniej nawiązuje do dawnej tradycji sztuki greckiej, zarazem jednak zrywając z jej przyzwyczajeniami, czego wyrazem jest m.in. ukazanie go nago – podczas gdy wcześniej przedstawiany był zwykle w spływającej do ziemi szacie.
    Poliklet wywarł wielki wpływ na współczesnych mu twórców, a także na artystów następnych pokoleń. Jeszcze za życia mistrza z Argos jego dzieła były wielokrotnie naśladowane i kopiowane. Dwie następne rzeźby prezentowane na wystawie – Kyniskos i Narcyz – są przykładem fascynacji jego sztuką.
    Żadna z rzeźb Polikleta nie zachowała się w oryginale, znanych jest natomiast wiele antycznych kopii, w większości marmurowych. Znaleziony w Pompejach posąg, który posłużył za wzór dla szczecińskiej kopii, jest wśród nich wyjątkiem, wykonano go bowiem z brązu.',
    ex_id: '16',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/18.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/17.png")
Cord.create(
    exhibit_id: e16.id,
    cord: "pos-eksp-16")


e17 = Exhibit.create(
    title: 'Sokrates', 
    author:  'Silanion (?)',
    date_of_origin: 'połowa IV w. p.n.e.', 
    description: 'Portret jest fragmentem posągu, wykonanego najprawdopodobniej przez Silaniona (ok. 390-330 p.n.e.), rzeźbiarza działającego w Efezie i w Atenach. Silanion, zwolennik realizmu w portretach, tworzył niemal wyłącznie wizerunki ludzi, nie interesując się niemal wcale przedstawianiem bogów. W wizerunku Sokratesa rzeźbiarz odtworzył znane z opisów, pospolite cechy fizjonomii słynnego filozofa, podkreślając zarazem poprzez skupiony wyraz twarzy jego inteligencję i przenikliwość.', 
    ex_id: '17',
    type: postacie_historyczne,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/19.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/18.png")
Cord.create(
    exhibit_id: e17.id,
    cord: "pos-eksp-17")


e18 = Exhibit.create(
    title: 'Eurypides', 
    author:  'Lizyp z Sykionu',
    date_of_origin: 'ok. 330 r. p.n.e', 
    description: 'Rzeźba, która posłużyła za wzór dla szczecińskiej kopii jest jedynym znanym wizerunkiem greckiego dramaturga Eurypidesa (ok. 485-406 p.n.e.), autora znanych tragedii, jak „Elektra", „Medea" czy „Ifigenia w Taurydzie". Lizyp (o sylwetce rzeźbiarza mówimy przy jego Apoksjomenosie) przebywał w długo na dworze Aleksandra Macedońskiego, gdzie na starość schronił się Eurypides. Wprawdzie Lizyp znalazł się w Macedonii wiele lat po śmierci Eurypidesa, jednak mógł się tam spotkać z wizerunkami mistrza. Portret przedstawia starca o pięknych, regularnych rysach, z których emanuje dostojeństwo. Rzeźbiarza najwyraźniej fascynowało poszukiwanie w twarzy Eurypidesa odblasku geniuszu sławnego dramaturga. ',  
    ex_id: '18',
    type: postacie_historyczne,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/20.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/19.png")
Cord.create(
    exhibit_id: e18.id,
    cord: "pos-eksp-18")

e19 = Exhibit.create(
    title: 'Atena Lemina', 
    author:  'Fidiasz', 
    date_of_origin: 'ok. 450 p.n.e.', 
    description: 'Posąg, ustawiony na Akropolu w Atenach między 451 a 447 r. p.n.e., był darem  ateńskich osadników z wyspy Lemnos (stąd zwyczajowa nazwa). W starożytności uważano Atenę Lemnia za jedno z najpiękniejszych dzieł sztuki, dlatego też stała się tematem poetów i pisarzy. Jego twórca, Fidiasz (ok. 490–420 p.n.e.), w czasach Peryklesa realizujący wszystkie najważniejsze zamówienia publiczne Aten, uchodził za największego rzeźbiarza klasycznej Grecji. Słynny był zwłaszcza jako twórca licznych wizerunków bogów, w tym kolosalnego posągu Ateny Parthenos (Dziewiczej) na ateńskim Akropolu. Wygnany pod zarzutem świętokradztwa przeniósł się w 432 r. p.n.e. do Olimpii, gdzie wykonał m.in. kolosalny posąg Zeusa. 
    W posągu Ateny Lemnia Fidiasz połączył zdyscyplinowaną kompozycję całości z miękkim modelunkiem, nadając dziełu wyraz niezwykłej harmonii. Szczupła, regularna, twarz z prostym nosem i liniami powiek powtarzającymi łuki brwi, jest kwintesencją greckiego ideału urody, a pełna spokoju postawa oddaje majestat bogini, ucieleśniającej ideę zbrojnego pokoju. 
    Jedyne zachowane do dziś oryginalne dzieło Fidiasza to zdobiący ateński Partenon fryz panatenajski (przedstawiający procesję odbywaną w trakcie święta Ateny). Słynne posągi mistrza przetrwały natomiast w postaci kopii. Rzeźba wykonana dla zbiorów szczecińskich została zrekonstruowana przez A. Furtwänglera na podstawie kilku z nich i uzupełniona o niezbędne jego zdaniem elementy (m.in. włócznię i hełm).', 
    ex_id: '19',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/21.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/20.png")
Cord.create(
    exhibit_id: e19.id,
    cord: "pos-eksp-19")


e20 = Exhibit.create(
    title: 'Homer', 
    author:  '',
    date_of_origin: 'I lub I w. p.n.e.', 
    description: 'Niewidomy poeta Homer, postać na poły legendarna, jest jednak bodaj najważniejszą w antycznej kultury greckiej. Dwa przypisywane mu utwory: „Wada" i „Odysseja", powstałe ostatecznie w pierwszej połowie VIII w. p.n.e., stanowią fundament tej kultury i przez stulecia kształtowały jej obraz w oczach Europejczyków. Prezentowana przez nas rzeźba jest najsłynniejszym przedstawieniem Homera, wielokrotnie kopiowanym. Portret nie pokazuje prawdziwych rysów twórcy, lecz wyobrażenie, jakie mieli o nim Grecy. Homer przedstawiony został jako niewidomy starzec, zarazem jednak rzeźbiarz starał się oddać „wewnętrzny wzrok" geniusza.', 
    ex_id: '20',
    type: postacie_historyczne,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/23.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/22.png")
Cord.create(
    exhibit_id: e20.id,
    cord: "pos-eksp-20")


e21 = Exhibit.create(
    title: 'Aleksander Wielki', 
    author:  'Leochares (?)',
    date_of_origin: 'ok. 330-320 p.n.e. ', 
    description: 'Portret jest fragmentem posągu, przedstawiającego boga słońca Heliosa, ustawionego w Olimpii. Tradycyjnie uważa się tą rzeźbę za wizerunek Aleksandra Wielkiego (356-323 p.n.e.) króla Macedonii, jednego z najsłynniejszych wodzów starożytności, który rozciągnął władzę i kulturę Greków na obszar Bliskiego Wschodu i Egiptu. Aleksander bywał porównywany do Heliosa, stąd zapewne przypuszczenie, że jego to sportretowano jako bóstwo słońca. Zwyczajowa nazwa rzeźby wzięła się od nazwiska włoskiego rodu, do którego należała ona przez długi czas.', 
    ex_id: '21',
    type: postacie_historyczne,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/24.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/23.png")
Cord.create(
    exhibit_id: e21.id,
    cord: "pos-eksp-21")


e22 = Exhibit.create(
    title: 'Afrodyta Knidyjska', 
    author:  'Praksyteles z Aten', 
    date_of_origin: '364–361 p.n.e.', 
    description: 'Praksyteles (tworzący ok. 370–340 p.n.e.) uznawany jest za jednego z dwóch największych rzeźbiarzy greckich IV w. p.n.e. Początkowo wzorował się na Fidiaszu, z czasem wypracował własny styl i kanon. W stosunku do rzeźb mistrzów V w. jego dzieła są lżejsze i smuklejsze, a ich sylwetki bardziej dynamiczne. W starożytności uznawano go za mistrza wdzięku, pokazującego bogów jako piękne, młodzieńcze, pozbawione trosk istoty.
    Wykonany z marmuru posąg Afrodyty przeznaczony dla świątyni tej bogini na wyspie Knidos był jedną z jego najsłynniejszych rzeźb. W przeciwieństwie do  tradycyjnych ujęć Praksyteles ukazał boginię nagą – w chwili, gdy wchodzi ona do kąpieli. Kontrast między gładkim ciałem a pofałdowaną tkaniną podkreśla idealne piękno postaci. Posąg Afrodyty uznano za dzieło godne Fidiasza, a na Knidos podróżowano specjalnie w celu obejrzenia tego dzieła, zachwycając się szczególnie kształtem głowy i twarzą postaci. Również po wprowadzeniu chrześcijaństwa zachwycano się tym dziełem. Cesarz bizantyjski Teodozjusz wywiózł posąg do Konstantynopola, umieszczając w pałacu cesarskim. W 475 r. n.e. rzeźba spłonęła w wielkim pożarze pałacu.
    Do wizerunku Afrodyty pozować miała Fryne, słynna kurtyzana ateńska. Oskarżona w 354 r. p.n.e. przez odrzuconego kochanka o obrazę, stanęła przed radą starszych (Areopagiem). Sędziowie nakazali jej pokazać się nago, by ocenić, czy rzeczywiście jej piękno ma cechy boskie. Gdy Fryne  zrzuciła szaty uznali, że w  tak pięknym ciele nie może  kryć się  zły duch i uwolnili ją od zarzutów. Odtąd Fryne uchodziła za najpiękniejszą kobietę od czasów Heleny Trojańskiej.
    Szczecińską rzeźbę oparto na kilku kopiach, starając się wyodrębnić cechy sztuki Praksytelesa i nadać całości znany z opisów charakter. Wprawdzie niektóre z rozstrzygnięć Furtwänglera budzą dziś zastrzeżenia, jednak całość jest jedną z najbardziej sugestywnych rekonstrukcji dzieła Praksytelesa.',
    ex_id: '22',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/22.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/21.png")
Cord.create(
    exhibit_id: e22.id,
    cord: "pos-eksp-22")


e23 = Exhibit.create(
    title: 'Chłopiec wyciągający cierń ze stopy tzw. Spinario', 
    author:  'Pazyteles',
    date_of_origin: '80-50 p.n.e.', 
    description: 'Posąg powstał trzysta lat po czasach Polikleta, utrzymany był jednak w duchu jego rzeźb, toteż gdy tworzono szczecińską kolekcję przypisywany był powszechnie temu mistrzowi. Twórcą dzieła był zapewne osiadły w Rzymie Grek Pazyteles, jeden z najsłynniejszych rzeźbiarzy I w. p.n.e., ceniony m.in, przez Cycerona. Wykonana z brązu rzeźba znaleziona został w Rzymie na początku renesansu i cieszyła się wielką popularnością jako rzadki przykład oryginału greckiego brązu. ', 
    ex_id: '23',
    type: nil,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/25.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/24.png")
Cord.create(
    exhibit_id: e23.id,
    cord: "pos-eksp-23")


e24 = Exhibit.create(
    title: 'Młodzieniec tzw. Antinous', 
    author:  '',
    date_of_origin: 'ok 50 p.n.e.', 
    description: 'Rzeźba, znaleziona w ruinach zasypanego przez popioły Wezuwiusza miasteczka Herkulanum, uważana była za portret Antinousa —młodzieńca uchodzącego w cesarskim Rzymie za ideał męskiego piękna, ulubieńca cesarza Hadriana (76-138 n.e.) Dzieło to powstało jednak o dwa stulecia wcześniej, nie może więc przedstawiać Antinousa. Odwołująca się do dzieł Polikleta rzeźba była zapewne wizerunkiem młodzieńczego bóstwa lub herosa. Jej autorem był prawdopodobnie grecki rzeźbiarz, działający - podobnie jak wielu jego rodaków — w rzymskiej Italii. ',  
    ex_id: '24',
    type: nil,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/26.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/25.png")
Cord.create(
    exhibit_id: e24.id,
    cord: "pos-eksp-24")



e25 = Exhibit.create(
    title: 'Herkulanka', 
    author:  '',
    date_of_origin: 'I w. p.n.e.', 
    description: 'Rzeźba z brązu, znaleziona w ruinach zasypanego przez popioły Wezuwiusza miasteczka Herkulanum, została wykonana zapewne jako kopia podówczas słynnego, a dziś nieznanego posągu.',  
    ex_id: '25',
    type: nil,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/27.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/26.png")
Cord.create(
    exhibit_id: e25.id,
    cord: "pos-eksp-25")

e26 = Exhibit.create(
    title: 'Artemida Brauronia tzw. Gabii', 
    author:  'Praksyteles',
    date_of_origin: 'ok. 350 r. p.n.e.', 
    description: 'Posąg Artemidy — bogini lasów, łowów i źródeł — ustawiony był przy świątyni Ateny Brauronia na Akropolu w Atenach. Artemida była też patronką porodów dlatego szczególną czcią otaczały ją kobiety, składające bogini w ofierze szaty i drobne ozdoby. Kopię rzeźby Praksytelesa odnaleziono w 1792 r. w Gabii we Włoszech. stąd jej zwyczajowa nazwa.', 
    ex_id: '26',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/28.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/27.png")
Cord.create(
    exhibit_id: e26.id,
    cord: "pos-eksp-26")

e27 = Exhibit.create(
    title: 'Wiążący sandał tzw. Jazon', 
    author:  'Lizyp lub jego naśladowca',
    date_of_origin: 'ok. 320 r. p.n.e.', 
    description: 'W myśl nowożytnej tradycji rzeźba przedstawiać miała Jazona — mitycznego bohatera, przywódcę wyprawy po złote runo. Głowę postaci zrekonstruowano w czasach nowożytnych.',  
    ex_id: '27',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/29.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/28.png")
Cord.create(
    exhibit_id: e27.id,
    cord: "pos-eksp-27")

e28 = Exhibit.create(
    title: 'APOLLO, tzw. Belwederski', 
    author:  'Leochares', 
    date_of_origin: 'ok. 330 r. p.n.e.', 
    description: 'Twórca tego dzieła, pochodzący zapewne z Aten Leochares był w IV w. p.n.e., obok Praksytelesa, jednym z najsłynniejszych rzeźbiarzy greckich. Jego rzeźby zdobiły m.in. grobowiec władcy Halikarnasu w Azji Mniejszej, Mauzolosa, uznawany za jeden z siedmiu cudów świata. Posąg Apolla ustawiony był pierwotnie zapewne przy świątyni tego bóstwa na agorze (głównym placu) w Atenach. Leochares pokazał go w chwili, gdy właśnie zstąpił na ziemię i rusza do biegu. Apollo nie jest tu spokojnym i łagodnym opiekunem sztuki, lecz stanowczym i groźnym bóstwem, jakim często postrzegali go Grecy. Jeden z najbardziej znanych mitów o Apollu opowiada o zawodach muzycznych, do których wyzwał go satyr Marsjasz (pokazany na naszej wystawie z Ateną). Pokonawszy Marsjasza, Apollo kazał go obedrzeć ze skóry, chcąc w ten sposób ukarać go za zuchwałą chęć mierzenia się z bóstwem. 
    Apollo Belwederski jest jedną z najbardziej znanych na świecie rzeźb antycznych. Znaleziony w XV w. we Włoszech, był podziwiany jako przykład doskonałości sztuki rzymskiej. Szczególnie cenił go Michał Anioł, który uzupełnił część nilujących elementów posągu (m.in. dłoń z łukiem).  W   początkach  XVI  w.  papież  Juliusz  II  (mecenas   Rafaela i Michała Anioła) ustawił rzeźbę w letnim pałacyku Belvedere na Watykanie; stąd wzięła się jej zwyczajowa nazwa.',  
    ex_id: '28',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/30.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/29.png")
Cord.create(
    exhibit_id: e28.id,
    cord: "pos-eksp-28")


e29 = Exhibit.create(
    title: 'Apoksjomenos', 
    author:  'Lizyp z Sykionu', 
    date_of_origin: 'ok. 330–320 p.n.e.', 
    description: 'Lizyp, tworzący w latach 350–330 p.n.e., był ostatnim z wielkich artystów greckich okresu klasycznego. Blisko związany z Aleksandrem Macedońskim, towarzyszył mu w jego wyprawach. W przeciwieństwie do klasyków (Fidiasza, Polikleta, Myrona) jego założeniem nie było dochodzenie do abstrakcyjnego ideału piękna przez doskonalenie  formy  (m.in.   przez   matematyczne  obliczenia),   ale  obserwowanie i naśladowanie natury. Stworzył  własny kanon przedstawiania postaci, bardziej krępej i muskularnej w stosunku do kanonu Polikleta, na którym początkowo się wzorował.
    Apoksjomenos to przedstawienie atlety oddającego się toalecie po zawodach – temat często podejmowany przez artystów tego czasu. Po kąpieli nacierano się oliwą, zaś jej nadmiar usuwano ze skóry skrobaczką z brązu (strigillum). Swobodna poza i wyciągnięcie ręki są zerwaniem z tradycyjnym dążeniem do maksymalnej harmonii i spokoju. Lizyp wprowadza do swojego dzieła ruch, co przydaje kompozycji śmiałości i wzbogaca obraz muskulatury.
    Apoksjomenos cieszył się w starożytności wielką sławą. Cesarz rzymski August przeniósł posąg do Rzymu, do publicznych term (łaźni). Jego następca Tyberiusz, zachwycony pięknem rzeźby, chciał ją przenieść do prywatnych apartamentów, ale musiał zrezygnować z tego zamiaru ze względu na wzburzenie ludu. 
    Oryginał rzeźby zaginął w czasach upadku Rzymu, zachowało się jednak wiele dobrych kopii. Najwierniejszą oryginałowi jest znaleziona w 1849 r. statua ze zbiorów Watykanu, która posłużyła za wzór dla szczecińskiej rzeźby.',  
    ex_id: '29',
    type: sportowcy,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/31.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/30.png")
Cord.create(
    exhibit_id: e29.id,
    cord: "pos-eksp-29")


e30 = Exhibit.create(
    title: 'Demostenes', 
    author:  'Polieuktos', 
    date_of_origin: 'ok. 280–279 r. p.n.e.', 
    description: 'Ustawiony na agorze w Atenach posąg przedstawiał najsłynniejszego mówcę antycznej Grecji. Na cokole wyryto napis „Jeślibyś Demostenesie posiadał tyle mocy co woli, nigdy miecz Macedonii nie zwyciężyłby Greków”. Było to nawiązanie do działalności Demostenesa, który przez całe życie przeciwstawiał się królom Macedonii, Filipowi i Aleksandrowi Wielkiemu, dążącym do opanowania Grecji.',  
    ex_id: '30',
    type: postacie_historyczne,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/32.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/31.png")
Cord.create(
    exhibit_id: e30.id,
    cord: "pos-eksp-30")


e31 = Exhibit.create(
    title: 'Diadoch', 
    author:  'autor nieznany', 
    date_of_origin: 'II w. p.n.e.', 
    description: 'Wspaniały posąg nagiego mężczyzny, znaleziony w Rzymie, stanowi jedną z nierozwiązanych zagadek sztuki epoki hellenistycznej. Do niedawna sądzono, że jest to jeden z Diadochów – władców wywodzących się od wodzów Aleksandra Macedońskiego, rządzących państwami które powstały z jego imperium.',  
    ex_id: '31',
    type: nil,
        big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/33.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/32.png")
Cord.create(
    exhibit_id: e31.id,
    cord: "pos-eksp-31")


e32 = Exhibit.create(
    title: 'Odpoczywający Hermes', 
    author:  'Lizyp lub jego naśladowca',
    date_of_origin: 'ok. 320 r. p.n.e.', 
    description: 'Niektórzy badacze przypisują tę rzeźbę Lizypowi z Sykionu, inni sądzą jednak, że jest to dzieło artysty naśladującego styl wielkiego mistrza. Hermes, posłaniec bogów, a zarazem patron kupców i złodziei, sprytny i wesoły bóg przemierzający lotem błyskawicy świat, pokazany został gdy pozwala sobie na chwilę odpoczynku.',  
    ex_id: '32',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/34.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/33.png")
Cord.create(
    exhibit_id: e32.id,
    cord: "pos-eksp-32")


e33 =Exhibit.create(
    title: 'Lucius Caecilius Jucundus', 
    author:  '',
    date_of_origin: 'I w. p.n.e.', 
    description: 'Znaleziona w Pompejach rzeźba, przedstawiająca tamtejszego bankiera, jest doskonałym przykładem portretu rzymskiego. W przeciwieństwie do prezentowanych wcześniej, twarz postaci została oddana niezwykle realistycznie, a rzeźbiarz w wyrazisty sposób pokazał wszystkie jej niedoskonałości — brodawki na policzku, skrzywiony nos czy odstające uszy.',  
    ex_id: '33',
    type: postacie_historyczne,
        big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/35.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/34.png")
Cord.create(
    exhibit_id: e33.id,
    cord: "pos-eksp-33")


e34 = Exhibit.create(
    title: 'Norbanus Soreks', 
    author:  '',
    date_of_origin: 'I w. p.n.e.', 
    description: 'P Drugi z prezentowanych na naszej wystawie portretów rzymskich, jest wizerunkiem aktora z Pompejów. Wystające kości policzkowe i potężne łuki brwiowe nadają rzeźbie cech realizmu.',  
    ex_id: '34',
    type: postacie_historyczne,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/36.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/35.png")
Cord.create(
    exhibit_id: e34.id,
    cord: "pos-eksp-34")


e35 = Exhibit.create(
    title: 'Chłopiec z Gęsią', 
    author:  'Boetos z Chalcedonu',
    date_of_origin: 'ok. 220-160 r. p.n.e.', 
    description: 'Boetos jako pierwszy spośród artystów greckich podjął temat dziecka. Chłopiec z gęsią, wykonany zapewne jako wotum dla świątyni Ateny w Lindos na wyspie Rodos, należy do najbardziej znanych jego prac, kopiowanych często już w starożytności. Układ ciała obrazuje wysiłek chłopca, przydając kompozycji dynamiki i realizmu.',  
    ex_id: '35',
    type: nil,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/37.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/36.png")
Cord.create(
    exhibit_id: e35.id,
    cord: "pos-eksp-35")

e36 = Exhibit.create(
    title: 'fragment malowidła ściennego z tzw. Gabinetów pompejańskich z pierwotnego wystroju muzeum', 
    author:  '',
    date_of_origin: 'I w. p.n.e.', 
    description: 'Pragnąć dać pełniejszy obraz sztuki antycznej, twórcy szczecińskiej kolekcji postanowili zaprezentować w muzeum także malarstwo grecko-rzymskie. Ze względu na zniszczenie większości dzieł ta dziedzina twórczości artystycznej antyku była i jest jednak najmniej znana. Wiadomości na temat sztuki malarskiej Greków i Rzymian dostarczają – obok źródeł literackich – nieliczne odsłonięte przez z archeologów malowidła ścienne i mozaiki. Największy ich zespół odnaleziono w Pompejach i ich okolicy. Ponieważ zdobycie oryginalnych malowideł było jeszcze bardziej nieosiągalne niż zakupienie rzeźb, twórcy szczecińskiej kolekcji i w tym przypadku postanowili posłużyć się kopią. W tym celu w ramach wystawy powstały tzw. Pokoje Pompejańskie, których ściany pokryto malowidłami wzorowanymi na antycznych oryginałach. Stanowiły one zarazem tło do eksponowania części kolekcji waz i drobnych rzeźb. W czasie późniejszych przebudów polichromie zostały w znacznej mierze zniszczone.',  
    ex_id: '36',
    type: nil,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/38.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/37.png")
Cord.create(
    exhibit_id: e36.id,
    cord: "pos-eksp-36")

e37 = Exhibit.create(
    title: 'Śpiący Satyr', 
    author:  '',
    date_of_origin: 'ok. 220 r. p.n.e.', 
    description: 'Rzeźba ta, przedstawiająca satyra (bożka leśnego) stanowiła zapewne dekorację ogrodu lub dziedzińca. Oryginał, z którego zrobiono szczecińską kopię znaleziono w willi rodziny Pizonów w Herkulanum, niewielkim miasteczku w południowych Włoszech, zasypanym popiołami Wezuwiusza razem ze słynniejszymi Pompejami. Jest on nieco przekształconą wersją słynnego Satyra Barberinich (nazwanego tak od miejsca przechowywania, jednego z rzymskich pałaców) — posągu znalezionego w XVII w. w Rzymie (obecnie w Monachium).', 
    ex_id: '37',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/39.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/38.png")
Cord.create(
    exhibit_id: e37.id,
    cord: "pos-eksp-37")

e38 = Exhibit.create(
    title: 'Orfeusz i Eurydyka prowadzeni przez Hermesa', 
    author:  'krąg Alkamenesa', 
    date_of_origin: '448–403 p.n.e.', 
    description: 'Znana z rzymskiej kopii płyta pierwotnie stanowiła zapewne fragment balustrady, otaczającej ołtarz 12 bogów na agorze (głównym placu) w Atenach. Relief przedstawia jedną z kluczowych scen z mitu o Orfeuszu – synu Apollina i muzy Kaliope, genialnym śpiewaku, który pieśniami zmuszał do posłuszeństwa dzikie zwierzęta. Po stracie żony, Eurydyki, Orfeusz zszedł do podziemi świata, w których przebywać miały cienie zmarłych i swoim śpiewem tak wzruszył władającego tam boga Hadesa, że ten pozwolił wrócić Eurydyce na ziemię. Po drodze nie wolno było Orfeuszowi nawet spojrzeć na ukochaną. Gdy stęskniony poeta zapomniał o zakazie i odwrócił się do Eurydyki, utracił ją na zawsze. Relief pokazuje tę kluczową scenę opowieści: Orfeusz (po prawej) zwraca się ku Eurydyce, którą za rękę trzyma Hermes (spełniający tu rolę przewodnika zmarłych). 
    Relief wiązany jest najczęściej z rzeźbiarzem Alkamenesem (na wystawie prezentujemy popiersie Dionizosa jego autorstwa), choć niektórzy badacze wskazują też na Fidiasza i jego uczniów. Twórca płaskorzeźby, inspirujący się malarstwem V w. p.n.e. (głównie twórczością Polignota z Tazos, działającego w latach 490–450 p.n.e.), stworzył to piękne, wzruszające dzieło, mówiące o nieodwołalności śmierci. Temat dzieła nawiązuje zapewne do dramatu Eurypidesa opartego na micie o Orfeuszu, wystawionego w Atenach w 438 r. p.n.e.', 
    ex_id: '38',
    type: mitologia,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/40.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/39.png")
Cord.create(
    exhibit_id: e38.id,
    cord: "pos-eksp-38")

e39 = Exhibit.create(
    title: 'Pijany Satyr', 
    author:  '',
    date_of_origin: 'III w. p.n.e.', 
    description: 'Pierwowzór tej rzeźby - podobnie jak w przypadku „śpiącego Satyra” - pochodzi z wykopalisk pompejańskich. Wykonany z brązu posąg zdobił zapewne wnętrze rzymskiej willi.',  
    ex_id: '39',
    type: sportowcy,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/41.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/40.png")
Cord.create(
    exhibit_id: e39.id,
    cord: "pos-eksp-39")


e40 = Exhibit.create(
    title: 'Zapaśnicy', 
    author:  '',
    date_of_origin: 'koniec IV w. p.n.e.', 
    description: 'Greccy Zapaśnicy',  
    ex_id: '40',
    type: sportowcy,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/42.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/41.png")
Cord.create(
    exhibit_id: e40.id,
    cord: "pos-eksp-40")

e41 = Exhibit.create(
    title: 'Amfora Rzymska z II wieku ', 
    author:  '',
    date_of_origin: 'II w.', 
    description: 'Znaleziona w morzu Adriatyckim przy wyspie Ugljan koło Zadaru na głębokości 70 m wydobyta przez płetwonurków Stoczni Szczecińskiej im. A. Warskiego
    Jugosławia, sierpień 1969 r. przekazana załodze stoczni. styczeń 1970 rok. Amfora przekazana przez Stocznie Szczecińską Nową muzeum narodowemu w Szczecinie w ramach obchodów 60-lecia Stoczni Szczecińskiej 
    Szczecin 23 sierpnia 2008r.', 
    ex_id: '41',
    type: nil,
    big_photo: "http://kacpersalamon.pl/muzeum/bigphoto/12.png",
    thumb_photo: "http://kacpersalamon.pl/muzeum/ikonki/11.png")
Cord.create(
    exhibit_id: e41.id,
    cord: "pos-eksp-41")
