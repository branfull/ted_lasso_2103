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
end
