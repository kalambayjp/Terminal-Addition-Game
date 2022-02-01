require "./game.rb"
require "./player.rb"

class Mathq 
  attr_accessor :solution, :question

def generate_question 
  @random_number1 = rand(1...20)
  @random_number2 = rand(1...20)
  @question = "What is #{@random_number1} plus #{@random_number2}?"
  @correct_answer = @random_number1 + @random_number2
end 

def show_question(name)
  generate_question
  puts "#{name}: #{question}"
end

def correct_answer?(answer)
  if answer == @correct_answer
    puts "Yes! You are correct."
    return true
  else
    puts "Seriously? No!"
    return false
  end
end

end