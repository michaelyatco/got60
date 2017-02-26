# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TriviaQuestion.create([
  # {question: "What match did Harry Potter see at the Quidditch World Cup?", category: "Harry Potter"},
  # {question: "Who PHYSICALLY opened the Chamber of Secrets?", category: "Harry Potter"},
  # {question: "Who does Ron first snog?", category: "Harry Potter"},
  # {question: "What is Hermoine's position in quidditch?", category: "Harry Potter"},
  {question: "Who crafted Harry Potter's wand?", category: "Harry Potter"},
  {question: "What is the railway platform?", category: "Harry Potter"},
  {question: "What is Hermoine's patronus?", category: "Harry Potter"},
  {question: "What was the name of Hermoine's movement for house elves?", category: "Harry Potter"},
  {question: "What is the name of the wizarding school in North America?", category: "Harry Potter"},
  {question: "What is the emblematic animal of House Hufflepuff?", category: "Harry Potter"}
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
{trivia_question_id: 5, answer: "Garrick Ollivander", correct: true},
{trivia_question_id: 5, answer: "Alexandra Walker", correct: false},
{trivia_question_id: 5, answer: "Florean Fortescue", correct: false},
{trivia_question_id: 5, answer: "Gregorivich Zauberstäbe", correct: false},
{trivia_question_id: 6, answer: "9 3/4", correct: true},
{trivia_question_id: 6, answer: "8 2/3", correct: false},
{trivia_question_id: 6, answer: "7 5/6", correct: false},
{trivia_question_id: 6, answer: "4 1/2", correct: false},
{trivia_question_id: 7, answer: "An otter", correct: true},
{trivia_question_id: 7, answer: "A stag", correct: false},
{trivia_question_id: 7, answer: "A phoenix", correct: false},
{trivia_question_id: 7, answer: "A house elf", correct: false},
{trivia_question_id: 8, answer: "S.P.E.W.", correct: true},
{trivia_question_id: 8, answer: "D.A.", correct: false},
{trivia_question_id: 8, answer: "M.W.P.P.", correct: false},
{trivia_question_id: 8, answer: "T.W.T.", correct: false},
{trivia_question_id: 9, answer: "Ilvermorny", correct: true},
{trivia_question_id: 9, answer: "Durmstrang", correct: false},
{trivia_question_id: 9, answer: "Beauxbaton", correct: false},
{trivia_question_id: 9, answer: "Castelobruxo", correct: false},
{trivia_question_id: 10, answer: "Badger", correct: true},
{trivia_question_id: 10, answer: "Ferret", correct: false},
{trivia_question_id: 10, answer: "Porcupine", correct: false},
{trivia_question_id: 10, answer: "Mongoose", correct: false},
]
)