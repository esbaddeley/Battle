require 'game'

describe Game do
  subject(:game) {described_class.new}
  let(:player) {double :player}
  context 'When the player attacks' do
    describe '#attack' do
      it 'reduces the opponents hit points.' do
        expect(player).to receive(:attacked_hp)
        game.attack(player)
      end
    end
  end
end
