#!/bin/bash
name=$1
compliment=$2
user=$(whoami)
usero=$(date)
brra=$(pwd)
echo Good morning $name!
sleep 1
echo You are looking good today $name!
sleep 1
echo You have the best $compliment in the world $name!
sleep 2
echo Good evening $name! You currently login as $user in directory $brra. The date is $usero.
echo Do you want to see the weather?
read answer
if [ "$answer" == "yes" ] || [ "$answer" == "Yes" ]; then
    echo Which is your city?
    read city
    sleep 3
    echo "Fetching weather information for $city..."
    sleep 2
    echo $(wget -O - wttr.in/$city -q)
else
    echo "Okay, have a great day!"
fi