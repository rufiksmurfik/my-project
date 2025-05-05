#!/bin/bash

echo -e "Welcome tarnished. Please select your starting class:\n
1 - Samurai
2 - Prisoner
3 - Prophet"
read class
case $class in
        1)
            type="Samurai"
            hp=10
            attack=20
            ;;
        2)
            type="Prisoner"
            hp=15
            attack=15
            ;;
        3)
            type="Prophet"
            hp=20
            attack=10
            ;;
esac
echo "You have selected the $type class. You have $hp HP and $attack attack power."
sleep 2
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
# Allow "cheat" input to bypass the game logic for debugging or testing purposes
if [[ $choice2 == $margrit || $choice2 == "cheat" ]]; then
    sleep 1.5
    if [[ $USER == "ivanberat" ]]; then
       echo "Beast is dead! You are the best player ever!" 
    fi
   
else
    sleep 1.5
    echo "You died"
fi