class Player
  @@num_of_players = 0

  attr_accessor :num_of_lives, :name

  def initialize(name)
    @name = name
    @num_of_lives = 3
  end

  def update_lives
    @num_of_lives -= 1
  end
end