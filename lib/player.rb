require_relative './game'
class Player

  attr_reader :name, :HP, :game
  DEFAULT_HIT_POINT = 10

  def initialize(name, game = Game.new)
    @name = name
    @HP = 100
    @hitpoint = DEFAULT_HIT_POINT
    @game = game
  end

def get_hit
  @HP -= @hitpoint
end

end