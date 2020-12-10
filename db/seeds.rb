# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Friendship.destroy_all
puts "Cleaning messages database..."
Message.destroy_all

puts "Cleaning particitpations database..."
Participation.destroy_all

puts "Cleaning events database..."
Event.destroy_all

puts "Cleaning user database..."
User.destroy_all

puts "create users :"
catherineduchaud = User.new(first_name: "catherine", last_name: "duchaud", age: 41, city: "rezé", description: "Salut les jeunes, j'ai déjà couru 3 fois, je cherche mon 4ème compagnon !", sports: {"running" => "intermédiaire"} , email: "catherine.duchaud@gmail.com", password: "cat123")
file             = File.open(Rails.root.join('db/seeds/images/users/catherineduchaud.jpg'))
catherineduchaud.avatar.attach(io: file, filename: 'catherineduchaud.jpg', content_type: 'image/jpg')
catherineduchaud.save!

micheldumont     = User.new(first_name: "michel", last_name: "dumont", age: 55, city: "rezé", description: "Hello, toujours dispo pour un 5 contre 5 au football ;) ", sports: {"football" => "confirmé"} , email: "michel.dumont@hotmail.fr", password: "mic123")
file             = File.open(Rails.root.join('db/seeds/images/users/micheldumont.jpg'))
micheldumont.avatar.attach(io: file, filename: 'micheldumont.jpg', content_type: 'image/jpg')
micheldumont.save!

martinluron      = User.new(first_name: "martin", last_name: "luron", age: 22, city: "rezé", description: "", sports: {"football" => "confirmé", "basketball" => "intermédiaire"} , email: "martin.luron@gmail.com", password: "mar123")
file             = File.open(Rails.root.join('db/seeds/images/users/martinluron.jpg'))
martinluron.avatar.attach(io: file, filename: 'martinluron.jpg', content_type: 'image/jpg')
martinluron.save!

louisemaryse     = User.new(first_name: "martin", last_name: "luron", age: 19, city: "rezé", description: "Coucou ! J'adore l'escalade et la fitness", sports: {"basketball" => "intermédiaire", "escalade" => "débutant"} , email: "louise.maryse@gmail.com", password: "lou123")
file             = File.open(Rails.root.join('db/seeds/images/users/louisemaryse.jpg'))
louisemaryse.avatar.attach(io: file, filename: 'louisemaryse.jpg', content_type: 'image/jpg')
louisemaryse.save!

victoirecaune     = User.new(first_name: "victoire", last_name: "caube", age: 35, city: "rezé", description: "", sports: {"cyclisme" => "débutant", "rugby" => "débutant"} , email: "victoire.caune@gmail.com", password: "vic123")
file              = File.open(Rails.root.join('db/seeds/images/users/victoirecaune.jpg'))
victoirecaune.avatar.attach(io: file, filename: 'victoirecaune.jpg', content_type: 'image/jpg')
victoirecaune.save!

guillaumeathenas     = User.new(first_name: "guillaume", last_name: "athenas", age: 36, city: "nantes", description: "Hellowwww ! Ancien Tennisman classé, je suis à la recherche de joueurs pour ne pas perdre la main, le boulot ne me permet pas de jouer en club. Je commence l'escalade et je suis preneur de 3 vs 3 en basketball.", sports: {"basketball" => "intermédiaire", "escalade" => "débutant", "tennis" => "confirmé"} , email: "gathenas@monemail.com", password: "gui123")
file                 = File.open(Rails.root.join('db/seeds/images/users/guillaumeathenas.jpg'))
guillaumeathenas.avatar.attach(io: file, filename: 'guillaumeathenas.jpg', content_type: 'image/jpg')
guillaumeathenas.save!

davidtravailleur     = User.new(first_name: "david", last_name: "travailleur", age: 35, city: "nantes", description: "", sports: {"rugby" => "confirmé", "running" => "débutant"} , email: "dtravailleur@gmail.com", password: "dav123")
file                 = File.open(Rails.root.join('db/seeds/images/users/davidtravailleur.jpg'))
davidtravailleur.avatar.attach(io: file, filename: 'davidtravailleur.jpg', content_type: 'image/jpg')
davidtravailleur.save!

