require_relative 'questions.rb'
require_relative 'key_input.rb'

class Player
  def initialize
    @score = 0
    @incorrect_answers = {}
  end

  attr_accessor :score, :incorrect_answers
end

class Question
  def ask(player)
    puts "What does\e[34m Enumerable\#\e[32m#{self.question}\e[0m do?", ""
    #ASCII color codes:\e[34m sets the color to blue, #\e[0m returns color back to white

    letters = %w(A B C D)
    correct_response = ''
    @choices.shuffle.each do |choice|
      correct_response = letters.first if choice == self.answer
      puts "#{letters.shift}: #{choice}"
      puts
    end
    response = key_input
    if response == correct_response.downcase
      puts 'Correct!'
      player.score += 1
      sleep(1)
    else
      puts 'Incorrect'
      player.incorrect_answers[self.question] = self.answer
      sleep(1)
    end
  end

  attr_accessor :question, :choices, :answer
end

q = Question.new
player = Player.new
questions_asked = {}
incorrect_questions = []

1.upto(10) do |number|
  system 'clear'
  q.question = questions.keys.sample
  q.answer = questions[q.question]
  questions_asked[q.question] = q.answer
  q.choices = [q.answer]
  until q.choices.size == 4
    new_choice = questions.values.sample
    q.choices << new_choice unless q.choices.include?(new_choice)
  end
  puts "Question number #{number}:"
  puts
  q.ask(player)
end

system 'clear'
puts "You answered #{player.score} questions correctly!"
puts
print "Would you like to review your incorrect answers? (y/n) "
begin
  y_or_n = key_input
end until y_or_n == 'y' || y_or_n == 'n'

if y_or_n == 'y'
  system 'clear'
  player.incorrect_answers.each do |question, answer|
    answer[0] = answer[0].downcase
    puts "Enumerable\##{question} #{answer}"
    puts
  end
end
