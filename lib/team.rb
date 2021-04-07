class Team
  attr_reader :name,
              :coach,
              :players

  def initialize(name, coach, players)
    @name = name
    @coach = coach
    @players = players
  end

  def total_salary
    @players.sum do |player|
      player.salary
    end
  end

  def captain
    highest_paid_player = @players.max_by do |player|
      player.salary
    end
    highest_paid_player.name
  end

  def positions_filled
    positions = []
    @players.each do |player|
      if !positions.include?(player.position)
        positions.push(player.position)
      end
    end
    positions
  end
end
