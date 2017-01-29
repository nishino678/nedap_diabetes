Article.create!(
  article_image: File.open(File.join(Rails.root, 'db', 'seed_images', 'notenmix.jpg')),
  title: "Handvol noten verlaagt kans op hartziekten, kanker en diabetes type 2",
  author: "NU.nl",
  content: "
  <p><b>Mensen die 20 gram noten per dag eten hebben 30 procent minder kans op hart- en vaatziekten dan mensen die geen noten eten. Daarbij hebben ze 15 procent minder kans op kanker en 22 procent minder kans op vroegtijdig overlijden.
  </b></p>
  <p>Dit blijkt uit onderzoek van BMC Medicine. Hiervoor werden 29 studies met daarin informatie van 800.000 mensen geanalyseerd.</p>
  <p>Bovendien hadden de mensen die noten aten de helft minder kans te overlijden aan luchtwegaandoeningen en een verminderd risico (40 procent) op diabetes type 2.</p>
  <h1>Gezonde vetten</h1>
  <p>Noten zorgen voor deze effecten doordat ze veel vezels, voedingsstoffen en antioxidanten bevatten. Daarbij bevatten ze gezonde vetten die bijdragen aan het verminderen van hartaandoeningen. Hun hoge vezel- en eiwitgehalte kan ook bijdragen tot het verminderen van extra gewichtstoename door het terugdringen van overeten. De antioxidanten kunnen kanker helpen verminderen.</p>
  <p>De resultaten van de onderzoeken bleven consistent in verschillende geografische gebieden en bij mannen en vrouwen. Daarbij is er geen verschil in soort noot te zien. Bij mensen die meer dan 20 gram noten eten bleken er geen extra voordelen te zijn.</p>",
  source: "http://www.nu.nl/eten-en-drinken/4360607/handvol-noten-verlaagt-kans-hartziekten-kanker-en-diabetes-type-2.html",
  specialist_id: "2",
  all_tags: "noten, hartziekten, kanker, diabetes, vetten",
  explanation: "Noten zijn geweldig voor je. Dit artikel is helemaal waar!",
  questions_attributes: [
  {
     content: 'Vraag 1',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 1",
        correct: true},
       {content: "Antwoord 2 op vraag 1"},
       {content: "Antwoord 3 op vraag 1"}
     ]
   },

   {
     content: 'Vraag 2',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 2"},
       {content: "Antwoord 2 op vraag 2",
        correct: true},
       {content: "Antwoord 3 op vraag 2"}
     ]
   },

   {
     content: 'Vraag 3',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 3"},
       {content: "Antwoord 2 op vraag 3"},
       {content: "Antwoord 3 op vraag 3",
        correct: true}
     ]
   }
 ]
)

