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

    it 'should reduce HP by a random amount ' do
      allow(game).to receive(:random_number).and_return(5)
      expect(player_2).to receive(:reduce_hp).with(5)
      game.attack
    end

    it 'switches the player in control' do
      game.attack
      expect(game.player_in_control).to eq(player_2)
    end



  end

  describe '#game_over?' do
    it 'happens when one of the players reach 0HP' do
      allow(player_2).to receive(:hp){0}
      allow(player_1).to receive(:hp){10}
      expect(game).to be_game_over
    end
  end



end
