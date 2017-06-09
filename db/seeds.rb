# Chatroom.create!([
#   {game_id: 1},
#   {game_id: 2},
#   {game_id: 3},
#   {game_id: 4},
#   {game_id: 5},
#   {game_id: 6},
#   {game_id: 7},
#   {game_id: 8},
#   {game_id: 9},
#   {game_id: 10},
#   {game_id: 11},
#   {game_id: 12},
#   {game_id: 13},
#   {game_id: 14},
#   {game_id: 15},
#   {game_id: 16},
#   {game_id: 17}
# ])
# Competitor.create!([
#   {username: "michaelyatco", email: "Mike@Yatco.com", password_digest: "$2a$10$2d2e..XPlKrGb2a0DqmEe.ZKRMfwYFC/XEfIS60N6u7UsdVNYtsTa"},
#   {username: "dani", email: "Danielle@Schwarz.com", password_digest: "$2a$10$CcJqGm1rivTDVS/bY.pOGeJHXw1v3nJwx5s7y0Z4Mi.qDxsX/32.K"},
#   {username: "sami", email: "sami@gmail.com", password_digest: "$2a$10$brpzxsZbk6Rj6KDUP9KHFu49/F4poSD.VaZ7QwnwiTY2CBuYkrSx2"},
#   {username: "DaffyDuck", email: "Daffy@Duck.com", password_digest: "$2a$10$yMH.m.5j8RNVGx6k/kYnhOIkENUZzsLyHnLuzRUA5jvuSntVmUd32"}
# ])
# Game.create!([
#   {competitor_id: 1, challenger_id: nil, game_id: 1, wager_id: 1, round_id: 1, competitor_score: 2, challenger_score: nil},
#   {competitor_id: 1, challenger_id: 3, game_id: 1, wager_id: nil, round_id: 1, competitor_score: nil, challenger_score: nil},
#   {competitor_id: 1, challenger_id: 3, game_id: 1, wager_id: nil, round_id: 1, competitor_score: nil, challenger_score: nil},
#   {competitor_id: 1, challenger_id: 3, game_id: 1, wager_id: nil, round_id: 1, competitor_score: nil, challenger_score: nil},
#   {competitor_id: 1, challenger_id: 3, game_id: 1, wager_id: 8, round_id: 1, competitor_score: 3, challenger_score: 3},
#   {competitor_id: 1, challenger_id: 3, game_id: 1, wager_id: 9, round_id: 1, competitor_score: 1, challenger_score: 2},
#   {competitor_id: 3, challenger_id: 1, game_id: 1, wager_id: 1, round_id: 1, competitor_score: 0, challenger_score: nil},
#   {competitor_id: 4, challenger_id: 1, game_id: 1, wager_id: 10, round_id: 1, competitor_score: 0, challenger_score: nil},
#   {competitor_id: 4, challenger_id: 1, game_id: 1, wager_id: 11, round_id: 1, competitor_score: 0, challenger_score: 0},
#   {competitor_id: 4, challenger_id: 1, game_id: 1, wager_id: 12, round_id: 1, competitor_score: 0, challenger_score: 3},
#   {competitor_id: 4, challenger_id: 1, game_id: 1, wager_id: 13, round_id: 1, competitor_score: 2, challenger_score: 3},
#   {competitor_id: 4, challenger_id: 1, game_id: 1, wager_id: 14, round_id: 1, competitor_score: 3, challenger_score: 0},
#   {competitor_id: 4, challenger_id: 3, game_id: 1, wager_id: 15, round_id: 1, competitor_score: 3, challenger_score: 2},
#   {competitor_id: 4, challenger_id: 1, game_id: 1, wager_id: 16, round_id: 1, competitor_score: 3, challenger_score: nil},
#   {competitor_id: 4, challenger_id: 1, game_id: 1, wager_id: 17, round_id: 1, competitor_score: 1, challenger_score: 0},
#   {competitor_id: 4, challenger_id: 1, game_id: 1, wager_id: 18, round_id: 1, competitor_score: 3, challenger_score: 3},
#   {competitor_id: 1, challenger_id: 4, game_id: 1, wager_id: 19, round_id: 1, competitor_score: 2, challenger_score: nil}
# ])
# Image.create!([
#   {photo: "50fa45a43fb4f569451f1e3206ca9553.jpg", profile_id: 4},
#   {photo: "15823470_10100262692524031_3679790767507289665_n.jpg", profile_id: 1},
#   {photo: nil, profile_id: 1}
# ])
# Message.create!([
#   {body: "fds,jfsdkfjsdhds", competitor_id: 1, chatroom_id: 1},
#   {body: "jkhkjh", competitor_id: 1, chatroom_id: 1},
#   {body: "ffdssdfs", competitor_id: 1, chatroom_id: 1},
#   {body: "ppppp", competitor_id: 1, chatroom_id: 1},
#   {body: "popo", competitor_id: 1, chatroom_id: 1},
#   {body: "kjhkjh", competitor_id: 1, chatroom_id: 1},
#   {body: "kjhkjh", competitor_id: 1, chatroom_id: 1},
#   {body: "asaS", competitor_id: 1, chatroom_id: 1},
#   {body: "omg yaaaas", competitor_id: 3, chatroom_id: 1},
#   {body: "lol", competitor_id: 3, chatroom_id: 1},
#   {body: "hey wanna bet a beer?", competitor_id: 3, chatroom_id: 1},
#   {body: "Sure!", competitor_id: 1, chatroom_id: 1},
#   {body: "hello?", competitor_id: 1, chatroom_id: 2},
#   {body: "The game has started! Go to /trivias/1", competitor_id: 1, chatroom_id: 1},
#   {body: "The game has started! Go to //trivias/1", competitor_id: 1, chatroom_id: 1},
#   {body: "Hi Mike!", competitor_id: 3, chatroom_id: 6},
#   {body: "Samiii", competitor_id: 1, chatroom_id: 6},
#   {body: "Mike...?", competitor_id: 3, chatroom_id: 6},
#   {body: "Sup?!", competitor_id: 1, chatroom_id: 6},
#   {body: "Oh hai", competitor_id: 3, chatroom_id: 6},
#   {body: "weird that my first message didn't show up", competitor_id: 3, chatroom_id: 6},
#   {body: "Cocoa", competitor_id: 1, chatroom_id: 6},
#   {body: "What do you wanna bet?", competitor_id: 3, chatroom_id: 6},
#   {body: "Mmm", competitor_id: 3, chatroom_id: 6},
#   {body: "sounds good", competitor_id: 3, chatroom_id: 6},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/6'>here</a>", competitor_id: 1, chatroom_id: 6},
#   {body: "Hello Mike!", competitor_id: 3, chatroom_id: 7},
#   {body: "You again", competitor_id: 1, chatroom_id: 7},
#   {body: "Dun dun dun", competitor_id: 3, chatroom_id: 7},
#   {body: "More cocoa?", competitor_id: 3, chatroom_id: 7},
#   {body: "Sí", competitor_id: 1, chatroom_id: 7},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/7'>here</a>", competitor_id: 1, chatroom_id: 7},
#   {body: "fgdjfkg", competitor_id: 1, chatroom_id: 7},
#   {body: "yo", competitor_id: 3, chatroom_id: 7},
#   {body: "Meet at the bar?", competitor_id: 1, chatroom_id: 7},
#   {body: "Yeah for sure", competitor_id: 3, chatroom_id: 7},
#   {body: "", competitor_id: 3, chatroom_id: 7},
#   {body: "On the right side", competitor_id: 1, chatroom_id: 7},
#   {body: "hello", competitor_id: 4, chatroom_id: 2},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/8'>here</a>", competitor_id: 4, chatroom_id: 8},
#   {body: "dfsd", competitor_id: 4, chatroom_id: 8},
#   {body: "hi", competitor_id: 4, chatroom_id: 9},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/9'>here</a>", competitor_id: 4, chatroom_id: 9},
#   {body: "Let's do this!", competitor_id: 4, chatroom_id: 10},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/10'>here</a>", competitor_id: 4, chatroom_id: 10},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/10'>here</a>", competitor_id: 4, chatroom_id: 10},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/11'>here</a>", competitor_id: 4, chatroom_id: 11},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/11'>here</a>", competitor_id: 4, chatroom_id: 11},
#   {body: "Hey?>", competitor_id: 4, chatroom_id: 12},
#   {body: "Wager a beer?", competitor_id: 4, chatroom_id: 12},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/12'>here</a>", competitor_id: 4, chatroom_id: 12},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/13'>here</a>", competitor_id: 4, chatroom_id: 13},
#   {body: "Let's do this", competitor_id: 4, chatroom_id: 14},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/14'>here</a>", competitor_id: 4, chatroom_id: 14},
#   {body: "Hello there!", competitor_id: 4, chatroom_id: 15},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/15'>here</a>", competitor_id: 4, chatroom_id: 15},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/16'>here</a>", competitor_id: 4, chatroom_id: 16},
#   {body: "Hey Daffy", competitor_id: 1, chatroom_id: 17},
#   {body: "The game has started! Go to <a href='localhost:3000/trivias/17'>here</a>", competitor_id: 1, chatroom_id: 17}
# ])
# Profile.create!([
#   {competitor_id: "3", image: nil, birthdate: "2017-03-01", gender: "F", orientation: "", bio: "", preferred_opponent: "", preferred_age_range: "", distance_limits: "", default_games: "Trivias", rating: 5, stats: nil},
#   {competitor_id: "4", image: nil, birthdate: "1987-01-02", gender: "Male", orientation: "Duck", bio: "Duck", preferred_opponent: "Rabbits", preferred_age_range: "Any", distance_limits: "1-2 miles", default_games: "Trivias", rating: 5, stats: nil},
#   {competitor_id: "1", image: nil, birthdate: "1991-12-09", gender: "Male", orientation: "Straight", bio: "Full-stack web developer", preferred_opponent: "Female", preferred_age_range: "25-35", distance_limits: "1/4 - 1/2 mile", default_games: "Trivias", rating: 5, stats: nil}
# ])
# Session.create!([
#   {latitude: 40.7091881, longitude: -74.0122789, competitor_id: 1},
#   {latitude: nil, longitude: nil, competitor_id: 4},
#   {latitude: -73.9841543, longitude: -73.9841543, competitor_id: 4},
#   {latitude: 40.7207183, longitude: -73.9841945, competitor_id: 4},
#   {latitude: nil, longitude: nil, competitor_id: 4},
#   {latitude: 40.7207055, longitude: -73.9842299, competitor_id: 1},
#   {latitude: 40.720719, longitude: -73.9841936, competitor_id: 4},
#   {latitude: 40.7207091, longitude: -73.9841922, competitor_id: 4},
#   {latitude: 40.720713, longitude: -73.9842168, competitor_id: 4},
#   {latitude: 40.7207066, longitude: -73.9841758, competitor_id: 4},
#   {latitude: 40.7207075, longitude: -73.9842001, competitor_id: 4},
#   {latitude: 40.7207128, longitude: -73.9841923, competitor_id: 4},
#   {latitude: 40.7207126, longitude: -73.9842141, competitor_id: 4},
#   {latitude: 40.7207278, longitude: -73.9842205, competitor_id: 4},
#   {latitude: 40.7206965, longitude: -73.9841851, competitor_id: 4},
#   {latitude: 40.7207159, longitude: -73.9841994, competitor_id: 4},
#   {latitude: 40.7207245, longitude: -73.9841988, competitor_id: 4},
#   {latitude: 40.7207085, longitude: -73.9841925, competitor_id: 4},
#   {latitude: 40.7207191, longitude: -73.9842158, competitor_id: 4},
#   {latitude: 40.720723, longitude: -73.9841931, competitor_id: 4},
#   {latitude: 40.7207205, longitude: -73.9842089, competitor_id: 4},
#   {latitude: 40.7207346, longitude: -73.9841908, competitor_id: 4},
#   {latitude: 40.7189455, longitude: -73.9847209, competitor_id: 4},
#   {latitude: 40.718984, longitude: -73.9847213, competitor_id: 4},
#   {latitude: 40.7207316, longitude: -73.9841823, competitor_id: 4},
#   {latitude: nil, longitude: nil, competitor_id: 1},
#   {latitude: nil, longitude: nil, competitor_id: 1}
# ])
# TriviaAnswer.create!([
#   {answer: "Ireland vs. Bulgaria", correct: true, trivia_question_id: 1},
#   {answer: "England vs. Romania", correct: false, trivia_question_id: 1},
#   {answer: "France vs. Germany", correct: false, trivia_question_id: 1},
#   {answer: "Gryffindor vs. Slytherin", correct: false, trivia_question_id: 1},
#   {answer: "Ginny Weasley", correct: true, trivia_question_id: 2},
#   {answer: "Voldemort", correct: false, trivia_question_id: 2},
#   {answer: "Peeves", correct: false, trivia_question_id: 2},
#   {answer: "Draco Malfoy", correct: false, trivia_question_id: 2},
#   {answer: "Lavender Brown", correct: true, trivia_question_id: 3},
#   {answer: "Hermoine Granger", correct: false, trivia_question_id: 3},
#   {answer: "Draco Malfoy", correct: false, trivia_question_id: 3},
#   {answer: "Vincent Crabbe", correct: false, trivia_question_id: 3},
#   {answer: "She didn't play", correct: true, trivia_question_id: 4},
#   {answer: "Backup Seeker", correct: false, trivia_question_id: 4},
#   {answer: "Chaser", correct: false, trivia_question_id: 4},
#   {answer: "Beater", correct: false, trivia_question_id: 4}
# ])
# TriviaQuestion.create!([
#   {question: "What match did Harry Potter see at the Quidditch World Cup?", category: "Harry Potter"},
#   {question: "Who PHYSICALLY opened the Chamber of Secrets?", category: "Harry Potter"},
#   {question: "Who does Ron first snog?", category: "Harry Potter"},
#   {question: "What is Hermoine's position in quidditch?", category: "Harry Potter"}
# ])
# Wager.create!([
#   {bet: "Beer", fulfilled: nil, winner_id: nil, loser_id: nil},
#   {bet: "Beer", fulfilled: nil, winner_id: nil, loser_id: nil},
#   {bet: "Beer", fulfilled: nil, winner_id: nil, loser_id: nil},
#   {bet: "Cocoa", fulfilled: nil, winner_id: nil, loser_id: nil},
#   {bet: "Cocoa", fulfilled: nil, winner_id: nil, loser_id: nil},
#   {bet: "Cocoa", fulfilled: nil, winner_id: nil, loser_id: nil},
#   {bet: "hi", fulfilled: nil, winner_id: nil, loser_id: nil},
#   {bet: "Cocoa", fulfilled: nil, winner_id: 1, loser_id: 3},
#   {bet: "Cocoa Suprema", fulfilled: nil, winner_id: 3, loser_id: 1},
#   {bet: "water", fulfilled: nil, winner_id: nil, loser_id: nil},
#   {bet: "beer", fulfilled: nil, winner_id: 4, loser_id: 1},
#   {bet: "Beer", fulfilled: nil, winner_id: 1, loser_id: 4},
#   {bet: "berer", fulfilled: nil, winner_id: 1, loser_id: 4},
#   {bet: "Beer", fulfilled: nil, winner_id: 4, loser_id: 1},
#   {bet: "hot cocoa", fulfilled: nil, winner_id: 4, loser_id: 3},
#   {bet: "Sticky's", fulfilled: nil, winner_id: nil, loser_id: nil},
#   {bet: "Poke Salad", fulfilled: nil, winner_id: 4, loser_id: 1},
#   {bet: "A rabbi", fulfilled: nil, winner_id: 4, loser_id: 1},
#   {bet: "Latte", fulfilled: nil, winner_id: nil, loser_id: nil}
# ])