paulinelebeau        = User.new(first_name: "pauline", last_name: "lebeau", age: 22, city: "nantes", description: "", sports: {"cyclisme" => "intermédiaire", "fitness" => "confirmé"} , email: "labellepopo@gmail.com", password: "pau123")
file                 = File.open(Rails.root.join('db/seeds/images/users/paulinelebeau.jpg'))
paulinelebeau.avatar.attach(io: file, filename: 'paulinelebeau.jpg', content_type: 'image/jpg')
paulinelebeau.save!

amandinepayet        = User.new(first_name: "amandine", last_name: "payet", age: 30, city: "nantes", description: "Coucou, j'ai découvert l'escalade il y a peu et j'adore ! Mais je trouve ça plus sympa de le faire avec d'autres. J'ai aussi fait du basketball en club pendant plusieurs années, une vrai terreur sous la racket.", sports: {"escalade" => "intermédiaire", "basketball" => "confirmé", "football" => "débutant"} , email: "apayet@gmail.com", password: "ama123")
file                 = File.open(Rails.root.join('db/seeds/images/users/amandinepayet.jpg'))
amandinepayet.avatar.attach(io: file, filename: 'amandinepayet.jpg', content_type: 'image/jpg')
amandinepayet.save!

davidbonnaud        = User.new(first_name: "david", last_name: "bonnaud", age: 26, city: "nantes", description: "Hello, j'adore le tennis et je galère souvent à trouver des partenaires sur Nantes. Si t'es motivé fais moi signe.", sports: {"tennis" => "confirmé", "running" => "débutant", "cyclisme" => "intermédiaire"} , email: "david.bonnaud@gmail.com", password: "davi123")
file                = File.open(Rails.root.join('db/seeds/images/users/davidbonnaud.jpg'))
davidbonnaud.avatar.attach(io: file, filename: 'davidbonnaud.jpg', content_type: 'image/jpg')
davidbonnaud.save!

maximejader        = User.new(first_name: "maxime", last_name: "jader", age: 42, city: "carquefou", description: "", sports: {"rugby" => "confirmé", "basketball" => "débutant"} , email: "maxime.jader@laposte.net", password: "max123")
file               = File.open(Rails.root.join('db/seeds/images/users/maximejader.jpg'))
maximejader.avatar.attach(io: file, filename: 'maximejader.jpg', content_type: 'image/jpg')
maximejader.save!

mateopelligri      = User.new(first_name: "mateo", last_name: "pelligri", age: 22, city: "carquefou", description: "", sports: {"cyclisme" => "confirmé"} , email: "matheofandetibopinot@orange.fr", password: "mat123")
file               = File.open(Rails.root.join('db/seeds/images/users/mateopelligri.jpg'))
mateopelligri.avatar.attach(io: file, filename: 'mateopelligri.jpg', content_type: 'image/jpg')
mateopelligri.save!

adeleperrin        = User.new(first_name: "adèle", last_name: "perrin", age: 34, city: "carquefou", description: "Avant tout ici pour faire des rencontres ! ", sports: {"running" => "confirmé", "escalade" => "débutant", "tennis" => "confirmé"} , email: "adele34@nomdesociete.com", password: "ade123")
file               = File.open(Rails.root.join('db/seeds/images/users/adeleperrin.jpg'))
adeleperrin.avatar.attach(io: file, filename: 'adeleperrin.jpg', content_type: 'image/jpg')
adeleperrin.save!

joaogomes          = User.new(first_name: "joao", last_name: "gomes", age: 19, city: "carquefou", description: "Bonjour, Je suis un étudiant brésilien en échange en France. Je cherche des partenaires pour faire du sport et améliorer mon français", sports: {"running" => "intermédiaire", "fitness" => "débutant"} , email: "joao.gomes@yahoo.fr", password: "joa123")
file               = File.open(Rails.root.join('db/seeds/images/users/joaogomes.jpg'))
joaogomes.avatar.attach(io: file, filename: 'joaogomes.jpg', content_type: 'image/jpg')
joaogomes.save!

jessicaletellec    = User.new(first_name: "jessica", last_name: "le tellec", age: 24, city: "carquefou", description: "Hello, je suis une grande fan de football et de sport en général, j'ai été dans les équipes jeunes de l'EAG mais après une rupture des ligaments croisés j'ai du arrêté. Je cherche avant tout des buddies fairplay", sports: {"football" => "confirmé", "running" => "intermédiaire", "rugby" => "débutant"} , email: "jessiprincess@yahoo.fr", password: "jes123")
file               = File.open(Rails.root.join('db/seeds/images/users/jessicaletellec.jpg'))
jessicaletellec.avatar.attach(io: file, filename: 'jessicaletellec.jpg', content_type: 'image/jpg')
jessicaletellec.save!

