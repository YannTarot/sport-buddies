# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning booking database..."


puts "Cleaning camping car database..."


puts "Cleaning user database..."


catherineduchaud = User.new(firs_name: "catherine", last_name: "duchaud", age: 41, city: "rezé", description: "Salut les jeunes, j'ai déjà couru 3 fois, je cherche mon 4ème compagnon !", sports: "["running" => "intermédiaire"]" , email: "catherine.duchaud@gmail.com", password: "cat123")
file             = File.open(Rails.root.join('db/seeds/images/users/catherineduchaud.jpg'))
catherineduchaud.avatar.attach(io: file, filename: 'catherineduchaud.jpg', content_type: 'image/jpg')
catherineduchaud.save!

micheldumont     = User.new(firs_name: "michel", last_name: "dumont", age: 55, city: "rezé", description: "Hello, toujours dispo pour un 5 contre 5 au football ;) ", sports: "["football" => "confirmé"]" , email: "michel.dumont@hotmail.fr", password: "mic123")
file             = File.open(Rails.root.join('db/seeds/images/users/micheldumont.jpg'))
micheldumont.avatar.attach(io: file, filename: 'micheldumont.jpg', content_type: 'image/jpg')
micheldumont.save!

martinluron      = User.new(firs_name: "martin", last_name: "luron", age: 22, city: "rezé", description: "", sports: "["football" => "confirmé", "basket" => "intermédiaire"]" , email: "martin.luron@gmail.com", password: "mar123")
file             = File.open(Rails.root.join('db/seeds/images/users/martinluron.jpg'))
martinluron.avatar.attach(io: file, filename: 'martinluron.jpg', content_type: 'image/jpg')
martinluron.save!

louisemaryse     = User.new(firs_name: "martin", last_name: "luron", age: 19, city: "rezé", description: "Coucou ! J'adore l'escalade et la musculation", sports: "["basket" => "intermédiaire", "escalade" => "débutant"]" , email: "louise.maryse@gmail.com", password: "lou123")
file             = File.open(Rails.root.join('db/seeds/images/users/louisemaryse.jpg'))
louisemaryse.avatar.attach(io: file, filename: 'louisemaryse.jpg', content_type: 'image/jpg')
louisemaryse.save!

victoirecaune     = User.new(firs_name: "victoire", last_name: "caube", age: 35, city: "rezé", description: "", sports: "["cyclisme" => "débutant", "rugby" => "débutant"]" , email: "victoire.caune@gmail.com", password: "vic123")
file              = File.open(Rails.root.join('db/seeds/images/users/victoirecaune.jpg'))
victoirecaune.avatar.attach(io: file, filename: 'victoirecaune.jpg', content_type: 'image/jpg')
victoirecaune.save!

guillaumeathenas     = User.new(firs_name: "guillaume", last_name: "athenas", age: 36, city: "nantes", description: "Hellowwww ! Ancien Tennisman classé, je suis à la recherche de joueurs pour ne pas perdre la main, le boulot ne me permet pas de jouer en club. Je commence l'escalade et je suis preneur de 3 vs 3 en basket.", sports: "["basket" => "intermédiaire", "escalade" => "débutant", "tennis" => "confirmé"]" , email: "gathenas@monemail.com", password: "gui123")
file                 = File.open(Rails.root.join('db/seeds/images/users/guillaumeathenas.jpg'))
guillaumeathenas.avatar.attach(io: file, filename: 'guillaumeathenas.jpg', content_type: 'image/jpg')
guillaumeathenas.save!

davidtravailleur     = User.new(firs_name: "david", last_name: "travailleur", age: 35, city: "nantes", description: "", sports: "["rugby" => "confirmé", "running" => "débutant"]" , email: "dtravailleur@gmail.com", password: "dav123")
file                 = File.open(Rails.root.join('db/seeds/images/users/davidtravailleur.jpg'))
davidtravailleur.avatar.attach(io: file, filename: 'davidtravailleur.jpg', content_type: 'image/jpg')
davidtravailleur.save!