Article.create!(
  article_image: File.open(File.join(Rails.root, 'db', 'seed_images', 'waarschuwpleister.jpg')),
  title: "Diabetesprijs naar slimme waarschuwpleister",
  author: "ANP",
  content: 
  "<p><b>Het Radboud Ziekenhuis in Nijmegen is als winnaar uit de bus gekomen voor het beste idee om het leven van diabetespatiënten makkelijker te maken, maakte het Diabetes Fonds maandag bekend. De onderzoekers bedachten een slimme 'waarschuwpleister' die een verandering van het hartritme door een te lage bloedsuiker signaleert. Het ziekenhuis ontvangt 50.000 euro om de 'Hypo Pleister' verder uit te werken.
  </b></p>
  <p>Ook vielen drie andere ideeën in de prijzen. Zo krijgt het VUMC in Amsterdam 50.000 euro voor de ontwikkeling van een app om mensen met diabetes te helpen met tips, informatie en oefeningen.
  </p>
  <p>Daarnaast bedacht het Ziekenhuis Friesland in Sneek samen met een ouder van een diabetespatiëntje een app om een geschikte oppas te vinden. De stichting Know Better Do Better werd beloond voor het tv-programma 'Cooking back to our Roots'. Het programma laat zien hoe je als niet-westerling met diabetes gezond kunt eten binnen de eigen cultuur. De bedenkers van deze ideeën ontvangen ieder 25.000 euro.
  </p>
  <p>Het Diabetes Fonds geeft jaarlijks financiële steun aan grootschalig wetenschappelijk onderzoek naar diabetes. <em>'Maar we wilden ook kleinschalige ideeën ondersteunen die op korte termijn een verbetering kunnen bieden in de levens van mensen met diabetes'</em>, zegt Hanneke Dessing, directeur van het fonds.
  </p>",
  source: "http://www.nu.nl/gezondheid/4367946/diabetesprijs-slimme-waarschuwpleister.html",
  specialist_id: "1",
  all_tags: "diabetesprijs, diabetes, waarschuwpleister, friesland, hartritme, bloedsuiker",
  explanation: "Applicaties om je diabetes bij te houden zijn geweldig! De Hypo Pleister is een goed initiatief.",
  questions_attributes: [
  {
     content: 'Vraag 1',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 1",
        correct: true},
       {content: "Antwoord 2 op vraag 1"},
       {content: "Antwoord 3 op vraag 1"}
     ]
   },

   {
     content: 'Vraag 2',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 2"},
       {content: "Antwoord 2 op vraag 2",
        correct: true},
       {content: "Antwoord 3 op vraag 2"}
     ]
   },

   {
     content: 'Vraag 3',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 3"},
       {content: "Antwoord 2 op vraag 3"},
       {content: "Antwoord 3 op vraag 3",
        correct: true}
     ]
   }
 ]
)

Article.create!(
  article_image: File.open(File.join(Rails.root, 'db', 'seed_images', 'nederland.jpg')),
  title: "Naar verhouding weinig diabetespatiënten in Nederland",
  author: "ANP",
  content: "
  <p><b>In Nederland zijn vergeleken met andere Europese landen relatief weinig mensen met diabetes, oftewel suikerziekte. Dat maakt het Centraal Bureau voor de Statistiek (CBS) bekend.</p></b>
  <p>Alleen in Roemenië, Zweden, België, Oostenrijk, Denemarken, Letland en Litouwen is het aandeel inwoners van vijftien jaar of ouder met diabetes lager dan in Nederland. In Frankrijk is dit aandeel juist het hoogst, meldt het CBS vrijdag.</p>
  <p>Het aantal diabetespatiënten in Nederland is wel gestegen. In totaal heeft bijna 4,8 procent van de Nederlanders diabetes, tegen 2,8 procent in 2001. Vooral het aantal patiënten met het veelvoorkomende diabetes type 2 is gestegen.</p>
  <h1>Obesitas</h1>
  <p>Vorig jaar had bijna 12 procent van de Nederlanders obesitas (ernstig overgewicht). Ruim 17 procent van hen rapporteerde tevens diabetes, tegenover ruim 3 procent van de mensen zónder obesitas. Het CBS vroeg mensen of ze suikerziekte hebben en vroeg ook naar hun lengte en gewicht.</p>
  <p>Obesitas is, net als ongezonde voeding, lichamelijke passiviteit en roken een risicofactor voor het krijgen van diabetes type 2.</p>
  ",
  source: "http://www.nu.nl/lifestyle/4349511/verhouding-weinig-diabetespatienten-in-nederland.html",
  specialist_id: "3",
  all_tags: "diabetes, nederland, obesitas, type2, cbs",
  explanation: "Nederland is een ontwikkeld land, hierdoor letten mensen meer op hun voeding en maken ze bewustere keuzes. Type 2 diabetes is wel een ernstig probleem en Nederlanders moeten zich bewuster worden van hun bewegings- en eetpatroon.",
  questions_attributes: [
  {
     content: 'Vraag 1',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 1",
        correct: true},
       {content: "Antwoord 2 op vraag 1"},
       {content: "Antwoord 3 op vraag 1"}
     ]
   },

   {
     content: 'Vraag 2',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 2"},
       {content: "Antwoord 2 op vraag 2",
        correct: true},
       {content: "Antwoord 3 op vraag 2"}
     ]
   },

   {
     content: 'Vraag 3',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 3"},
       {content: "Antwoord 2 op vraag 3"},
       {content: "Antwoord 3 op vraag 3",
        correct: true}
     ]
   }
 ]
)

