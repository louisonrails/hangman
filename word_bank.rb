# frozen_string_literal: true

# The `Word` class represents a single word that the player must guess in the Hangman game.
# It is responsible for handling the word's characters, checking if a guessed letter is
# part of the word, revealing letters as they are guessed correctly, and displaying
# the current progress of the word (masked and revealed letters).
class WordBank
  def initialize(file_path)
    @word_list = []
    File.foreach(file_path) do |line|
      @word_list.push(line.chomp)
    end
    @game_words = @word_list.select do |word|
      word.length > 4 && word.length < 13
    end
  end

  def random_word
    random_number = rand(@game_words.length)
    @game_words[random_number]
  end
end
