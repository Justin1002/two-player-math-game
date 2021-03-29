require './game.rb'
require './player.rb'
require './question.rb'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

game = Game.new(player1, player2)

while game.player_1.life > 0 and game.player_2.life > 0 do
  puts "----- NEW TURN -----"
  
  question = Question.new(game.current_player.name)

  if question.correct != true 
    game.remove_life
  end
  
  game.report_life
  game.change_player
  
end

result = game.player_1.life == 0 ? "#{player2.name} wins with a score of #{player2.life}/3" : "#{player1.name} wins with a score of #{player1.life}/3"
puts result
puts "----- GAME OVER -----"
puts "Good bye!"