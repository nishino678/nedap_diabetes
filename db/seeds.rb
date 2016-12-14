User.create!(
  firstname:  "Henk",
  lastname: "de Vries",
  username: "henkieboy",
  email: "henk@devries.nl",
  password:              "123456",
  password_confirmation: "123456",
  admin: true
 )

User.create!(
  firstname:  "Example",
  lastname: "User",
  username: "exampleuser",
  email: "user@example.com",
  password:              "123456",
  password_confirmation: "123456",
  admin: false
 )

Specialist.create!(
  name:  "Arnold Schwarzenegger",
  profession: "Man of the year",
  bio: "Arnold Schwarzenegger first gained fame as a body builder, using that as a launching point to become a huge Hollywood star and, later, the governor of California."
 )

Article.create!(
  title: "Handvol noten verlaagt kans op hartziekten, kanker en diabetes type 2",
  author: "John Doe",
  content: "Mensen die 20 gram noten per dag eten hebben 30 procent minder kans op hart- en vaatziekten dan mensen die geen noten eten. Daarbij hebben ze 15 procent minder kans op kanker en 22 procent minder kans op vroegtijdig overlijden. Dit blijkt uit onderzoek van BMC Medicine. Hiervoor werden 29 studies met daarin informatie van 800.000 mensen geanalyseerd. Bovendien hadden de mensen die noten aten de helft minder kans te overlijden aan luchtwegaandoeningen en een verminderd risico (40 procent) op diabetes type 2.Gezonde vetten Noten zorgen voor deze effecten doordat ze veel vezels, voedingsstoffen en antioxidanten bevatten. Daarbij bevatten ze gezonde vetten die bijdragen aan het verminderen van hartaandoeningen. Hun hoge vezel- en eiwitgehalte kan ook bijdragen tot het verminderen van extra gewichtstoename door het terugdringen van overeten. De antioxidanten kunnen kanker helpen verminderen. De resultaten van de onderzoeken bleven consistent in verschillende geografische gebieden en bij mannen en vrouwen. Daarbij is er geen verschil in soort noot te zien. Bij mensen die meer dan 20 gram noten eten bleken er geen extra voordelen te zijn.",
  source: "NU.nl",
  specialist_id: "1",
  explanation: "Noten zijn geweldig voor je okselhaar.",

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

