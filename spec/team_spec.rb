require './lib/player'
require './lib/team'

RSpec.describe Team do
  describe '#initialize' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    it 'exists' do
      expect(richmond).to be_an_instance_of(Team)
    end
    it 'has a name' do
      expect(richmond.name).to eq("AFC Richmond")
    end
    it 'has a coach' do
      expect(richmond.coach).to eq("Ted Lasso")
    end
    it 'has players' do
      expect(richmond.players).to eq([roy, sam])
    end
  end
  describe '#total_salary' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    it 'returns the sum of all player salaries for the team' do
      expect(richmond.total_salary).to eq(1_600_000)
    end
  end
  describe '#captain' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    it 'returns the player\'s name with highest salary on the team' do
      expect(richmond.captain).to eq("Roy Kent")
    end
  end
  describe '#positions_filled' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    it 'returns an array conatining all positions filled on the team' do
      expect(richmond.positions_filled).to eq(["Center Midfielder", "Right-back Defender"])
    end
  end
end