TriviaQuestion.create([
  # {question: "What match did Harry Potter see at the Quidditch World Cup?", category: "Harry Potter"},
  # {question: "Who PHYSICALLY opened the Chamber of Secrets?", category: "Harry Potter"},
  # {question: "Who does Ron first snog?", category: "Harry Potter"},
  # {question: "What is Hermoine's position in quidditch?", category: "Harry Potter"},
  # {question: "Who crafted Harry Potter's wand?", category: "Harry Potter"},
  # {question: "What is the railway platform?", category: "Harry Potter"},
  # {question: "What is Hermoine's patronus?", category: "Harry Potter"},
  # {question: "What was the name of Hermoine's movement for house elves?", category: "Harry Potter"},
  # {question: "What is the name of the wizarding school in North America?", category: "Harry Potter"},
  # {question: "What is the emblematic animal of House Hufflepuff?", category: "Harry Potter"},
  # {question: "What victory is celebrated on Cinco de Mayo?", category: "History"},
  # {question: "What was the last state admitted into the Union?", category: "History"},
  # {question: "Which state does NOT touch a foreign country?", category: "History"},
  # {question: "When was the Philippines acquired by the US?", category: "History"},
  # {question: "Which president grew up with asthma?", category: "History"},
  # {question: "'...a date which will live in infamy' refers to what event in US history?", category: "History"},
  # {question: "Which state is NOT one of the 13 original colonies?", category: "History"},
  # {question: "What is the newest country on the planet?", category: "History"},
  # {question: "Which nation has not won a World Cup?", category: "History"},
  # {question: "Which country is known as 'The land of the rising sun?'", category: "History"},
  # {question: "Who was the unfortunate false Miss Universe read out loud by Steve Harvey?", category: "Pop Culture"},
  # {question: "30 Rock takes place in which city?", category: "Pop Culture"},
  # {question: "What event is known affectionately as 'The Gay SuperBowl?'", category: "Pop Culture"},
  # {question: "Who played Princess Leia in Star Wars?", category: "Pop Culture"},
  # {question: "Who was the voice of Darth Vader? in Star Wars?", category: "Pop Culture"},
  # {question: "Who did the Chicago Cubs defeat to break their title drought?", category: "Pop Culture"},
  # {question: "Kanye West interrupted which artist at the Grammys?", category: "Pop Culture"},
  # {question: "Which Baywatch star is a megastar-singer in Germany?", category: "Pop Culture"},
  # {question: "Who is a member of the Frat Pack?", category: "Pop Culture"},
  # {question: "Stephen Colbert inherited The Late Show from whom?", category: "Pop Culture"},

  # {question: "Where did Harry Potter originally sleep with the Dursley's?", category: "Harry Potter"},
  # {question: "Who does Harry Potter first meet to take him to Hogwarts?", category: "Harry Potter"},
  # {question: "Who died during Harry Potter's final escape from the Dursley household?", category: "Harry Potter"},
  # {question: "What was the first Horcrux destroyed?", category: "Harry Potter"},
  # {question: "'I open at the close' refers to what?", category: "Harry Potter"},
  # {question: "Who betrayed James and Lily Potter?", category: "Harry Potter"},
  # {question: "Who is a werewolf?", category: "Harry Potter"},
  # {question: "Who killed Albus Dulmbledore?", category: "Harry Potter"},
  # {question: "What is the name of the resistance group at Hogwarts during the reign of Dolores Umbridge?", category: "Harry Potter"},
  # {question: "What is the Killing Spell?", category: "Harry Potter"},
  # {question: "Whose assassination is credited with triggering WWI?", category: "History"},
  # {question: "What is considered the highest caste in the Hindu caste system?", category: "History"},
  # {question: "What nation has been called the 'Graveyard of Empires?'", category: "History"},
  # {question: "Who was credited as the first to circumnavigate the globe?", category: "History"},
  # {question: "Which was NOT a beach stormed on D-Day?", category: "History"},
  # {question: "The Hanging Gardens was an ancient world wonder of which city?", category: "History"},
  # {question: "Who had the shortest U.S. presidency?", category: "History"},
  # {question: "What is the top religion in Japan?", category: "History"},
  # {question: "Which country abolished apartheid?", category: "History"},
  # {question: "Who was the second man to walk on the moon?", category: "History"},
    {question: "Which actor debuted as James Bond in Casino Royale?", category: "Pop Culture"},
  {question: "Where will the 2020 Olympics be held?", category: "Pop Culture"},
  {question: "Where will the 2018 World Cup be held?'", category: "Pop Culture"},
  {question: "What is the name of the continent where the Iron Throne resides on Game of Thrones?", category: "Pop Culture"},
  {question: "Where is the original Starbucks?", category: "Pop Culture"},
  {question: "What is the longest running show?", category: "Pop Culture"},
  {question: "Which Joss Whedon series only lasted one season?", category: "Pop Culture"},
  {question: "Who had a revealing wardrobe malfunction at the Super Bowl?", category: "Pop Culture"},
  {question: "Where was Will Smith raised in the Fresh Prince of Bel-Air?", category: "Pop Culture"},
  {question: "What is the longest running Broadway play?", category: "Pop Culture"},
]
)

