image_path = "#{Rails.root}/test.jpg"
image_file = File.new(image_path)

User.create!(
  firstname:  "Henk",
  email: "henk@devries.nl",
  password:              "123123",
  password_confirmation: "123123",
  admin: true
 )

User.create!(
  firstname:  "Example",
  email: "user@example.com",
  password:              "123123",
  password_confirmation: "123123",
  admin: false
 )

Specialist.create!(
  name:  "Arnold Schwarzenegger",
  profession: "Man of the year",
  bio: "Arnold Schwarzenegger werd geboren in Thal vlak bij de Oostenrijkse stad Graz. Zijn vader Gustav, een voormalig lid van de Sturmabteilung, was het hoofd van de plaatselijke politie en overleed op 1 december 1972. Zijn moeder Aurelia overleed op 2 augustus 1998. Arnold had een oudere broer Meinhard, geboren op 17 juli 1946 en gestorven bij een auto-ongeluk op 20 mei 1971. Arnold heeft als dienstplichtig militair in 1965 een jaar gediend in het Oostenrijkse leger als tankchauffeur. Hij werd Amerikaans staatsburger in 1983 en haalde een Bachelors graad aan de Universiteit van Wisconsin in International Marketing en Business Administration."
 )

Specialist.create!(
  name:  "Nelson Mandela",
  profession: "Zuid-Afrikaans anti-apartheidsstrijder en politicus",
  bio: "Vanaf 1944 was Mandela betrokken bij de strijd van het Afrikaans Nationaal Congres (ANC) tegen het apartheidsregime in Zuid-Afrika. Als leider van de militaire tak van het ANC werd hij in 1963 opgepakt en kreeg hij een levenslange gevangenisstraf opgelegd. In 1990 kwam hij vrij en werd het ANC gelegaliseerd. Samen met president F.W. de Klerk kreeg Mandela in 1993 de Nobelprijs voor de Vrede voor hun inspanningen voor het vreedzaam einde van het apartheidsregime en het leggen van de funderingen voor een nieuw democratisch Zuid-Afrika."
 )

Article.create!(
  article_image: File.open(File.join(Rails.root, 'db', 'seed_images', 'notenmix.jpg')),
  title: "Handvol noten verlaagt kans op hartziekten, kanker en diabetes type 2",
  author: "John Doe",
  content: "Mensen die 20 gram noten per dag eten hebben 30 procent minder kans op hart- en vaatziekten dan mensen die geen noten eten. Daarbij hebben ze 15 procent minder kans op kanker en 22 procent minder kans op vroegtijdig overlijden. Dit blijkt uit onderzoek van BMC Medicine. Hiervoor werden 29 studies met daarin informatie van 800.000 mensen geanalyseerd. Bovendien hadden de mensen die noten aten de helft minder kans te overlijden aan luchtwegaandoeningen en een verminderd risico (40 procent) op diabetes type 2.Gezonde vetten Noten zorgen voor deze effecten doordat ze veel vezels, voedingsstoffen en antioxidanten bevatten. Daarbij bevatten ze gezonde vetten die bijdragen aan het verminderen van hartaandoeningen. Hun hoge vezel- en eiwitgehalte kan ook bijdragen tot het verminderen van extra gewichtstoename door het terugdringen van overeten. De antioxidanten kunnen kanker helpen verminderen. De resultaten van de onderzoeken bleven consistent in verschillende geografische gebieden en bij mannen en vrouwen. Daarbij is er geen verschil in soort noot te zien. Bij mensen die meer dan 20 gram noten eten bleken er geen extra voordelen te zijn.",
  source: "NU.nl",
  specialist_id: "1",
  all_tags: "noten, hartziekten, kanker, diabetes",
  explanation: "Noten zijn geweldig voor je. Dit artikel is helemaal waar!",

  questions_attributes: [
  {
     content: 'Eerste vraag bij artikel.',
     answers_attributes: [
       {content: "Eerste antwoord",
        correct: true},
       {content: "Tweede antwoord"},
       {content: "Derde antwoord"}
     ]
   },

   {
     content: 'Tweede vraag bij artikel.',
     answers_attributes: [
       {content: "Q2A1"},
       {content: "Q2A2",
        correct: true},
       {content: "Q2A3"}
     ]
   },

   {
     content: 'Derde vraag bij artikel.',
     answers_attributes: [
       {content: "Q3A1"},
       {content: "Q3A2"},
       {content: "Q3A3",
        correct: true}
     ]
   }
 ]
)

