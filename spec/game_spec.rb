require 'game'

describe Game do
  let(:player_1){double(:player1, reduce_hp: true)}
  let(:player_2){double(:player2, reduce_hp: true)}
  subject(:game){described_class.new(player_1,player_2)}

  describe 'initialize' do

    it 'creates two players' do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
    end

    it 'sets a player in control' do
      expect(game.player_in_control).to eq(player_1)
    end

  end

  describe '#attack' do

    it 'calls the reduce_hp method on a player' do
      expect(player_2).to receive(:reduce_hp)
      game.attack
    end

    it 'switches the player in control' do
      game.attack
      expect(game.player_in_control).to eq(player_2)
    end

  end



end
