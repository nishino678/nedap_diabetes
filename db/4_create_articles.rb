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
  content: "test",
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