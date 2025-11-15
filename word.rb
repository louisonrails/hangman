# frozen_string_literal: true

require_relative 'word_bank'

# The `Word` class represents a single word that the player must guess in the Hangman game.
# It is responsible for handling the word's characters, checking if a guessed letter is
# part of the word, revealing letters as they are guessed correctly, and displaying
# the current progress of the word (masked and revealed letters).
class Word
  attr_reader :word

  def initialize
    @word_bank = WordBank.new('20k.txt')
    @word = @word_bank.random_word
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

  def complete?
    @revealed_letters == @word_letters
  end

  def display_word
    puts @revealed_letters.join(' ')
  end
end