Article.create!(
  article_image: File.open(File.join(Rails.root, 'db', 'seed_images', 'bedrust.jpg')),
  title: "Bedrust kan leiden tot verhoogde kans op diabetes",
  author: "NU.nl",
  content: "
  <p><b>Een week bedrust kan mogelijk al leiden tot een verhoogd risico op het ontwikkelen van diabetes type 2. Bovendien levert het ook een gemiddeld spiermassaverlies op van anderhalve kilo.</b></p>
  <p>Dat concluderen wetenschappers van het Maastricht UMC+ naar aanleiding van een onderzoek waaraan gezonde vrijwilligers hebben meegewerkt.  De resultaten van het onderzoek zijn recent gepubliceerd in het wetenschappelijk tijdschrift <em>Diabetes</em>.</p>
  <p>De onderzoekers lieten tien gezonde jongemannen een week gekluisterd aan hun bed doorbrengen, wat vergelijkbaar is met een gemiddelde ziekenhuisopname. Tijdens deze periode maten de onderzoekers op verschillende momenten de insulinegevoeligheid, spierkracht, spiermassa en bloedsamenstelling van de mannen.</p>
  <p>Hierbij werd de voeding die de vrijwilligers gedurende de week kregen vooraf vastgesteld en nauwlettend gecontroleerd. Na een week waren de proefpersonen 1,4 kilo spiermassa verloren, wat zo’n 2,5 procent van het totaal is.</p>
  <h1>Hogere bloedsuikerspiegel</h1>
  <p>Bovendien was de insulinegevoeligheid afgenomen met zo’n 30 procent. Dit heeft als gevolg dat het lichaam minder goed in staat is om suikers om te zetten, wat leidt tot een hogere bloedsuikerspiegel en wat uiteindelijk een risico vormt tot het ontwikkelen van diabetes.</p>
  <p><em>'Ondanks de kleine onderzoekspopulatie zijn de resultaten duidelijk waarneembaar'</em>, zegt hoofdonderzoeker Marlou Dirks. <em>'Door de effecten van bedrust verder in kaart te brengen, kunnen we ook werken aan het voorkomen of het herstellen van de negatieve gevolgen daarvan. Zo is het bijvoorbeeld mogelijk om met voeding en activiteit op de juiste momenten van de dag te zorgen voor een minimaal spiermassaverlies. Nu moeten we dus ook rekening houden met de insulinegevoeligheid.'</em></p>
  ",
  source: "http://www.nu.nl/gezondheid/4296005/bedrust-kan-leiden-verhoogde-kans-diabetes.html",
  specialist_id: "2",
  all_tags: "diabetes, bedrust, bloedsuikerspiegel, obesitas, type2",
  explanation: "Als je bedrust nodig hebt door een aandoening of letsel zijn er een hoop andere manieren om toch je beweging te krijgen, vraag je verpleegkundige voor meer informatie.",
  questions_attributes: [
  {
     content: 'Vraag 1',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 1",
        correct: true},
       {content: "Antwoord 2 op vraag 1"},
       {content: "Antwoord 3 op vraag 1"}
     ]
   },

   {
     content: 'Vraag 2',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 2"},
       {content: "Antwoord 2 op vraag 2",
        correct: true},
       {content: "Antwoord 3 op vraag 2"}
     ]
   },

   {
     content: 'Vraag 3',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 3"},
       {content: "Antwoord 2 op vraag 3"},
       {content: "Antwoord 3 op vraag 3",
        correct: true}
     ]
   }
 ]
)

