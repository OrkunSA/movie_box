# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# GENRES
horror = Genre.create(name: "Horror")
drama = Genre.create(name: "Drama")
comedy = Genre.create(name: "Comedy")
fantasy = Genre.create(name: "Fantasy")
sci_fi = Genre.create(name: "Science Fiction")
adventure = Genre.create(name: "Adventure")

# MOVIES
psycho = Movie.create( title: 'Psycho',
                      description: "A Phoenix secretary embezzles $40,000 from her employer's client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.",
                      year: 1960,
                      director: "Alfred Hitchcock")
psycho.genres << horror
psycho.save

rosemary = Movie.create( title: "Rosemary's Baby",
                      description: "A young couple trying for a baby move into a fancy apartment surrounded by peculiar neighbors.",
                      year: 1968,
                      director: "Roman Polanski")
rosemary.genres << horror
rosemary.save

shining = Movie.create( title: 'The Shinning',
                      description: "A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.",
                      year: 1980,
                      director: "Stanley Kubrick")
shining.genres << horror
shining.save

alien = Movie.create( title: 'Alien',
                      description: 'After a space merchant vessel receives an unknown transmission as a distress call, one of the crew is attacked by a mysterious life form and they soon realize that its life cycle has merely begun.',
                      year: 1979,
                      director: "Ridley Scott")
alien.genres << horror
alien.save

conjuring = Movie.create( title: 'The Conjuring',
                      description: 'Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse.',
                      year: 1960,
                      director: "Alfred Hitchcock")
conjuring.genres << horror
conjuring.save

dumb = Movie.create( title: 'Dumb and Dumber',
                      description: 'After a woman leaves a briefcase at the airport terminal, a dumb limo driver and his dumber friend set out on a hilarious cross-country road trip to Aspen to return it.',
                      year: 1994,
                      director: "Peter Farrelly, Bobby Farrelly")
dumb.genres << comedy
dumb.save

big = Movie.create( title: 'The Big Lebowski',
                      description: 'Jeff "The Dude" Lebowski, mistaken for a millionaire of the same name, seeks restitution for his ruined rug and enlists his bowling buddies to help get it.',
                      year: 1998,
                      director: "Joel Coen, Ethan Coen")
big.genres << comedy
big.save

hot = Movie.create( title: 'Hot Fuzz',
                      description: 'A skilled London police officer is transferred to a small town with a dark secret.',
                      year: 2007,
                      director: "Edgar Wright")
hot.genres << comedy
hot.save

office = Movie.create( title: 'Office Space',
                      description: 'Three company workers who hate their jobs decide to rebel against their greedy boss.',
                      year: 1999,
                      director: "Mike Judge")
office.genres << comedy
office.save

ghost = Movie.create( title: 'Ghostbusters',
                      description: 'Three former parapsychology professors set up shop as a unique ghost removal service.',
                      year: 1984,
                      director: "Ivan Reitman")
ghost.genres << comedy
ghost.save

shawshank = Movie.create( title: 'The Shawshank Redemption',
                      description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
                      year: 1994,
                      director: "Frank Darabont")
shawshank.genres << drama
shawshank.save


godfather = Movie.create( title: 'The Godfather',
                      description: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
                      year: 1972,
                      director: "Francis Ford Coppola")
godfather.genres << drama
godfather.save

pulp = Movie.create( title: 'Pulp Fiction',
                      description: 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',
                      year: 1994,
                      director: "Quentin Tarantino")
pulp.genres << drama
pulp.save

angry = Movie.create( title: '12 Angry Men',
                      description: 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.',
                      year: 1957,
                      director: "Sidney Lumet")
angry.genres << drama
angry.save

fight = Movie.create( title: 'Fight Club',
                      description: 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.',
                      year: 1999,
                      director: "David Fincher")
fight.genres << drama
fight.save

lord = Movie.create( title: 'The Lord of the Rings: The Fellowship of the Ring',
                      description: 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.',
                      year: 2001,
                      director: "Peter Jackson")
