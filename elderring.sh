#!/bin/bash
echo "You died!"

#First beast battle

beast=$(( $RANDOM % 2))

echo "Your first beast approaches! Prepare to fight! Pick a number between 0/1."
read choice
if [[ $beast == $choice ]]; then
    sleep 1.5
    echo "You have defeated the beast! GOOD JOB!!!"
else
    sleep 1.5
    echo "You died"
    exit 1
fi
sleep 2
#Second beast battle
margrit=$(( $RANDOM % 10 ))
echo "You have encountered a beast! Pick a number between 0-9(0,9)."
read choice2
if [[ $choice2 == $margrit ]]; then
    sleep 1.5
    echo "You have defeated the beast! GOOD JOB!!!"
else
    sleep 1.5
    echo "You died"
fi