Article.create!(
  article_image: File.open(File.join(Rails.root, 'db', 'seed_images', 'bewegen.jpg')),
  title: "Beter eten en meer bewegen kunnen diabetes type 2 genezen",
  author: "NOS.nl",
  content: "
  <p><b>Een groot deel van de bijna één miljoen mensen met diabetes type 2, kan genezen als ze gezonder gaan eten en meer gaan bewegen. Dat kan de samenleving een besparing opleveren van 2,7 miljard euro, stelt internist Hanno Pijl van het Leids Universitair Medisch Centrum.</b></p>
  <p>Uit onderzoek van onder meer het LUMC, TNO en zorgverzekeraar VGZ blijkt dat tot 40 procent van de patiënten van diabetes type 2 kan afkomen als zij hun leefstijl drastisch omgooien. Het gaat dan voornamelijk om mensen die geen insuline spuiten, maar volgens Pijl komt zelfs de groep die dat wel doet voor genezing in aanmerking.</p>
  <p>Doordat patiënten minder insuline en medicijnen nodig hebben, kan bijna drie miljard euro worden bespaard. <em>'Zelfs als dat niet lukt en het is maar 10 procent, scheelt dat al enorm veel'</em>, zegt Pijl.</p>
  <h1>Vaker vergoed</h1>
  <p>Ook zorgverzekeraars zetten nu meer in op leefstijlbegeleiding voor diabetes type 2-patiënten. Waar de ziekte eerder nog werd gezien als een kwestie van 'eigen schuld, dikke bult', worden voedingsprogramma's voor diabetespatiënten nu steeds vaker vergoed.</p>
  <p>Zo zit de begeleiding van Stichting Voeding Leeft vanaf januari 2017 in het pakket bij zorgverzekeraar VGZ. In het programma Keer Diabetes Om krijgen diabetes type 2-patiënten begeleiding op het gebied van eten en sport.</p>
  ",
  source: "http://nos.nl/artikel/2144943-beter-eten-en-meer-bewegen-kunnen-diabetes-type-2-genezen.html",
  specialist_id: "1",
  all_tags: "diabetes, bewegen, leefstijl, type2, zorgverzekering, genezing",
  explanation: "Gezonder eten en meer beweging krijgen kan geen kwaad. Zorg er wel voor dat je jezelf niet overbelast zodat je wellicht juist in bed beland.",
  questions_attributes: [
  {
     content: 'Vraag 1',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 1",
        correct: true},
       {content: "Antwoord 2 op vraag 1"},
       {content: "Antwoord 3 op vraag 1"}
     ]
   },

   {
     content: 'Vraag 2',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 2"},
       {content: "Antwoord 2 op vraag 2",
        correct: true},
       {content: "Antwoord 3 op vraag 2"}
     ]
   },

   {
     content: 'Vraag 3',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 3"},
       {content: "Antwoord 2 op vraag 3"},
       {content: "Antwoord 3 op vraag 3",
        correct: true}
     ]
   }
 ]
)

