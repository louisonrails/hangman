require_relative 'word'

class Game
  def initialize
    @word = Word.new
    @attempts_left = 6
    @guessed_letters = []
  end

  def game_over?
    @attempts_left.zero?
  end

  def play
    until game_over? || @word.complete?
      @word.display_word
      print "\nEnter a valid letter letter: (You still have #{@attempts_left} attempts left):"
      letter = gets.chomp
      @word.includes?(letter) ? @word.reveal(letter) : @attempts_left -= 1
    end
    puts "You lose! THe correct word was #{@word.word}" if game_over?
    puts 'You won!' if @word.complete?
  end
end

game = Game.new
game.play
