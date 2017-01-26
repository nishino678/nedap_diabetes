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