Article.create!(
  article_image: File.open(File.join(Rails.root, 'db', 'seed_images', 'patat.jpg')),
  title: "Obesitas is het nieuwe roken, ontmoediging heeft effect",
  author: "NOS.nl",
  content: "
  <p><b><em<'Diabetes was de belangrijkste reden voor mijn maagverkleiningsoperatie, ik kon niet meer zonder insuline.'</em> Een aantal jaar geleden was Marjo Jager nog fors zwaarder. <em>'Ik had diabetes, hoge bloeddruk, en ik heb een vorm van reuma, daarvoor was het beter om af te vallen.'</em></b></p>
  <p>Ze onderging een maagverkleining en heeft nu geen diabetes meer. Toch is een operatie volgens haar geen wondermiddel. <em>'Het is een hulpmiddel, geen oplossing. Het is een keuze voor de rest van je leven en ik moet me voortaan aan bepaalde leefregels houden.'</em></p>
  <p>Het aantal Nederlanders met overgewicht dat de maag laat verkleinen groeit. Afgelopen week luidden vier chirurgen gespecialiseerd in maagverkleiningsoperaties uit het Slotervaart Ziekenhuis in Amsterdam de noodklok. <em>'Wij verrichten dertig operaties per week, maar kunnen de toeloop van patiënten niet aan'</em>, schreven ze in de Volkskrant. </p>
  <p>Het probleem is volgens de artsen niet met een operatie op te lossen; maatregelen tegen obesitas zijn hard nodig. <em>'Wij pleiten voor een politiek en maatschappelijk Obesitas Offensief.'</em> De artsen vinden dat de politiek en overheid zich juist wel moeten bemoeien met de leefwijze van burgers. </p>
  <p><em>'Alleen door hun inzet kan de noodzakelijke gedragsverandering tot stand komen. De overheid kan ons geen gezonde levensstijl opleggen, maar kan ons wel informeren en verleiden tot betere keuzes.'</em></p>
  <p>De Wereldgezondheidsorganisatie (WHO) waarschuwde al eerder voor een 'wereldwijde obesitas-epidemie'. Sinds dit voorjaar zijn er op de wereld meer mensen met overgewicht dan met ondergewicht. De meeste mensen met flink overgewicht wonen in de Verenigde Staten en China.</p>
  <p>In Nederland heeft meer dan de helft van de bevolking last van overgewicht en lijden 1,7 miljoen mensen aan obesitas. Dit leidt tot allerlei hart- en vaatziekten, diabetes type 2 en vormen van kanker.</p>
  <p>Een van de belangrijkste oorzaken van gewichtstoename zijn frisdranken. Nederlanders drinken jaarlijks meer dan 90 liter frisdrank per persoon. Frisdranken bevatten veel suiker. In een literfles Fanta zitten 23 klontjes suiker, in een liter cola zelfs 26.</p>
  <p>In landen als Hongarije en Mexico is de afgelopen jaren een suikertaks ingevoerd. Dat werkt, blijkt uit onderzoek van de WHO. Door de prijs van suikerhoudende drankjes te verhogen, gaan mensen er minder van drinken.</p>
  <p>De frisdrankindustrie heeft alles liever dan een suikertaks. <em>'De voedingsmiddelenindustrie erkent het probleem, maar ziet zichzelf niet als de boze heks uit het bekende sprookje'</em>, zegt Philip den Ouden, directeur van de Federatie Nederlandse Levensmiddelen Industrie (FNLI)</p>
  <p>Een suikertaks heeft maar één bewezen effect, zegt Den Ouden. <em>'Ze vergroten de inkomsten van de overheid. Er zijn geen bewijzen voor het verbeteren van de volksgezondheid.'</em> Hij noemt de WHO naïef. <em>'Er wordt gegrepen naar een makkelijk instrument voor complexe problemen.'</em></p>
  <p>Toch ligt volgens de chirurgen van het Slotervaart Ziekenhuis de sleutelrol bij de voedingsindustrie. <em>'Gezondheid is niet het primaire belang van de voedingsindustrie. Alleen stevige overheidsmaatregelen kunnen de industrie dwingen goede stappen te nemen.'</em></p>
  <p>Daar is Marjo Jager het mee eens. <em>'Alles wat je in pakjes en zakjes koopt, wordt zoeter en zouter. Een verantwoorde keuze wordt steeds lastiger. Er zijn alleen al twintig benamingen voor suiker. De overheid moet dat inzichtelijker maken.'</em></p>
  <p>De 'boterzachte' convenanten die nu worden gesloten met fabrikanten hebben volgens de chirurgen weinig effect. De overheid moet veel meer doen aan voorlichting en educatie. <em>'Obesitas is het nieuwe roken, een ontmoedigingsbeleid heeft effect. Net als bij roken kan dit ook werken bij ongezond eten.</em></p>
  ",
  source: "http://nos.nl/nieuwsuur/artikel/2139422-obesitas-is-het-nieuwe-roken-ontmoediging-heeft-effect.html",
  specialist_id: "1",
  all_tags: "diabetes, type1, type2, ontmoediging, reuma, bloeddruk, nederland, overgewicht, obesitas, suiker",
  explanation: "Vul mij aan.",
  questions_attributes: [
  {
     content: 'Vraag 1',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 1",
        correct: true},
       {content: "Antwoord 2 op vraag 1"},
       {content: "Antwoord 3 op vraag 1"}
     ]
   },

   {
     content: 'Vraag 2',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 2"},
       {content: "Antwoord 2 op vraag 2",
        correct: true},
       {content: "Antwoord 3 op vraag 2"}
     ]
   },

   {
     content: 'Vraag 3',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 3"},
       {content: "Antwoord 2 op vraag 3"},
       {content: "Antwoord 3 op vraag 3",
        correct: true}
     ]
   }
 ]
)

