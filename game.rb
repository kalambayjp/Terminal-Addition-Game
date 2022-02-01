require "./mathq.rb"
require "./player.rb"


class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def change_player
    @current_player.name == "Player 1" ? @current_player = @player2 : @current_player = @player1
  end

  def start_game
    while @current_player.num_of_lives > 0 do
      puts "\n ----- NEW TURN -----"
      @question = Mathq.new
      @question.show_question(@current_player.name)

      if !@question.correct_answer?(gets.chomp.to_i)
        @current_player.update_lives
        # change_player
      end

      if @current_player.num_of_lives > 0
        puts "\n P1: #{@player1.num_of_lives}/3 vs P2: #{@player2.num_of_lives}/3"
        change_player
        
      else puts "\n ----- GAME OVER ----- \n Good bye!"
      end
    end
  end

end