arthurmillaud      = User.new(first_name: "arthur", last_name: "millaud", age: 58, city: "orvault", description: "Gros fan de rugby depuis tout petit mais sans avoir le temps de m'impliquer dans un club, je cherche des copains pour faire des matchs dans la bonne ambiance", sports: {"rugby" => "confirmé", "fitness" => "intermédiaire"} , email: "a.millaud@gmail.com", password: "art123")
file               = File.open(Rails.root.join('db/seeds/images/users/arthurmillaud.jpg'))
arthurmillaud.avatar.attach(io: file, filename: 'arthurmillaud.jpg', content_type: 'image/jpg')
arthurmillaud.save!

kaderbensoussan    = User.new(first_name: "kader", last_name: "bensoussan", age: 22, city: "orvault", description: "Bonjour ! J'organise souvent des tournois dans mon quartier et je suis à la recherche de nouveaux joueurs pour compléter les équipes !", sports: {"football" => "confirmé", "basketball" => "débutant"} , email: "k.bensoussan@gmail.com", password: "kad123")
file               = File.open(Rails.root.join('db/seeds/images/users/kaderbensoussan.jpg'))
kaderbensoussan.avatar.attach(io: file, filename: 'kaderbensoussan.jpg', content_type: 'image/jpg')
kaderbensoussan.save!


marienguyen        = User.new(first_name: "marie", last_name: "nguyen", age: 39, city: "orvault", description: "Mordue de vélo et nouvelle dans la région je suis à la recherche de gens pour me montrer les beaux coins et me faire de nouvelles amitiées !", sports: {"cyclisme" => "intermédiaire", "running" => "intermédiaire"} , email: "m.nguyen@hotmail.com", password: "mar123")
file               = File.open(Rails.root.join('db/seeds/images/users/marienguyen.jpg'))
marienguyen.avatar.attach(io: file, filename: 'marienguyen.jpg', content_type: 'image/jpg')
marienguyen.save!

pierrehoareau      = User.new(first_name: "pierre", last_name: "hoareau", age: 75, city: "orvault", description: "Salut, je m'appelle Pierre jevoudrais garder la forme en marchant. J'aimerais trouver des gens pour papoter avec moi tout en me baladant !", sports: {"randonnée" => "débutant"} , email: "p.hoareau@wanadoo.fr", password: "pie123")
file               = File.open(Rails.root.join('db/seeds/images/users/pierrehoareau.jpg'))
pierrehoareau.avatar.attach(io: file, filename: 'pierrehoareau.jpg', content_type: 'image/jpg')
pierrehoareau.save!


azizsubra          = User.new(first_name: "aziz", last_name: "subra", age: 18, city: "orvault", description: "", sports: {"tennis" => "intermédiaire", "running" => "confirmé", "basketball" => "intermédiaire"} , email: "a.subra@hotmail.com", password: "azi123")
file               = File.open(Rails.root.join('db/seeds/images/users/azizsubra.jpg'))
azizsubra.avatar.attach(io: file, filename: 'azizsubra.jpg', content_type: 'image/jpg')
azizsubra.save!

nicolasvillenaud        = User.new(first_name: "nicolas", last_name: "villenaud", age: 32, city: "nantes", description: "Nouveau dans la région, je souhaite rencontrer des sportifs comme moi, pour grader la forme et faire de nouvelles connaissances. J'ai fait un peu de basketball en club, du running le weekend quand le temps le permet et la fonte ne me fais pas peur !", sports: {"fitness" => "confirmé", "running" => "intermédiaire", "basketball" => "intermédiaire"} , email: "n.villenaud@gmail.com", password: "nic123")
file               = File.open(Rails.root.join('db/seeds/images/users/nicolasvillenaud.jpg'))
nicolasvillenaud.avatar.attach(io: file, filename: 'nicolasvillenaud.jpg', content_type: 'image/jpg')
nicolasvillenaud.save!


puts "finished"

puts "create events"