TriviaAnswer.create([
# {trivia_question_id: 1, answer: "Ireland vs. Bulgaria", correct: true},
# {trivia_question_id: 1, answer: "England vs. Romania", correct: false},
# {trivia_question_id: 1, answer: "France vs. Germany", correct: false},
# {trivia_question_id: 1, answer: "Gryffindor vs. Slytherin", correct: false},
# {trivia_question_id: 2, answer: "Ginny Weasley", correct: true},
# {trivia_question_id: 2, answer: "Voldemort", correct: false},
# {trivia_question_id: 2, answer: "Peeves", correct: false},
# {trivia_question_id: 2, answer: "Draco Malfoy", correct: false},
# {trivia_question_id: 3, answer: "Lavender Brown", correct: true},
# {trivia_question_id: 3, answer: "Hermoine Granger", correct: false},
# {trivia_question_id: 3, answer: "Draco Malfoy", correct: false},
# {trivia_question_id: 3, answer: "Vincent Crabbe", correct: false},
# {trivia_question_id: 4, answer: "She didn't play", correct: true},
# {trivia_question_id: 4, answer: "Backup Seeker", correct: false},
# {trivia_question_id: 4, answer: "Chaser", correct: false},
# {trivia_question_id: 4, answer: "Beater", correct: false},
# {trivia_question_id: 5, answer: "Garrick Ollivander", correct: true},
# {trivia_question_id: 5, answer: "Alexandra Walker", correct: false},
# {trivia_question_id: 5, answer: "Florean Fortescue", correct: false},
# {trivia_question_id: 5, answer: "Gregorivich Zauberstäbe", correct: false},
# {trivia_question_id: 6, answer: "9 3/4", correct: true},
# {trivia_question_id: 6, answer: "8 2/3", correct: false},
# {trivia_question_id: 6, answer: "7 5/6", correct: false},
# {trivia_question_id: 6, answer: "4 1/2", correct: false},
# {trivia_question_id: 7, answer: "An otter", correct: true},
# {trivia_question_id: 7, answer: "A stag", correct: false},
# {trivia_question_id: 7, answer: "A phoenix", correct: false},
# {trivia_question_id: 7, answer: "A house elf", correct: false},
# {trivia_question_id: 8, answer: "S.P.E.W.", correct: true},
# {trivia_question_id: 8, answer: "D.A.", correct: false},
# {trivia_question_id: 8, answer: "M.W.P.P.", correct: false},
# {trivia_question_id: 8, answer: "T.W.T.", correct: false},
# {trivia_question_id: 9, answer: "Ilvermorny", correct: true},
# {trivia_question_id: 9, answer: "Durmstrang", correct: false},
# {trivia_question_id: 9, answer: "Beauxbaton", correct: false},
# {trivia_question_id: 9, answer: "Castelobruxo", correct: false},
# {trivia_question_id: 10, answer: "Badger", correct: true},
# {trivia_question_id: 10, answer: "Ferret", correct: false},
# {trivia_question_id: 10, answer: "Porcupine", correct: false},
 # {trivia_question_id: 10, answer: "Mongoose", correct: false},
 # {trivia_question_id: 11, answer: "Mexicans over the French", correct: true},
 # {trivia_question_id: 11, answer: "Mexicans over the Spanish", correct: false},
 # {trivia_question_id: 11, answer: "Americans over the Mexicans", correct: false},
 # {trivia_question_id: 11, answer: "Americans over the Spanish", correct: false},
 # {trivia_question_id: 12, answer: "Hawaii", correct: true},
 # {trivia_question_id: 12, answer: "Alaska", correct: false},
 # {trivia_question_id: 12, answer: "Arizona", correct: false},
 # {trivia_question_id: 12, answer: "New Mexico", correct: false},
 # {trivia_question_id: 13, answer: "Louisiana", correct: true},
 # {trivia_question_id: 13, answer: "Texas", correct: false},
 # {trivia_question_id: 13, answer: "Montana", correct: false},
 # {trivia_question_id: 13, answer: "North Dakota", correct: false},
 # {trivia_question_id: 14, answer: "Spanish-American War", correct: true},
 # {trivia_question_id: 14, answer: "World War I", correct: false},
 # {trivia_question_id: 14, answer: "Korean War", correct: false},
 # {trivia_question_id: 14, answer: "Never", correct: false},
   # {trivia_question_id: 15, answer: "Theodore Roosevelt", correct: true},
   # {trivia_question_id: 15, answer: "George Washinton", correct: false},
   # {trivia_question_id: 15, answer: "George W. Bush", correct: false},
   # {trivia_question_id: 15, answer: "Abraham Lincoln", correct: false},
   # {trivia_question_id: 16, answer: "Pearl Harbor", correct: true},
   # {trivia_question_id: 16, answer: "D-Day", correct: false},
   # {trivia_question_id: 16, answer: "Outbreak of Civil War", correct: false},
   # {trivia_question_id: 16, answer: "Nixon's resignation", correct: false},
   # {trivia_question_id: 17, answer: "Florida", correct: true},
   # {trivia_question_id: 17, answer: "Georgia", correct: false},
   # {trivia_question_id: 17, answer: "New Hampshire", correct: false},
   # {trivia_question_id: 17, answer: "Delaware", correct: false},
   # {trivia_question_id: 18, answer: "South Sudan", correct: true},
   # {trivia_question_id: 18, answer: "Kosovo", correct: false},
   # {trivia_question_id: 18, answer: "Montenegro & Serbia", correct: false},
   # {trivia_question_id: 18, answer: "East Timor", correct: false},
   # {trivia_question_id: 19, answer: "The Netherlands", correct: true},
   # {trivia_question_id: 19, answer: "Uruguay", correct: false},
   # {trivia_question_id: 19, answer: "France", correct: false},
   # {trivia_question_id: 19, answer: "England", correct: false},
   # {trivia_question_id: 20, answer: "Japan", correct: true},
   # {trivia_question_id: 20, answer: "China", correct: false},
   # {trivia_question_id: 20, answer: "South Africa", correct: false},
   # {trivia_question_id: 20, answer: "Great Britain", correct: false},
  # {trivia_question_id: 21, answer: "Cleveland Indians", correct: true},
  # {trivia_question_id: 21, answer: "New York Mets", correct: false},
  # {trivia_question_id: 21, answer: "Los Angeles Dodgers", correct: false},
  # {trivia_question_id: 21, answer: "Boston Red Sox", correct: false},
  # {trivia_question_id: 22, answer: "Taylor Swift", correct: true},
  # {trivia_question_id: 22, answer: "Beyoncé", correct: false},
  # {trivia_question_id: 22, answer: "Madonna", correct: false},
  # {trivia_question_id: 22, answer: "Miley Cyrus", correct: false},
  # {trivia_question_id: 23, answer: "David Hasselhoff", correct: true},
  # {trivia_question_id: 23, answer: "Dwayne Johnson", correct: false},
  # {trivia_question_id: 23, answer: "Zac Efron", correct: false},
  # {trivia_question_id: 23, answer: "The Tonys", correct: false},
  # {trivia_question_id: 24, answer: "Carrie Fisher", correct: true},
  # {trivia_question_id: 24, answer: "Betty White", correct: false},
  # {trivia_question_id: 24, answer: "Tina Fey", correct: false},
  # {trivia_question_id: 24, answer: "Natalie Portman", correct: false},
  # {trivia_question_id: 25, answer: "James Earl Jones", correct: true},
  # {trivia_question_id: 25, answer: "Alec Baldwin", correct: false},
  # {trivia_question_id: 25, answer: "Christopher Lee", correct: false},
  # {trivia_question_id: 25, answer: "Patrick Stewart", correct: false},
  # {trivia_question_id: 26, answer: "Cleveland Indians", correct: true},
  # {trivia_question_id: 26, answer: "New York Mets", correct: false},
  # {trivia_question_id: 26, answer: "Los Angeles Dodgers", correct: false},
  # {trivia_question_id: 26, answer: "Boston Red Sox", correct: false},
  # {trivia_question_id: 27, answer: "Taylor Swift", correct: true},
  # {trivia_question_id: 27, answer: "Beyoncé", correct: false},
  # {trivia_question_id: 27, answer: "Miley Cyrus", correct: false},
  # {trivia_question_id: 27, answer: "Madonna", correct: false},
  # {trivia_question_id: 28, answer: "David Hasselhoff", correct: true},
  # {trivia_question_id: 28, answer: "Dwayne Johnson", correct: false},
  # {trivia_question_id: 28, answer: "Zac Efron", correct: false},
  # {trivia_question_id: 28, answer: "Pamela Anderson", correct: false},
  # {trivia_question_id: 29, answer: "Vince Vaughn", correct: true},
  # {trivia_question_id: 29, answer: "James Dean", correct: false},
  # {trivia_question_id: 29, answer: "Justin Bieber", correct: false},
  # {trivia_question_id: 29, answer: "Jameel White", correct: false},
  # {trivia_question_id: 30, answer: "David Letterman", correct: true},
  # {trivia_question_id: 30, answer: "Jay Leno", correct: false},
  # {trivia_question_id: 30, answer: "Conan O'Brien", correct: false},
  # {trivia_question_id: 30, answer: "Arsenio Hall", correct: false},
  # {trivia_question_id: 31, answer: "Under the staircase", correct: true},
  # {trivia_question_id: 31, answer: "Outside in the shed", correct: false},
  # {trivia_question_id: 31, answer: "The guestroom", correct: false},
  # {trivia_question_id: 31, answer: "Bunked with Dudley", correct: false},
  # {trivia_question_id: 32, answer: "Hagrid", correct: true},
  # {trivia_question_id: 32, answer: "Prof. McGonagall", correct: false},
  # {trivia_question_id: 32, answer: "Dumbledore", correct: false},
  # {trivia_question_id: 32, answer: "Prof. Snape", correct: false},
  # {trivia_question_id: 33, answer: "Mad Eye Moody", correct: true},
  # {trivia_question_id: 33, answer: "Tonks", correct: false},
  # {trivia_question_id: 33, answer: "Fred Weasley", correct: false},
  # {trivia_question_id: 33, answer: "Remus Lupin", correct: false},
  # {trivia_question_id: 34, answer: "The diary", correct: true},
  # {trivia_question_id: 34, answer: "The snake", correct: false},
  # {trivia_question_id: 34, answer: "The ring", correct: false},
  # {trivia_question_id: 34, answer: "The locket", correct: false},
  # {trivia_question_id: 35, answer: "The Resurrection Stone", correct: true},
  # {trivia_question_id: 35, answer: "The Horcrux", correct: false},
  # {trivia_question_id: 35, answer: "The Elder Wand", correct: false},
  # {trivia_question_id: 35, answer: "The Invisibility Cloak", correct: false},
  # {trivia_question_id: 36, answer: "Peter Pettigrew", correct: true},
  # {trivia_question_id: 36, answer: "Sirius Black", correct: false},
  # {trivia_question_id: 36, answer: "Remus Lupin", correct: false},
  # {trivia_question_id: 36, answer: "Severus Snape", correct: false},
  # {trivia_question_id: 37, answer: "Remus Lupin", correct: true},
  # {trivia_question_id: 37, answer: "Severus Snape", correct: false},
  # {trivia_question_id: 37, answer: "Hagrid", correct: false},
  # {trivia_question_id: 37, answer: "Sirius Black", correct: false},
  # {trivia_question_id: 38, answer: "Severus Black", correct: true},
  # {trivia_question_id: 38, answer: "Draco Malfoy", correct: false},
  # {trivia_question_id: 38, answer: "Voldemort", correct: false},
  # {trivia_question_id: 38, answer: "Bellatrix Black", correct: false},
  # {trivia_question_id: 39, answer: "D.A.", correct: true},
  # {trivia_question_id: 39, answer: "S.P.E.W.", correct: false},
  # {trivia_question_id: 39, answer: "T.W.T.", correct: false},
  # {trivia_question_id: 39, answer: "D.E.", correct: false},
  # {trivia_question_id: 40, answer: "Avada Kedavra", correct: true},
  # {trivia_question_id: 40, answer: "Imperio", correct: false},
  # {trivia_question_id: 40, answer: "Crucio", correct: false},
  # {trivia_question_id: 40, answer: "Engorgio", correct: false},
  #   {trivia_question_id: 41, answer: "Franz Ferdinand", correct: true},
  # {trivia_question_id: 41, answer: "Paul Von Hindenburg", correct: false},
  # {trivia_question_id: 41, answer: "Kaiser Wilhelm II", correct: false},
  # {trivia_question_id: 41, answer: "Erich Ludendorff", correct: false},
  # {trivia_question_id: 42, answer: "Brahmin", correct: true},
  # {trivia_question_id: 42, answer: "Kshatriya", correct: false},
  # {trivia_question_id: 42, answer: "Vaisya", correct: false},
  # {trivia_question_id: 42, answer: "Sudra", correct: false},
  # {trivia_question_id: 43, answer: "Afghanistan", correct: true},
  # {trivia_question_id: 43, answer: "China", correct: false},
  # {trivia_question_id: 43, answer: "India", correct: false},
  # {trivia_question_id: 43, answer: "Turkey", correct: false},
  # {trivia_question_id: 44, answer: "Ferdinand Magellan", correct: true},
  # {trivia_question_id: 44, answer: "Marco Polo", correct: false},
  # {trivia_question_id: 44, answer: "Christopher Columbus", correct: false},
  # {trivia_question_id: 44, answer: "Juan Sebastian Elcano", correct: false},
  # {trivia_question_id: 45, answer: "Reno", correct: true},
  # {trivia_question_id: 45, answer: "Sword", correct: false},
  # {trivia_question_id: 45, answer: "Gold", correct: false},
  # {trivia_question_id: 45, answer: "Juno", correct: false},
  # {trivia_question_id: 46, answer: "Babylon", correct: true},
  # {trivia_question_id: 46, answer: "Carthage", correct: false},
  # {trivia_question_id: 46, answer: "Rome", correct: false},
  # {trivia_question_id: 46, answer: "Constantinople", correct: false},
  # {trivia_question_id: 47, answer: "William Henry Harrison", correct: true},
  # {trivia_question_id: 47, answer: "Zachary Taylor", correct: false},
  # {trivia_question_id: 47, answer: "Warren G. Harding", correct: false},
  # {trivia_question_id: 47, answer: "William McKinley", correct: false},
  # {trivia_question_id: 48, answer: "Shintoism", correct: true},
  # {trivia_question_id: 48, answer: "Buddhism", correct: false},
  # {trivia_question_id: 48, answer: "Christianity", correct: false},
  # {trivia_question_id: 48, answer: "Islam", correct: false},
  # {trivia_question_id: 49, answer: "South Africa", correct: true},
  # {trivia_question_id: 49, answer: "Egypt", correct: false},
  # {trivia_question_id: 49, answer: "Nambia", correct: false},
  # {trivia_question_id: 49, answer: "Ghana", correct: false},
  # {trivia_question_id: 50, answer: "Buzz Aldrin", correct: true},
  # {trivia_question_id: 50, answer: "Neil Armstrong", correct: false},
  # {trivia_question_id: 50, answer: "Gus Grisson", correct: false},
  # {trivia_question_id: 50, answer: "Alan Shepard", correct: false},
  {trivia_question_id: 51, answer: "Daniel Craig", correct: true},
  {trivia_question_id: 51, answer: "Sean Connery", correct: false},
  {trivia_question_id: 51, answer: "Pierce Brosnan", correct: false},
  {trivia_question_id: 51, answer: "Timothy Dalton", correct: false},
  {trivia_question_id: 52, answer: "Tokyo", correct: true},
  {trivia_question_id: 52, answer: "Doha", correct: false},
  {trivia_question_id: 52, answer: "Madrid", correct: false},
  {trivia_question_id: 52, answer: "Istanbul", correct: false},
  {trivia_question_id: 53, answer: "Russia", correct: true},
  {trivia_question_id: 53, answer: "Australia", correct: false},
  {trivia_question_id: 53, answer: "India", correct: false},
  {trivia_question_id: 53, answer: "Qatar", correct: false},
  {trivia_question_id: 54, answer: "Westeros", correct: true},
  {trivia_question_id: 54, answer: "Narnia", correct: false},
  {trivia_question_id: 54, answer: "Essos", correct: false},
  {trivia_question_id: 54, answer: "Dothraki", correct: false},
  {trivia_question_id: 55, answer: "Seattle", correct: true},
  {trivia_question_id: 55, answer: "San Francisco", correct: false},
  {trivia_question_id: 55, answer: "Portland", correct: false},
  {trivia_question_id: 55, answer: "Oakland", correct: false},
  {trivia_question_id: 56, answer: "The Simpsons", correct: true},
  {trivia_question_id: 56, answer: "Gunsmoke", correct: false},
  {trivia_question_id: 56, answer: "Law & Order", correct: false},
  {trivia_question_id: 56, answer: "M.A.S.H.", correct: false},
  {trivia_question_id: 57, answer: "Firefly", correct: true},
  {trivia_question_id: 57, answer: "Buffy", correct: false},
  {trivia_question_id: 57, answer: "Angel", correct: false},
  {trivia_question_id: 57, answer: "S.H.I.E.L.D.", correct: false},
  {trivia_question_id: 58, answer: "Janet Jackson", correct: true},
  {trivia_question_id: 58, answer: "Lady Gaga", correct: false},
  {trivia_question_id: 58, answer: "Whitney Houston", correct: false},
  {trivia_question_id: 58, answer: "The Dixie Chicks", correct: false},
  {trivia_question_id: 59, answer: "West Philadelphia", correct: true},
  {trivia_question_id: 59, answer: "Spanish Harlem", correct: false},
  {trivia_question_id: 59, answer: "Cherry Hill", correct: false},
  {trivia_question_id: 59, answer: "San Diego", correct: false},
  {trivia_question_id: 60, answer: "Phantom of the Opera", correct: true},
  {trivia_question_id: 60, answer: "The Lion King", correct: false},
  {trivia_question_id: 60, answer: "Cats", correct: false},
  {trivia_question_id: 60, answer: "Les Miserables", correct: false},
]
)
