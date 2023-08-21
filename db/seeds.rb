# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

# villain_name = ['Ursula', 'Queen of Hearts', 'Gaston', 'Jafar', 'Morgana (Little Mairmaid)',
# 'Charles Muntz', 'Cassandra (Rapunzel)', 'Sid (Toy Story)', 'Ratigan', 'Lady Tremaine',
# 'Mother Gothel', 'Queen Grimhilde (Snow White)', 'Darth Vader', 'Dr. Heinz Doofenshmirtz',
# 'Scar', 'Maleficent']

user1 = User.create(email: "ursula@gmail.com", password: "123456", first_name: "Ursula")

lair1 = Lair.new(name: "Ursula's Lair", user: user1, price: 400, description: "Ursula's Lair is the home of the evil sea witch, Ursula, after she was exiled from Atlantica by King Triton. The lair is a skeleton of a gigantic creature long since dead. Its maw is the main entrance, but due to the decay, there are many ways to enter and exit the place. Past the main entrance is a single corridor that leads to the main hall. In this corridor is Ursula's garden of polyps writhing about in agony. Eventually the polyps give way to the entrance leading to the main hall.")

file1 = URI.open("https://static.wikia.nocookie.net/disney/images/1/11/Main_hall.JPG/revision/latest/scale-to-width-down/1000?cb=20120510165129")
lair.photo.attach(io: file, filename: "ursula_lair", content_type: "image/jpg")
lair.save

user2 = User.create(email: "queenofhearts@gmail.com", password: "123456", first_name: "Queen of Hearts")

lair2 = Lair.new(name: "Queen of Hearts' Castle", user: user2, price: 600, description: "The Queen of Hearts' Castle is home to the Queen and King of Hearts. The castle is located deep within Wonderland. It is home to the Queen and King of Hearts, as well as their army of Card Soldiers, and possibly a workplace for the White Rabbit. It appears in a few scenes, especially when the Cheshire Cat shows Alice a shortcut to get to the castle. The castle is also the location where Alice was put on trial for making the Queen of Hearts lose her croquet game, as well as her patience.")
file2 = URI.open("https://disney.fandom.com/wiki/The_Queen_of_Hearts%27_Castle?file=-1CastleQueenOfHearts.png")
lair.photo.attach(io: file, filename: "queen_of_hearts_castle", content_type: "image/png")
lair.save

user3 = User.create(email: "gaston@gmail.com", password: "123456", first_name: "Gaston")

lair3 = Lair.new(name: "Gaston's Tavern", user: user3, price: 300, description: "The Tavern is located in an unnamed French Village. It is a hangout for Gaston and the villagers. It is located at the edge of the village near a bridge, at one of the town's fountains.")
file3 = URI.open("https://static.wikia.nocookie.net/disney/images/0/09/Beauty-and-the-beast-disneyscreencaps_com-3425.jpg/revision/latest/scale-to-width-down/1000?cb=20140306214438")
lair.photo.attach(io: file, filename: "gaston_tavern", content_type: "image/jpg")
lair.save

user4 = User.create(email: "jafar@gmail.com", password: "123456", first_name: "Jafar")

lair4 = Lair.new(name: "Jafar's Lair", user: user4, price: 500, description: "A hidden area of the Sultan's Palace, where Jafar and Iago do most of their plotting. It includes the various instruments Jafar uses in his alchemy.")
file4 = URI.open("https://static.wikia.nocookie.net/disney/images/d/d8/Aladdin-disneyscreencaps.com-7787.jpg/revision/latest/scale-to-width-down/1000?cb=20150827130558")
lair.photo.attach(io: file, filename: "jafar_lair", content_type: "image/jpg")
lair.save


user5 = User.create(email: "morgana@gmail.com", password: "123456", first_name: "Morgana (Little Mairmaid)")

lair5 = Lair.new(name: "Morgana's Ice Cave", user: user5, price: 300, description: "Morgana's Ice Cave is an icy cave in the Arctic, home to the sea witch Morgana, the main antagonist of the direct-to-video animated feature The Little Mermaid II: Return to the Sea.")
file5 = URI.open("https://i.ytimg.com/vi/NBnVfGj7l_4/maxresdefault.jpg")
lair.photo.attach(io: file, filename: "morgana_ice_cave", content_type: "image/jpg")
lair.save

user6 = User.create(email: "c.muntz@gmail.com", password: "123456", first_name: "Charles", last_name: "Muntz")