basketball3v3 = Event.create!(name: " Street basketball 3v3", description: "Salut la commu, on cherche 3 joueurs avec un gros niveau pour faire un match 3v3 sur Nantes ! ", location: "L'arbre à basket, Nantes", starts_at: "2020-12-12 14:00:00", sport: "basketball", expected_level: "confirmé", expected_participants_count: 3, owner_id: kaderbensoussan.id)
basketball3v3 = Event.create!(name: " Basket 2v2 ", description: "Salut les buddies, on prévoit un petit 3v3 sur une moitié de terrain. J'ai mon nouveau ballon spalding à tester, venez me rejoindre.", location: "Parc du Grand Blottereau, Nantes", starts_at: "2020-12-12 14:00", sport: "basketball", expected_level: "intermédiaire", expected_participants_count: 5, owner_id: amandinepayet.id)
tournoidebasket = Event.create!(name: "Séance de block", description: "Salut les buddies j'organise une grosse séance de block ! Ce serait cool d'être au moins 6 ! Inscrivez-vous ! Aucune restriction de niveau !", location: "27 Boulevard Bâtonnier Cholet, 44100 Nantes ", starts_at: "2020-12-13 15:00", sport: "escalade", expected_level: "débutant", expected_participants_count: 6, owner_id: martinluron.id)
basketindoor4v4 = Event.create!(name: "Tour de Nantes", description: "Yo ! J'ai un créneau de dispo pour faire un tour de Nantes en vélo de route, il manque plus que toi pour venir compléter le tour.", location: "Gare Nantes, Nantes", starts_at: "2020-12-21 20:00", sport: "cyclisme", expected_level: "confirmé", expected_participants_count: 5, owner_id: maximejader.id)
semimarathon2 = Event.create!(name: "Futsal 5v5", description: "Salut les sportifs ! Je cherche des gens chauds pour un futsal samedi matin ! L'objectif est de suer, Venez nombreux !", location: "18 Rue Marie Curie, 44230 Saint-Sébastien-sur-Loire ", starts_at: "2020-12-19 10:00", sport: "football", expected_level: "intermédiaire", expected_participants_count: 10, owner_id: joaogomes.id)
basketpartenaire = Event.create!(name: "Cherche un partenaire !", description: "Salut tout le monde je me sers de cette app pour rechercher un sparring partner pour progresser en basket ! Envoyez moi un message si vous êtes interessés !", location: "Plaine de Jeux de Sèvres, Nantes", starts_at: "2020-12-15 09:00", sport: "basketball", expected_level: "débutant", expected_participants_count: 1, owner_id: guillaumeathenas.id)
streetbasket3v3 = Event.create!(name: "Street basket 3v3", description: "Bonjour tout le monde ! J'habite proche du parc de procé et je suis à la recherche de monde pour un petit street bientôt.", location: "Parc de Procé, Nantes", starts_at: "2020-12-13 11:00", sport: "basketball", expected_level: "débutant", expected_participants_count: 4, owner_id: azizsubra.id)
footing10km = Event.create!(name: "Footing 10km", description: "Salut tout le monde je vais courir tous les mardis et je me sens un peu seul ! Si des gens veulent me rejoindre inscrivez-vous !", location: "Parc de Procé, Nantes", starts_at: "2020-12-15 07:00", sport: "running", expected_level: "confirmé", expected_participants_count: nil, owner_id: jessicaletellec.id)
jogging10km = Event.create!(name: "Jogging 12km", description: "Hello les buddies, j'en ai un peu marre de courir seul sur les bords de l'erdre. L'endroit est magnifique, autant le partagé.", location: "Pont de la Tortière, Nantes", starts_at: "2020-12-13 09:00", sport: "running", expected_level: "intermédiaire", expected_participants_count: nil, owner_id: davidtravailleur.id)
coursedebutant = Event.create!(name: "Course à pied débutant", description: "Bonjour les buddies, récemment divorcée je suis en train de me refaire une santé pour plaire à nouveau aux hommes. Si vous voulez me rejoindre à petite foulées inscrivez vous je suis ouverte aux rencontres ", location: "Île de Nantes, Nantes", starts_at: "2020-12-17 14:00", sport: "running", expected_level: "débutant", expected_participants_count: nil, owner_id: catherineduchaud.id)
runningnantes = Event.create!(name: "Running ile de Nantes", description: "Salut la communauté, je prépare un trail et pour ça je fais uncircuit sympathique sur l'île de Nantes.Je cherche des buddies pour courir et gagner en motivation.", location: "Île de Nantes, Nantes", starts_at: "2020-12-13 08:00", sport: "running", expected_level: "confirmé", expected_participants_count: nil, owner_id: adeleperrin.id)
semimarathon = Event.create!(name: "Futsal 5v5", description: "Salut les sportifs ! Je cherche des gens chauds pour un futsal samedi matin ! L'objectif est de suer, Venez nombreux !", location: "UrbanSoccer - Nantes, Nantes", starts_at: "2020-12-19 10:00", sport: "football", expected_level: "intermédiaire", expected_participants_count: 10, owner_id: joaogomes.id)
trail30km = Event.create!(name: "Rugby à 7", description: "Hello les warriors ! Je suis à la recherche de rugbyman pour en petit match, dans le but de préparer ma prochaine compet, attention le niveau sera rude !", location: "Carquefou", starts_at: "2020-12-19 09:00", sport: "rugby", expected_level: "intermédiaire", expected_participants_count: nil, owner_id: marienguyen.id)
fitnesspartenaire = Event.create!(name: "Cherche un partenaire de fitness", description: "Bonjour à tous, voulant garder la forme et ne sachant pas trop les bonne pratiques je cherche quelqu'un pour faire du fitness avec moi dans la bonne humeur et partager ses connaissances", location: "Beaulieu Fitness, Nantes", starts_at: "2020-12-14 21:00", sport: "fitness", expected_level: "confirmé", expected_participants_count: 1, owner_id: paulinelebeau.id)
streetworkout = Event.create!(name: "Street workout", description: "Bonjour tout le monde. Je lance les invitations à me rejoindre pour une séance de circuit training en pleine air d'environ 2h, je compte sur vous pour me rejoindre et bruler pleins de calories.", location: "Parc du Grand Blottereau, Nantes", starts_at: "2020-12-20 09:00", sport: "fitness", expected_level: "intermédiaire", expected_participants_count: nil, owner_id: joaogomes.id)
partenairemusculation = Event.create!(name: "Partenaire de musculation", description: "Salut les buddies ! Je suis un peu bloqué sur mes maxs en ce moment. Je recherche une personne pour faire les séances et assurer ma sécurité lors de mes séries.", location: "Basic-Fit, Nantes", starts_at: "2020-12-19 10:00", sport: "fitness", expected_level: "confirmé", expected_participants_count: 2, owner_id: arthurmillaud.id)
basketball3v3finished = Event.create!(name: " Street basketball 3v3", description: "Salut la commu, on cherche 3 joueurs avec un gros niveau pour faire un match 3v3 sur Nantes ! ", location: "L'arbre à basket, Nantes", starts_at: "2020-11-28 14:00", sport: "basketball", expected_level: "confirmé", expected_participants_count: 3, owner_id: kaderbensoussan.id)
coursedebutantfinished = Event.create!(name: "Course à pied débutant", description: "Bonjour les buddies, récemment divorcée je suis en train de me refaire une santé pour plaire à nouveau aux hommes. Si vous voulez me rejoindre à petite foulées inscrivez vous je suis ouverte aux rencontres ", location: "Île de Nantes, Nantes", starts_at: "2020-11-30 14:00", sport: "running", expected_level: "débutant", expected_participants_count: nil, owner_id: catherineduchaud.id)

