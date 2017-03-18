json.array! @trivia.each do |question|
  json.id question.id
  json.question question.question
  json.trivia_answers question.trivia_answers.each do |answer|
    json.id answer.id
    json.answer answer.answer
    json.correct answer.correct
  end
end