paulinelebeau        = User.new(firs_name: "pauline", last_name: "lebeau", age: 22, city: "nantes", description: "", sports: "["cyclisme" => "intermédiaire", "musculation" => "confirmé"]" , email: "labellepopo@gmail.com", password: "pau123")
file                 = File.open(Rails.root.join('db/seeds/images/users/paulinelebeau.jpg'))
paulinelebeau.avatar.attach(io: file, filename: 'paulinelebeau.jpg', content_type: 'image/jpg')
paulinelebeau.save!

amandinepayet        = User.new(firs_name: "amandine", last_name: "payet", age: 30, city: "nantes", description: "Coucou, j'ai découvert l'escalade il y a peu et j'adore ! Mais je trouve ça plus sympa de le faire avec d'autres. J'ai aussi fait du basket en club pendant plusieurs années, une vrai terreur sous la racket.", sports: "["escalade" => "intermédiaire", "basket" => "confirmé", "football" => "débutant"]" , email: "apayet@gmail.com", password: "ama123")
file                 = File.open(Rails.root.join('db/seeds/images/users/amandinepayet.jpg'))
amandinepayet.avatar.attach(io: file, filename: 'amandinepayet.jpg', content_type: 'image/jpg')
amandinepayet.save!

davidbonnaud        = User.new(firs_name: "david", last_name: "bonnaud", age: 26, city: "nantes", description: "Hello, j'adore le tennis et je galère souvent à trouver des partenaires sur Nantes. Si t'es motivé fais moi signe.", sports: "["tennis" => "confirmé", "running" => "débutant", "cyclisme" => "intermédiaire"]" , email: "david.bonnaud@gmail.com", password: "davi123")
file                = File.open(Rails.root.join('db/seeds/images/users/davidbonnaud.jpg'))
davidbonnaud.avatar.attach(io: file, filename: 'davidbonnaud.jpg', content_type: 'image/jpg')
davidbonnaud.save!

maximejader        = User.new(firs_name: "maxime", last_name: "jader", age: 42, city: "carquefou", description: "", sports: "["rugby" => "confirmé", "basket" => "débutant"]" , email: "maxime.jader@laposte.net", password: "max123")
file               = File.open(Rails.root.join('db/seeds/images/users/maximejader.jpg'))
maximejader.avatar.attach(io: file, filename: 'maximejader.jpg', content_type: 'image/jpg')
maximejader.save!

mateopelligri      = User.new(firs_name: "mateo", last_name: "pelligri", age: 22, city: "carquefou", description: "", sports: "["cyclisme" => "confirmé"]" , email: "matheofandetibopinot@orange.fr", password: "mat123")
file               = File.open(Rails.root.join('db/seeds/images/users/mateopelligri.jpg'))
mateopelligri.avatar.attach(io: file, filename: 'mateopelligri.jpg', content_type: 'image/jpg')
mateopelligri.save!

adeleperrin        = User.new(firs_name: "adèle", last_name: "perrin", age: 34, city: "carquefou", description: "Avant tout ici pour faire des rencontres ! ", sports: "["running" => "confirmé", "escalade" => "débutant", "tennis" => "confirmé"]" , email: "adele34@nomdesociete.com", password: "ade123")
file               = File.open(Rails.root.join('db/seeds/images/users/adeleperrin.jpg'))
adeleperrin.avatar.attach(io: file, filename: 'adeleperrin.jpg', content_type: 'image/jpg')
adeleperrin.save!

joaogomes          = User.new(firs_name: "joao", last_name: "gomes", age: 19, city: "carquefou", description: "Bonjour, Je suis un étudiant brésilien en échange en France. Je cherche des partenaires pour faire du sport et améliorer mon français", sports: "["running" => "intermédiaire", "musculation" => "débutant"]" , email: "joao.gomes@yahoo.fr", password: "joa123")
file               = File.open(Rails.root.join('db/seeds/images/users/joaogomes.jpg'))
joaogomes.avatar.attach(io: file, filename: 'joaogomes.jpg', content_type: 'image/jpg')
joaogomes.save!

jessicaletellec    = User.new(firs_name: "jessica", last_name: "le tellec", age: 24, city: "carquefou", description: "Hello, je suis une grande fan de football et de sport en général, j'ai été dans les équipes jeunes de l'EAG mais après une rupture des ligaments croisés j'ai du arrêté. Je cherche avant tout des buddies fairplay", sports: "["football" => "confirmé", "running" => "intermédiaire", "rugby" => "débutant"]" , email: "jessiprincess@yahoo.fr", password: "jes123")
file               = File.open(Rails.root.join('db/seeds/images/users/jessicaletellec.jpg'))
jessicaletellec.avatar.attach(io: file, filename: 'jessicaletellec.jpg', content_type: 'image/jpg')
jessicaletellec.save!

