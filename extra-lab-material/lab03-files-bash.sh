#!/usr/bin/bash

#NAME
#UID
#SAT3310-S19
#DATE
#

#Variables
filepath="/home/campus16/toarney/sat3310-s19-lab-demos/lab03-files-bash/words/"
nounsFile="nouns.txt"
agentNounsFile="agentnouns.txt"
randNoun=""
randAgentNoun=""
counter1=0
counter2=0
debug=1
declare -a nounsArr
declare -a agentNounsArr

#load array
readarray -t nounsArr < $filepath$nounsFile
readarray -t agentNounsArr < $filepath$agentNounsFile

counter1=${#nounsArr[@]}
counter2=${#agentNounsArr[@]}

if [ $debug -ne 0 ]; then
	printf "There are %d words in %s\n", $counter1, $nounsFile
	printf "There are %d words in %s\n", $counter2, $agentNounsFile
fi


#Select random word
randNoun=${nounsArr[RANDOM % counter1]}
randAgentNoun=${agentNounsArr[RANDOM % counter2]}

if [ $debug != 0 ]; then
	printf "%s %s\n", $randNoun, $randAgentNoun
fi

#print results
printf "You are a %s %s!\n", $randNoun, $randAgentNoun