lair6 = Lair.new(name: "Spirit of Adventure", user: user6, price: 800, description: "The Spirit of Adventure is Charles Muntz's famed zeppelin. The Spirit's design is based largely on the German airship LZ 127 Graf Zeppelin, but with 8 engines on her hull that can be pivoted forwards and backwards, similar to the USS Macon's vectored thrust engines.")
file6 = URI.open("https://static.wikia.nocookie.net/disney/images/4/4e/Up-disneyscreencaps.com-10301.jpg/revision/latest/scale-to-width-down/1000?cb=20170210035653")
lair.photo.attach(io: file, filename: "spirit_of_adventure", content_type: "image/jpg")
lair.save

user7 = User.create(email: "cassandra@gmail.com", password: "123456", first_name: "Cassandra")

lair7 = Lair.new(name: "Cassandra's Stronghold", user: user7, price: 400, description: "Cassandra's Stronghold is a location from Tangled: The Series. It was made from the Black Rocks themselves upon Cassandra casting the Moonstone's second spell of darkness. It stands in the exact spot where Rapunzel's Tower used to be and is roughly three times its size.")
file7 = URI.open("https://static.wikia.nocookie.net/disney/images/a/a5/RapunzelsTangledAdventureCassandrasRevenge_%285%29.jpg/revision/latest/scale-to-width-down/1000?cb=20200126104701")
lair.photo.attach(io: file, filename: "cassandras_stronghold", content_type: "image/jpg")
lair.save

user8 = User.create(email: "sid@gmail.com", password: "123456", first_name: "Sid (Toy Story)")

lair8 = Lair.new(name: "Sid's House", user: user8, price: 150, description: "Sid's room, where the Mutant toys reside, is located in a beeline just across the yard from Andy's room. It is littered with many disturbing musical posters, many toy torturing tools, a lava lamp with toys' heads instead of oil blobs, a red (likely fake) medical kit, and many other disturbing features. The room has a green carpet and is incredibly untidy.")
file8 = URI.open("https://static.wikia.nocookie.net/disney/images/3/35/4k-toystory-animationscreencaps.com-6325.jpg/revision/latest/scale-to-width-down/1000?cb=20201212013454")
lair.photo.attach(io: file, filename: "sid_house", content_type: "image/jpg")
lair.save

user9 = User.create(email: "ratigan@gmail.com", password: "123456", first_name: "Ratigan")

lair9 = Lair.new(name: "Ratigan's Lair", user: user9, price: 200, description: "Ratigan's Lair is the hideout of Basil of Baker Street's archnemesis, the nefarious Professor Ratigan. It is stationed in a wine cellar, and serves as the home of not just Ratigan, but also Fidget, Ratigan's thugs, and Felicia, Ratigan's enormous pet cat.")
file9 = URI.open("https://static.wikia.nocookie.net/evil/images/4/4c/Professor_Ratigan%27s_Lair.jpg/revision/latest?cb=20150914050308")
lair.photo.attach(io: file, filename: "ratigan", content_type: "image/jpg")
lair.save

user10 = User.create(email: "lady.tremaine@gmail.com", password: "123456", first_name: "Lady", last_name: "Tremaine")

lair10 = Lair.new(name: "Cinderella's Château", user: user10, price: 300, description: "Cinderella's Château was where Cinderella herself and her late father and mother once happily lived. Although it was once a grand and imposing building, it fell into disrepair in the years following the death of her father, for her stepmother neglected to care for it. She preferred to squander the family fortune she inherited from her late husband on her daughters, Anastasia and Drizella, spoiling them rotten for over a decade after the death of both girls' stepfather.")
file10 = URI.open("https://static.wikia.nocookie.net/disney/images/c/c5/Cinderella%27s_Ch%C3%A2teau_facade.jpg/revision/latest?cb=20130715230923")
lair.photo.attach(io: file, filename: "cinderella", content_type: "image/jpg")
lair.save

user11 = User.create(email: "mother.gothel@gmail.com", password: "123456", first_name: "Mother", last_name: "Gothel")

