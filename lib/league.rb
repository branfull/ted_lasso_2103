class League
  attr_reader :name,
              :teams

  def initialize(name)
    @name = name
    @teams = []
  end

  def add_team(team)
    @teams.push(team)
  end

  def captains
    @teams.map do |team|
      team.captain_player
    end
  end

  def players_by_team
    team_roster = {}
    @teams.each do |team|
      team_roster[team] = team.player_names
    end
    team_roster
  end

  def highest_paid_player
    highest_paid = []
    @teams.each do |team|
      if highest_paid[0] == nil
        highest_paid.push(team.captain_player)
      elsif team.captain_player.salary == highest_paid[0].salary
        highest_paid.push(team.captain_player)
      elsif team.captain_player.salary > highest_paid[0].salary
        highest_paid = [team.captain_player]
      end
    end
    highest_paid
  end

  def most_expensive_player
    highest_paid_player.map do |player|
      player.name
    end
  end

  def salary_ranges
    top_end = highest_paid_player[0].salary / 1000000
    (0..top_end).to_a
  end

  def salary_range_keys
    salary_ranges.map do |million|
      "Over #{million}M"
    end
  end

  #couldn't get it in time
  def players_by_salary_range
    hash = Hash.new([])
    salary_ranges.each do |million|
      @teams.each do |team|
        team.players.each do |player|
          if (player.salary / 1_000_000) == million
            hash["Over #{million}M"].push(player.name)
          end
        end
      end
    end
  end
end
