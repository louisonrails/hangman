# Hangman Game

A simple implementation of the classic **Hangman** game in Ruby. This project was created as part of The Odin Project's curriculum, designed to solidify understanding of **Object-Oriented Programming (OOP)** principles and **file reading** in Ruby.

## Features

- **Word Selection**: Words are read from a file (`20k.txt`), filtered based on length (5–12 characters), and a random word is chosen for the player to guess.
- **Gameplay Flow**: The game includes typical Hangman logic where the player has 6 attempts to guess letters in the word.
- **OOP Design**: The game is designed using OOP principles, with clear separation of concerns across multiple classes (`Game`, `Word`, `WordBank`).
- **File Handling**: The list of words is loaded from a text file, demonstrating basic file reading in Ruby.

## Learning Objectives

- **OOP Principles**: This project emphasizes creating classes, initializing objects, and using instance variables to manage state. The project also implements methods that define the interactions between objects (e.g., `Word`, `WordBank`, and `Game`).
  
- **File Reading in Ruby**: The project reads a text file (`20k.txt`), processes each line, and filters the words to fit the game criteria. This exercise demonstrates how to handle file input/output in Ruby.

## Classes and Methods

### `WordBank`
The `WordBank` class is responsible for managing the list of words. It loads words from a file, filters them by length, and provides a method to return a random word.

- **`initialize(file_path)`**: Loads words from the specified text file and filters them to fit the word length criteria.
- **`random_word`**: Returns a random word from the filtered list.

### `Word`
The `Word` class represents the word that the player must guess. It handles the logic of checking guesses and revealing letters.

- **`initialize`**: Initializes the word from the `WordBank` and sets up the word and its letters.
- **`includes?(letter)`**: Checks if the guessed letter is in the word.
- **`reveal(letter_to_find)`**: Reveals the positions of the guessed letter in the word.
- **`display_word`**: Displays the current state of the word (with underscores for unguessed letters).
- **`complete?`**: Checks if the word has been completely guessed.
- **`word`**: Returns the original word for display purposes after the game ends.

### `Game`
The `Game` class manages the overall flow of the game, including taking guesses, tracking the player's attempts, and checking for win/loss conditions.

- **`initialize`**: Initializes the game with a word, set number of attempts, and a list of guessed letters.
- **`game_over?`**: Checks if the game is over (either attempts are zero or the word is completely guessed).
- **`valid_input?(letter)`**: Validates if the player's input is a valid, unguessed letter.
- **`play`**: The main game loop, prompting the player for guesses and updating the game state.

## How to Play

1. **Clone this repository**:
   ```bash
   git clone https://github.com/your-username/hangman.git
   cd hangman

2. **Install dependencies**: Check out the ruby version installed by running the `ruby -v`command

3. **Run the Game**: Simply run the game by executing the following in your terminal: `ruby game.rb`
