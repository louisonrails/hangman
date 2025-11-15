# frozen_string_literal: true

require_relative 'word_bank'

class Word
  def initialize(word)
    @word = word
    @word_letters = @word.chars
    @revealed_letters = Array.new(@word_letters.length, '_')
  end

  def includes?(letter)
    @word_letters.include?(letter)
  end

  def reveal(letter_to_find)
    list_of_indexes = []

    @word_letters.each_with_index do |letter, index|
      list_of_indexes.push(index) if letter_to_find == letter
    end

    return false if list_of_indexes.empty?

    list_of_indexes.each do |index|
      @revealed_letters[index] = @word_letters[index]
    end
    true
  end

  def display_word
    puts @word_letters.join(' ')
    puts @revealed_letters.join(' ')
  end
end

word_bank = WordBank.new('20k.txt')
secret_word = word_bank.random_word
word = Word.new(secret_word)
word.display_word
puts word.includes?('a')
word.reveal('a')
word.display_word
