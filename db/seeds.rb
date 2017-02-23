# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TriviaQuestion.create([
  {question: "What match did Harry Potter see at the Quidditch World Cup?", category: "Harry Potter"},
  {question: "Who PHYSICALLY opened the Chamber of Secrets?", category: "Harry Potter"},
  {question: "Who does Ron first snog?", category: "Harry Potter"},
  {question: "What is Hermoine's position in quidditch?", category: "Harry Potter"}]
)

TriviaAnswer.create([
{trivia_question_id: 1, answer: "Ireland vs. Bulgaria", correct: true},
{trivia_question_id: 1, answer: "England vs. Romania", correct: false},
{trivia_question_id: 1, answer: "France vs. Germany", correct: false},
{trivia_question_id: 1, answer: "Gryffindor vs. Slytherin", correct: false},
{trivia_question_id: 2, answer: "Ginny Weasley", correct: true},
{trivia_question_id: 2, answer: "Voldemort", correct: false},
{trivia_question_id: 2, answer: "Peeves", correct: false},
{trivia_question_id: 2, answer: "Draco Malfoy", correct: false},
{trivia_question_id: 3, answer: "Lavender Brown", correct: true},
{trivia_question_id: 3, answer: "Hermoine Granger", correct: false},
{trivia_question_id: 3, answer: "Draco Malfoy", correct: false},
{trivia_question_id: 3, answer: "Vincent Crabbe", correct: false},
{trivia_question_id: 4, answer: "She didn't play", correct: true},
{trivia_question_id: 4, answer: "Backup Seeker", correct: false},
{trivia_question_id: 4, answer: "Chaser", correct: false},
{trivia_question_id: 4, answer: "Beater", correct: false},
]
)