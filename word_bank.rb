# frozen_string_literal: true

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

  def display_word(range)
    puts @game_words[range]
  end

  def random_word
    random_number = rand(@game_words.length)
    puts @game_words[random_number]
  end
end

word = WordBank.new('20k.txt')
word.display_word(30)
word.display_word(25)
word.random_word
word.random_word
