class Game
  extend Forwardable

  attr_reader :player_1, :player_2

  def_delegator :@player_1, :name, :player_1_name
  def_delegator :@player_2, :name, :player_2_name
  def_delegator :@player_1, :hp, :player_1_hp
  def_delegator :@player_2, :hp, :player_2_hp

  def initialize(player1,player2)
    @player_1 = player1
    @player_2 = player2
  end

  def attack(player)
    player.attacked_hp
  end
end