Article.create!(
  article_image: File.open(File.join(Rails.root, 'db', 'seed_images', 'diabetes2.jpg')),
  title: "Een op drie diabetes type 2-patiënten verandert leefstijl niet",
  author: "ANP",
  content: "
  <p><b>Een derde van de mensen bij wie diabetes type 2 is vastgesteld, verandert de leefstijl niet. Dat blijkt uit onderzoek van marktonderzoeksbureau GfK in opdracht van de Nederlandse Zuivel Organisatie, dat 24 november wordt gepresenteerd in de Jaarbeurs in Utrecht. Het onderzoek is verricht onder 578 diabetes type 2-patiënten boven de 35 jaar.</b></p>
  <p>Een op de drie (34 procent) van de diabetes type 2-patiënten geeft aan dat hun leefstijl niet is veranderd na de diagnose. Van de diabetes type 2-patiënten kampt 83 procent met overgewicht. Een minderheid volgt een dieet. Een derde geeft aan meer te willen gaan bewegen en een derde zegt meer te gaan letten op gezonde voeding.</p>
  <h1>Mannen</h1>
  <p>Het onderzoek geeft tevens inzicht in hoe de groep diabetes type 2-patiënten er uitziet. Zo komt diabetes type 2 vaker voor bij mannen (55 procent) dan bij vrouwen (45 procent), vaker bij laag- dan bij hoogopgeleiden en vaker bij oudere mensen. Zo'n 81 procent maakt gebruik van medicatie.</p>
  <p>Van alle diabetes type 2-patiënten heeft 83 procent te maken met overgewicht. Zo'n 42 procent van de diabetes type 2-patiënten heeft een BMI hoger dan 30. Een kwart van hen komt na de diagnose nog aan.</p>
  ",
  source: "http://www.nu.nl/gezondheid/4351726/drie-diabetes-type-2-patienten-verandert-leefstijl-niet.html",
  specialist_id: "1",
  all_tags: "diabetes, type2, leefstijl",
  explanation: "De informatie uit dit artikel is valide en op feiten gebaseerd.",
  questions_attributes: [
  {
     content: 'Vraag 1',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 1",
        correct: true},
       {content: "Antwoord 2 op vraag 1"},
       {content: "Antwoord 3 op vraag 1"}
     ]
   },

   {
     content: 'Vraag 2',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 2"},
       {content: "Antwoord 2 op vraag 2",
        correct: true},
       {content: "Antwoord 3 op vraag 2"}
     ]
   },

   {
     content: 'Vraag 3',
     answers_attributes: [
       {content: "Antwoord 1 op vraag 3"},
       {content: "Antwoord 2 op vraag 3"},
       {content: "Antwoord 3 op vraag 3",
        correct: true}
     ]
   }
 ]
)