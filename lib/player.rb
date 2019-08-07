class Player

  attr_reader :name, :HP
  DEFAULT_HIT_POINT = 10

  def initialize(name)
    @name = name
    @HP = 100
    @hitpoint = DEFAULT_HIT_POINT
  end

def get_hit
  @HP -= @hitpoint
end

def attack(victim)
  victim.get_hit
end




end