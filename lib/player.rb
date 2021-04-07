class Player
  attr_reader :name,
              :position,
              :salary

  def initialize(player_information)
    @name = player_information[:name]
    @position = player_information[:position]
    @salary = player_information[:salary]
  end
end
