class Game
  attr_reader :player_1, :player_2, :player_in_control, :player_waiting

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_in_control = player_1
    @player_waiting = player_2
  end

  def attack
    @player_waiting.reduce_hp(random_number)
    switch_turn
  end

  def game_over?
    loosing_player
  end

  def random_number
    Kernel.rand(0..10)
  end

  private

  def switch_turn
    if player_in_control == player_1
      @player_in_control, @player_waiting = player_2, player_1
    else
      @player_in_control, @player_waiting = player_1, player_2
    end
  end

  def loosing_player
    player_1.hp == 0 || player_2.hp == 0
  end


end