puts "finished"

puts "create particitpations"

nicolas_particitpation = Participation.create!(user_id: nicolasvillenaud.id, event: basketball3v3finished, status: "confirmed")
kader_particitpation = Participation.create!(user_id: kaderbensoussan.id, event: basketball3v3finished, status: "confirmed")
maxime_particitpation = Participation.create!(user_id: maximejader.id, event: basketball3v3finished, status: "confirmed")
amandine_particitpation = Participation.create!(user_id: amandinepayet.id, event: basketball3v3finished, status: "confirmed")
martin_particitpation = Participation.create!(user_id: martinluron.id, event: basketball3v3finished, status: "confirmed")
guillaume_particitpation = Participation.create!(user_id: guillaumeathenas.id, event: basketball3v3finished, status: "confirmed")

catherine_particitpation = Participation.create!(user_id: catherineduchaud.id, event: coursedebutantfinished, status: "confirmed")
david_t_particitpation = Participation.create!(user_id: davidtravailleur.id, event: coursedebutantfinished, status: "confirmed")
david_b_particitpation = Participation.create!(user_id: davidbonnaud.id, event: coursedebutantfinished, status: "confirmed")
adele_particitpation = Participation.create!(user_id: adeleperrin.id, event: coursedebutantfinished, status: "confirmed")
joao_particitpation = Participation.create!(user_id: joaogomes.id, event: coursedebutantfinished, status: "confirmed")
jessica_particitpation = Participation.create!(user_id: jessicaletellec.id, event: coursedebutantfinished, status: "confirmed")
nicolas_particitpation = Participation.create!(user_id: nicolasvillenaud.id, event: coursedebutantfinished, status: "confirmed")

