class Game
  attr_reader :player_1, :player_2, :player_in_control, :player_waiting

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_in_control = player_1
    @player_waiting = player_2
  end


  def attack
    @player_waiting.reduce_hp
    switch_turn
  end

  private

  def switch_turn
    if player_in_control == player_1
      @player_in_control = player_2
      @player_waiting = player_1
    else
      @player_in_control = player_1
      @player_waiting = player_2
    end
  end


end
