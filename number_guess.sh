#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only --no-align -c"

# Randomly generate a number between 1 and 1000
RANDOM_NUMBER=$((1 + RANDOM % 1000))

# Take username as input
echo "Enter your username:"
read USERNAME

# Get user from database
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME';")

# Check if username exists
if [[ -z $USER_ID ]]; then
  : '
    ### User does not exist ###
  '

  # Insert user into the database
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME');")

  # Fetch user_id from the database
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME';")

  # If not, welcome the user
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  : '
    ### User exists ###
  '

  # Fetch the number of games played by the user
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM guesses WHERE user_id = $USER_ID;")

  # Fetch the best game of the user
  BEST_GAME_GUESS=$($PSQL "SELECT MIN(number_of_guesses) FROM guesses WHERE user_id = $USER_ID;")

  # Welcome the user
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME_GUESS guesses."
fi

# Initialize the number of guesses to 1
NUMBER_OF_GUESSES=0

# Ask the user to guess the secret number
echo "Guess the secret number between 1 and 1000: "
read GUESSED_NUMBER
((NUMBER_OF_GUESSES += 1))

# While loop to keep asking the user to guess the secret number until they get it right
while [ $GUESSED_NUMBER != $RANDOM_NUMBER ]; do
  # Check if guessed number is an integer or not
  if [[ ! $GUESSED_NUMBER =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again: "
    read GUESSED_NUMBER
    ((NUMBER_OF_GUESSES += 1))
  fi

  # Check if guessed number is less than or higher than the secret number
  if [ $GUESSED_NUMBER -lt $RANDOM_NUMBER ]; then
    echo "It's higher than that, guess again: "
    read GUESSED_NUMBER
    ((NUMBER_OF_GUESSES += 1))
  else
    echo "It's lower than that, guess again: "
    read GUESSED_NUMBER
    ((NUMBER_OF_GUESSES += 1))
  fi
done

# Check if guessed number is equal to the secret number
if [ $GUESSED_NUMBER -eq $RANDOM_NUMBER ]; then
  # Insert the user's guess into the database
  GUESS_INSERT_RESULT=$($PSQL "INSERT INTO guesses (guessed_number, number_of_guesses, user_id) VALUES ($GUESSED_NUMBER, $NUMBER_OF_GUESSES, $USER_ID);")

  echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"
fi
