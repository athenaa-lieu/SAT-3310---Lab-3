# Variables
declare -a mynounsarray
declare -a myagentnounsarray
defaultdir="/root/Documents/labs/
lab05/data/"
nouns="nouns.txt"
agentnouns="agentnouns.txt"

# Put words into an array
readarray -t mynounsarray <
$defaultdir$nouns
readarray -t myagentnounsarray
< $defaultdir$agentnouns

# Count words
numnouns=${#mynounsarray[@]}
numagentnouns=${#myagentnounsa
rray[@]}

# Print counts
echo "There are $numnouns
words in $defaultdir$nouns"
echo "There are $numagentnouns
words in
$defaultdir$agentnouns"

# Random select
randomnoun=${mynounsarray[RAND
OM % numnouns]}
randomagentnoun=${myagentnouns
array[RANDOM % numagentnouns]}

# Print words
echo "You are a $randomnoun
$randomagentnoun!"

# Done