lord.genres << fantasy
lord.save

labyrinth = Movie.create( title: 'Labyrinth',
                      description: 'Sixteen-year-old Sarah is given thirteen hours to solve a labyrinth and rescue her baby brother Toby when her wish for him to be taken away is granted by the Goblin King Jareth.',
                      year: 1986,
                      director: "Jim Henson")
labyrinth.genres << fantasy
labyrinth.save

hobbit = Movie.create( title: 'The Hobbit: An Unexpected Journey',
                      description: 'A reluctant Hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home, and the gold within it from the dragon Smaug.',
                      year: 2012,
                      director: "Peter Jackson")
hobbit.genres << fantasy
hobbit.save

stardust = Movie.create( title: 'Stardust',
                      description: "In a countryside town bordering on a magical land, a young man makes a promise to his beloved that he'll retrieve a fallen star by venturing into the magical realm.",
                      year: 2007,
                      director: "Matthew Vaughn")
stardust.genres << fantasy
stardust.save

constantine = Movie.create( title: 'Constantine ',
                      description: "Supernatural exorcist and demonologist John Constantine helps a policewoman prove her sister's death was not a suicide, but something more.",
                      year: 2005,
                      director: "Francis Lawrence")
constantine.genres << fantasy
constantine.save

avatar = Movie.create( title: 'Avatar ',
                      description: "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
                      year: 2009,
                      director: "James Cameron")
avatar.genres << sci_fi
avatar.save

matrix = Movie.create( title: 'The Matrix',
                      description: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
                      year: 1999,
                      director: "Lana Wachowski, Lilly Wachowski")
matrix.genres << sci_fi
matrix.save

inception = Movie.create( title: 'The Inception',
                      description: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.",
                      year: 2010,
                      director: "Christopher Nolan")
inception.genres << sci_fi
inception.save

back = Movie.create( title: 'Back to the Future',
                      description: "Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.",
                      year: 1985,
                      director: "Robert Zemeckis")
back.genres << sci_fi
back.save

monkey = Movie.create( title: '12 Monkeys',
                      description: "In a future world devastated by disease, a convict is sent back in time to gather information about the man-made virus that wiped out most of the human population on the planet.",
                      year: 1995,
                      director: "Terry Gilliam")
monkey.genres << sci_fi
monkey.save

jurassic = Movie.create( title: 'Jurassic Park',
                      description: "A pragmatic paleontologist visiting an almost complete theme park is tasked with protecting a couple of kids after a power failure causes the park's cloned dinosaurs to run loose.",
                      year: 1993,
                      director: "Steven Spielberg")
jurassic.genres << adventure
jurassic.save

king = Movie.create( title: 'King Kong',
                      description: "A greedy film producer assembles a team of moviemakers and sets out for the infamous Skull Island, where they find more than just cannibalistic natives.",
                      year: 2005,
                      director: "Peter Jackson")
king.genres << adventure
king.save

mummy = Movie.create( title: 'The Mummy',
                      description: "At an archaeological dig in the ancient city of Hamunaptra, an American serving in the French Foreign Legion accidentally awakens a mummy who begins to wreck havoc as he searches for the reincarnation of his long-lost love.",
                      year: 1999,
                      director: "Stephen Sommers")
mummy.genres << adventure
mummy.save

stalker = Movie.create( title: 'Stalker',
                      description: "A guide leads two men through an area known as the Zone to find a room that grants wishes.",
                      year: 1979,
                      director: "Andrei Tarkovsky")
stalker.genres << adventure
stalker.save

sahara = Movie.create( title: 'Sahara',
                      description: "Master explorer Dirk Pitt goes on the adventure of a lifetime of seeking out a lost Civil War battleship known as the 'Ship of Death' in the deserts of West Africa while helping a WHO doctor being hounded by a ruthless dictator.",
                      year: 2005,
                      director: "Breck Eisner")
sahara.genres << adventure
sahara.save





