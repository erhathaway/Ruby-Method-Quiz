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
  def ask(player, mode = :normal)
    if mode == :normal
      puts "What does \e[31mEnumerable\e[0m\#\e[32m#{self.question}\e[0m do?", ""
    elsif mode == :reverse
      puts "Which method does the following?: "
      puts
      puts "\e[32m#{self.question}\e[0m"
      puts
    end
    letters = %w(A B C D)
    correct_response = ''
    @choices.shuffle.each do |choice|
      correct_response = letters.first if choice == self.answer
      puts "#{letters.shift}: #{choice}"
      puts
    end
    response = key_input('a','b','c','d')
    if response == correct_response.downcase
      puts "\e[32mCorrect!\e[0m"
      player.score += 1
      # sleep(1)
    else
      puts "\e[31mIncorrect\e[0m"
      if mode == :normal
        player.incorrect_answers[self.question] = self.answer
      else
        player.incorrect_answers[self.answer] = self.question
      end
      # sleep(1)
    end
  end

  attr_accessor :question, :choices, :answer
end

def game
  q = Question.new
  player = Player.new
  questions_asked = {}
  incorrect_questions = []
  mode = :normal
  @questions = questions

  1.upto(10) do |number|
    system 'clear'
    if number == 5
      @questions = @questions.invert
      mode = :reverse
    end
    # puts questions
    # exit
    q.question = @questions.keys.sample
    q.answer = @questions[q.question]
    questions_asked[q.question] = q.answer
    q.choices = [q.answer]
    until q.choices.size == 4
      new_choice = @questions.values.sample
      q.choices << new_choice unless q.choices.include?(new_choice)
    end
    puts "Question number #{number}:"
    puts
    q.ask(player, mode)
  end

  system 'clear'
  puts "You answered #{player.score} questions correctly!"
  puts
  print "Would you like to review your incorrect answers? (y/n) "

  if key_input('y','n') == 'y'
    system 'clear'
    player.incorrect_answers.each do |question, answer|
      lower_case_answer = answer.dup
      lower_case_answer[0] = lower_case_answer[0].downcase
      puts "\e[31mEnumerable\e[0m\#\e[32m#{question} \e[0m#{lower_case_answer}"
      puts
    end
  end
end

game
