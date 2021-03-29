class Question
  attr_accessor :correct
  def initialize(player)
    @num_1 = rand(0..20)
    @num_2 = rand(0..20)
    @answer = @num_1 + @num_2
    puts "#{player}: What does #{@num_1} plus #{@num_2} equal?"
    correct_answer
  end

  def correct_answer
    @player_answer = gets.chomp
    if @player_answer.to_i == @answer
      puts "YES! You are correct."
      @correct = true
    else 
      puts "Seriously? No!"
      @correct = false

    end
  end

end

# newQuestion = Question.new("Player 1")
# p newQuestion