1. Write a program in the following steps
a. Roll a die and find the number between 1 to 6
b. Repeat the Die roll and find the result each time
c. Store the result in a dictionary
d. Repeat till any one of the number has reached 10 times
e. Find the number that reached maximum times and the one that was for minimum times

declare -A dicedict=(
                            [1]=0
                            [2]=0
                            [3]=0
                            [4]=0
                            [5]=0
                            [6]=0
                        )
max_count=10
while(( 1 ))
do
    dice=$(( RANDOM % 6 + 1 ))
    (( dicedict[$dice]++))

    if(( dicedict[$dice] == max_count))
    then
        break
    fi
done
maximum=$(( RANDOM % 6 + 1 ))
minimum=$(( RANDOM % 6 + 1 ))
echo "The numbers of the dice and their corresponding frequencies are:"
for number in ${!dicedict[@]}
do
    if(( dicedict[$number] >= dicedict[$maximum] ))
    then
        maximum=$number
    fi
    if(( dicedict[$number] <= dicedict[$minimum] ))
    then
        minimum=$number
    fi

