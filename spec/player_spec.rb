require 'player'

describe Player do
  subject(:player){described_class.new('Emma')}

  describe '#name' do

    it 'returns the players name' do
      expect(player.name).to eq('Emma')
    end

  end

end