lair11 = Lair.new(name: "Rapunzel's Tower", user: user11, price: 400, description: "Rapunzel's Tower is a secluded tower hidden deep within the woods outside of the kingdom of Corona. It is hidden in a large rock pit by a cave. The cave leads out into the forest with its opening hidden by a curtain of plants. At the base of the tower is an alternate entrance Mother Gothel used to go in and out of the tower before she took Rapunzel and in the years that she was too young to pull her up, with a hidden trapdoor leading up into the main rooms of the Tower. Over the years, Rapunzel has painted a series of murals in the tower. The tower has several rooms including bedrooms for both Rapunzel and Mother Gothel, a central room which would be the primary location of Rapunzel's gallery, and a staircase leading to an upstairs room.")
file11 = URI.open("https://static.wikia.nocookie.net/disney/images/9/91/Pascal%27s_Story_concept_13.png/revision/latest/scale-to-width-down/1000?cb=20170831102346")
lair.photo.attach(io: file, filename: "rapunzel_tower", content_type: "image/png")
lair.save

user12 = User.create(email: "queen.grimhilde@gmail.com", password: "123456", first_name: "Queen", last_name: "Grimhilde (Snow White)")

lair12 = Lair.new(name: "The Queen's Castle", user: user12, price: 1000, description: "Though externally the archetype of a fairy tale castle, this castle's walls hide many dark and arcane secrets. The Queen's Chambers are elaborately decorated to suit her vanity. The Queen rarely seems to leave her chambers; she watches events unfold below her from her window. A spiral staircase leads to the dungeon below.  The Magic Mirror is located behind a blue curtain in a special chamber in the castle. Every morning, the Queen approaches the mirror (sometimes closing the curtains after her, implying that the Mirror is a possession she wishes to keep secret) and asks who the fairest one of all is; when the Mirror names Snow White fairest of all, the jealous Queen plots to do away with her stepdaughter.")
file12 = URI.open("https://static.wikia.nocookie.net/disney/images/7/73/Queens_Castle_%28evil%29.png/revision/latest/scale-to-width-down/1000?cb=20180217234441")
lair.photo.attach(io: file, filename: "snow_white", content_type: "image/png")
lair.save

user13 = User.create(email: "doofenschmirtz@gmail.com", password: "123456", first_name: "Dr. Heinz", last_name: "Doofenshmirtz")

lair13 = Lair.new(name: "Doofenshmirtz Evil Incorporated", user: user13, price: 400, description: "Doofenshmirtz Evil Incorporated, also known as Doofenshmirtz Evil Inc. or Doofenshmirtz Corporation, and later known as Professor Time's Building, is a company owned by the evil scientist Dr. Heinz Doofenshmirtz. Most of the daily operations of the company are run by Doofenshmirtz himself. The main purpose of the company is to assist Dr. Doofenshmirtz in his schemes to conquer the Tri-State Area. It is kind of shaped like Ferb's head, as Phineas commented to Ferb as they prepared to crash into it. (Phineas and Ferb the Movie: Across the 2nd Dimension)")
file13 = URI.open("https://static.wikia.nocookie.net/disney/images/7/7a/Doofenshmirtz_Evil_Inc._building.jpg/revision/latest?cb=20110918043121")
lair.photo.attach(io: file, filename: "doofenschmirtz", content_type: "image/jpg")
lair.save

user14 = User.create(email: "scar@gmail.com", password: "123456", first_name: "Scar")

lair14 = Lair.new(name: "Scar's Lair", user: user14, price: 500, description: "Scar's lair is a dark and ominous location that reflects the malevolent nature of its inhabitant. Located in the heart of the Pride Lands, the lair is set within the Elephant Graveyard, a desolate and forbidding landscape. The lair itself is a series of interconnected caves and rock formations, providing a hidden and sinister refuge for Scar and his loyal hyena followers.")
file14 = URI.open("https://static.wikia.nocookie.net/disney-fan-fiction/images/e/e6/Tlkscreenshots_act3_1.jpg/revision/latest?cb=20130325155410")
lair.photo.attach(io: file, filename: "scar_lair", content_type: "image/jpg")
lair.save

user15 = User.create(email: "maleficent@gmail.com", password: "123456", first_name: "Maleficent")

lair15 = Lair.new(name: "Forbidden Mountain", user: user15, price: 1200, description: "The Forbidden Mountain is a dangerous mountain region where Maleficent's Castle is located. It serves as the home to the evil fairy Maleficent.
  ")
file15 = URI.open("https://static.wikia.nocookie.net/disney/images/b/b1/Lv36apDRFA1r6fwalo1_r2_1280.jpg/revision/latest/scale-to-width-down/1000?cb=20141116215420")
lair.photo.attach(io: file, filename: "maleficent", content_type: "image/jpg")
lair.save