arthurmillaud      = User.new(firs_name: "arthur", last_name: "millaud", age: 58, city: "orvault", description: "Gros fan de rugby depuis tout petit mais sans avoir le temps de m'impliquer dans un club, je cherche des copains pour faire des matchs dans la bonne ambiance", sports: "["rugby" => "confirmé", "musculation" => "intermédiaire"]" , email: "a.millaud@gmail.com", password: "art123")
file               = File.open(Rails.root.join('db/seeds/images/users/arthurmillaud.jpg'))
arthurmillaud.avatar.attach(io: file, filename: 'arthurmillaud.jpg', content_type: 'image/jpg')
arthurmillaud.save!

kaderbensoussan    = User.new(firs_name: "kader", last_name: "bensoussan", age: 22, city: "orvault", description: "Bonjour ! J'organise souvent des tournois dans mon quartier et je suis à la recherche de nouveaux joueurs pour compléter les équipes !", sports: "["football" => "confirmé", "basket" => "débutant"]" , email: "k.bensoussan@gmail.com", password: "kad123")
file               = File.open(Rails.root.join('db/seeds/images/users/kaderbensoussan.jpg'))
kaderbensoussan.avatar.attach(io: file, filename: 'kaderbensoussan.jpg', content_type: 'image/jpg')
kaderbensoussan.save!


marienguyen        = User.new(firs_name: "marie", last_name: "nguyen", age: 39, city: "orvault", description: "Mordue de vélo et nouvelle dans la région je suis à la recherche de gens pour me montrer les beaux coins et me faire de nouvelles amitiées !", sports: "["cyclisme" => "intermédiaire", "running" => "intermédiaire"]" , email: "m.nguyen@hotmail.com", password: "mar123")
file               = File.open(Rails.root.join('db/seeds/images/users/marienguyen.jpg'))
marienguyen.avatar.attach(io: file, filename: 'marienguyen.jpg', content_type: 'image/jpg')
marienguyen.save!

pierrehoareau      = User.new(firs_name: "pierre", last_name: "hoareau", age: 75, city: "orvault", description: "Salut, je m'appelle Pierre jevoudrais garder la forme en marchant. J'aimerais trouver des gens pour papoter avec moi tout en me baladant !", sports: "["randonné" => "débutant"]" , email: "p.hoareau@wanadoo.fr", password: "pie123")
file               = File.open(Rails.root.join('db/seeds/images/users/pierrehoareau.jpg'))
pierrehoareau.avatar.attach(io: file, filename: 'pierrehoareau.jpg', content_type: 'image/jpg')
pierrehoareau.save!


azizsubra          = User.new(firs_name: "aziz", last_name: "subra", age: 18, city: "orvault", description: "", sports: "["tennis" => "intermédiaire", "running" => "confirmé", "basket" => "intermédiaire"]" , email: "a.subra@hotmail.com", password: "azi123")
file               = File.open(Rails.root.join('db/seeds/images/users/azizsubra.jpg'))
azizsubra.avatar.attach(io: file, filename: 'azizsubra.jpg', content_type: 'image/jpg')
azizsubra.save!

nicolasvillenaud        = User.new(firs_name: "nicolas", last_name: "villenaud", age: 32, city: "nantes", description: "Nouveau dans la région, je souhaite rencontrer des sportifs comme moi, pour grader la forme et faire de nouvelles connaissances. J'ai fait un peu de basket en club, du running le weekend quand le temps le permet et la fonte ne me fais pas peur !", sports: "["musculation" => "confirmé", "running" => "intermédiaire", "basket" => "intermédiaire"]" , email: "n.villenaud@gmail.com", password: "nic123")
file               = File.open(Rails.root.join('db/seeds/images/users/nicolasvillenaud.jpg'))
nicolasvillenaud.avatar.attach(io: file, filename: 'nicolasvillenaud.jpg', content_type: 'image/jpg')
nicolasvillenaud.save!







































