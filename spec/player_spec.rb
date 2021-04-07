require './lib/player'

RSpec.describe Player do
  describe '#initialize' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})
    it 'exists' do
      expect(roy).to be_an_instance_of(Player)
    end
    it 'has a name' do
      expect(roy.name).to eq("Roy Kent")
    end
    it 'has a position' do
      expect(roy.position).to eq("Center Midfielder")
    end
    it 'has a salary' do
      expect(roy.salary).to eq(1_000_000)
    end
  end
end
