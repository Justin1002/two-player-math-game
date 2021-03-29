class Game 
  attr_accessor :current_player, :player_1, :player_2
  
  def initialize(player_1,player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end

  def remove_life
    @current_player.life -= 1
  end

  def report_life
    puts "P1: #{@player_1.life}/3 vs P2: #{@player_2.life}/3"
  end

  def change_player
    if @current_player == @player_1
       @current_player = @player_2
    else 
      @current_player = @player_1
    end
  end

end

