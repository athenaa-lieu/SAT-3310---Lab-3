# vi ~/Documents/labs/SAT-3310---Lab-3/sat3310-s26-lab03.sh

#!/usr/bin/bash

# SAT 3310 - Lab 3
# Created by Athena Lieu (xlieu@mtu.edu)
# Date: May 18th, 2026
# Comments: The program opens two files,
# counts the number of words,
# stores the words in an array,
# randomly selects a word from the array,
# and prints it to the console.

# Variables

# Set the default directory where the files are located
defaultdir=~/Documents/labs/SAT-3310---Lab-3/data

# Set the file names for the nouns and agent nouns
nouns='nouns.txt'
agentnouns='agentnouns.txt'

# Arrays to store the words from the files
nouns_array=()
agentnouns_array=()

# Main Program

# List the files in the default directory
echo "Listing files in $defaultdir:"
ls "$defaultdir"
# ls command lists the files in the specified directory, allowing us to verify that the files we need are present.
# defaultdir is the variable that holds the path to the directory where our files are located.
# By using ls $defaultdir, we can see all the files in that directory, which helps us confirm that nouns.txt and agentnouns.txt are there before we try to read them.

# Put words into an array
# Read the nouns from the nouns file and store them in the nouns_array
readarray -t nouns_array < "$defaultdir/$nouns"
# -t option removes the newline characters from the end of each line
# This allows us to have clean words in the array without extra newlines

# Read the agent nouns from the agentnouns file and store them in the agentnouns_array
readarray -t agentnouns_array < "$defaultdir/$agentnouns"

# Count words
# Get the number of nouns by counting the elements in the nouns_array
# ${#nouns_array[@]} gives us the number of elements in the nouns_array, which is the count of nouns we have read from the file.
# This is important for later when we want to randomly select a noun, as we need to know how many nouns are available to ensure we select a valid index.
num_nouns=${#nouns_array[@]}
# Get the number of agent nouns by counting the elements in the agentnouns_array
num_agentnouns=${#agentnouns_array[@]}

# Print counts
# echo command is used to print the number of nouns and agent nouns to the console.
# This provides feedback to the user about how many words were read from each file, which can be useful for debugging and verification purposes.
# By printing the counts, we can confirm that the files were read correctly and that we have the expected number of words in each array before we proceed to randomly select a word.
# defaultdir is included in the output to remind us where the files were read from, which can be helpful for troubleshooting if there are issues with file paths or if we want to verify that we are using the correct files.
echo "There are $num_nouns words in $defaultdir/$nouns"
echo "There are $num_agentnouns words in $defaultdir/$agentnouns"

# Random select
# Select a random noun from the nouns_array
# random_noun is assigned a random element from the nouns_array.
# The index is determined by taking the RANDOM variable, which generates a random number, and using the modulus operator with num_nouns to ensure that the index is within the bounds of the array.
random_noun=${nouns_array[RANDOM % num_nouns]}
# Select a random agent noun from the agentnouns_array
random_agentnoun=${agentnouns_array[RANDOM % num_agentnouns]}

# Print words
# random_noun and random_agentnoun are the randomly selected words from their respective arrays.
# By printing these variables, we can see which words were randomly chosen, which adds an element of fun and surprise to the program.
# This also allows us to verify that the random selection is working correctly and that we are getting valid words from the arrays.
echo "Randomly selected noun: $random_noun"
echo "Randomly selected agent noun: $random_agentnoun"

# Done