nicolas_particitpation_2 = Participation.create!(user_id: nicolasvillenaud.id, event: basketball3v3, status: "confirmed")
amandine_particitpation_2 = Participation.create!(user_id: amandinepayet.id, event: basketball3v3, status: "confirmed")
martin_particitpation_2 = Participation.create!(user_id: martinluron.id, event: basketball3v3, status: "confirmed")
aziz_particitpation = Participation.create!(user_id: azizsubra.id, event: basketball3v3, status: "confirmed")

nicolas_particitpation_3 = Participation.create!(user_id: nicolasvillenaud.id, event: jogging10km, status: "confirmed")
kader_particitpation_2     = Participation.create!(user_id: kaderbensoussan.id, event: jogging10km, status: "confirmed")
david_b_particitpation_2   = Participation.create!(user_id: davidbonnaud.id, event: jogging10km, status: "confirmed")
jessica_particitpation_2   = Participation.create!(user_id: jessicaletellec.id, event: jogging10km, status: "confirmed")
catherine_particitpation_2 = Participation.create!(user_id: catherineduchaud.id, event: jogging10km, status: "confirmed")

nicolas_particitpation_4 = Participation.create!(user_id: nicolasvillenaud.id, event: partenairemusculation, status: "confirmed")
arthur_particitpation_4 = Participation.create!(user_id: arthurmillaud.id, event: partenairemusculation, status: "confirmed")

puts "finished"

puts "create friendships"
friendships_1 = Friendship.create!(user_id: nicolasvillenaud.id, other_user_id: kaderbensoussan.id, status: "accepted")
friendships_2 = Friendship.create!(user_id: nicolasvillenaud.id, other_user_id: amandinepayet.id, status: "accepted")
friendships_3 = Friendship.create!(user_id: nicolasvillenaud.id, other_user_id: maximejader.id, status: "accepted")
friendships_4 = Friendship.create!(user_id: martinluron.id, other_user_id: nicolasvillenaud.id, status: "pending")
friendships_5 = Friendship.create!(user_id: jessicaletellec.id, other_user_id: nicolasvillenaud.id, status: "pending")


puts "finished"

puts " Create messages"
message = Message.create!(content:"Salut les buddies, quelqu'un a un bon ballon à ramener ? 🤔", user_id: nicolasvillenaud.id, event: basketball3v3 )
message = Message.create!(content:"Yes, je viens d'acheter un tout nouveau 🏀 😎", user_id: amandinepayet.id, event: basketball3v3 )
message = Message.create!(content:"Cool !!!", user_id: martinluron.id, event:  basketball3v3 )
message = Message.create!(content:"C'est toujours plus sympa de courir à plusieurs !", user_id: kaderbensoussan.id , event: jogging10km )
message = Message.create!(content:"Pensez à vos frontales, il fera sans doute nuit", user_id: jessicaletellec.id, event: jogging10km )
message = Message.create!(content:"On se rejoint en bas du parc ?", user_id: kaderbensoussan.id, event: jogging10km )
message = Message.create!(content:"Yes carrément", user_id: nicolasvillenaud.id, event: jogging10km )
message = Message.create!(content:"Moi je peux covoit si ça en intéresse ", user_id: catherineduchaud.id , event: jogging10km )
message = Message.create!(content:"Salut Arthur, tu suis déjà un programme ?", user_id: nicolasvillenaud.id, event: partenairemusculation )
message = Message.create!(content:"Ouais j'en ai un, tu pourras me montrer ce que tu fais ça m'intéresse.", user_id: arthurmillaud.id, event: partenairemusculation )
message = Message.create!(content:"ça marche je te montrerai ça", user_id: nicolasvillenaud.id, event: partenairemusculation )
puts "finished"