Article.create!(
  article_image: File.open(File.join(Rails.root, 'db', 'seed_images', 'dt2.jpg')),
  title: "Nieuwe behandeling voor diabetes type 2",
  author: "Dirk Bruinbroek",
  content: "Vanaf 2017 is er een nieuwe behandeling voor volwassenen met diabetes type 2. Het middel is een combinatie van een langwerkende insuline en een GLP-1 receptoragonist en hoeft maar een keer per dag toegediend te worden.

Als je diabetes type 2 hebt, is het nodig om medicijnen te gebruiken voor het verlagen van de bloedsuiker. Dit kan op verschillende manieren. Medicijnen die het lichaam gevoeliger maken voor insuline, die ervoor zorgen dat de lever minder suiker aanmaakt of middelen die via de darmen invloed hebben op de bloedsuiker (GLP-1).

Nieuwe behandeling
Novo Nordisk brengt vanaf 1 januari 2017 een nieuw middel voor de behandeling van diabetes type 2 op de markt. Het medicijn, uitsluitend op recept verkrijgbaar, bestaat uit twee werkzame stoffen in één pen. Het helpt het lichaam de bloedsuikerwaarde te verlagen gedurende de dag, de nacht en na maaltijden.

Eenmaal per dag
Het nieuwe middel is beschikbaar in een voorgevulde pen. Mensen met diabetes type 2 hoeven dit medicijn nog maar eenmaal per dag toe te dienen. Bij voorkeur elke dag op hetzelfde tijdstip. Als dat niet mogelijk is, kan het middel op een ander tijdstip van de dag worden toegediend met een tussenpoos van tenminste 8 uur.",
  source: "Diabetesfonds.nl",
  specialist_id: "2",
  all_tags: "behandeling, diabetes, type2, bloedsuiker",
  explanation: "Ik vind heeelemaal mooi.",

  questions_attributes: [
  {
     content: 'Q1',
     answers_attributes: [
       {content: "Q1A1",
        correct: true},
       {content: "Q1A2"},
       {content: "Q1A3"}
     ]
   },

   {
     content: 'Q2',
     answers_attributes: [
       {content: "Q2A1"},
       {content: "Q2A2",
        correct: true},
       {content: "Q2A3"}
     ]
   },

   {
     content: 'Q1',
     answers_attributes: [
       {content: "Q3A1"},
       {content: "Q3A2"},
       {content: "Q3A3",
        correct: true}
     ]
   }
 ]
)


Fact.create!(
  title:  "Bѐtablokkers",
  content: "Medicijnen diegebruikt worden bij o.a. hoge bloeddruk en angina pectoris. Zij kunnen het herstelvan een hypo vertragen en ervoor zorgen dat men een optredende hypo niet voeltaankomen.",
 )

Fact.create!(
  title:  "Glucose",
  content: "Druivensuiker. Een enkelvoudige suiker. Deze circuleert in het bloed en heet ook wel bloedsuiker.",
 )

Fact.create!(
  title:  "BMI",
  content: "Maat om het overgewicht teberekenen m.b.v. de formule kg/m2",
 )

Fact.create!(
  title:  "Eilandjes van Langerhans",
  content: "Eengroep cellen in de alvleesklier. Bevat o.a. de bѐtacellen in de alvleesklier enook cellen die glucagon maken.",
 )

Fact.create!(
  title:  "Bѐtacellen",
  content: "Dit zijn cellen dieinsuline maken. Ze bevinden zich in de Eilandjes van Langerhans in de alvleesklier.",
 )

Fact.create!(
  title:  "Hypoglycemie",
  content: "Een verlaagde bloedglucosewaarde.",
 )

Fact.create!(
  title:  "Hyperglycemie",
  content: "Een verhoogde bloedglucosewaarde.",
 )

Fact.create!(
  title:  "Vasculopathie",
  content: "Afwijkingen aan de grote en kleine bloedvaten. ",
 )

Fact.create!(
  title:  "Nefropathie",
  content: "Afwijkingen aan denieren.",
 )

Fact.create!(
  title:  "Pancreas",
  content: "Alvleesklier, dit is een orgaan in de buikholte achter de maag waar hormonen als insuline englucagon worden gemaakt.",
 )

Fact.create!(
  title:  "Glucagon",
  content: "Hormoon dat wordtgemaakt in de alvleesklier en een bloedglucosegehalte verhogende werking heeft. Het is ook beschikbaar als medicijn dat kan worden ingespoten bij een lagebloedglucosewaardes.",
 )

Fact.create!(
  title:  "Insuline",
  content: "Dit is een hormoon datin de alvleesklier wordt gemaakt. Het zorgt dat glucsoe uit het bloed de cellen in de weefsels in kan en zo verlaagd het, het bloedglucosegehalte.",
 )
