#!/bin/bash
a=$(whoami)
echo "Welcome, $a! What is your name?"
read name
echo How old are you, $name?
read age
sleep 2
echo Hello $name, you are $age years old. I am a shell script.
sleep 2
getreach=$((age + ($RANDOM % 15)))
echo $name, you will be a millionaire at ${getreach} years old.
sleep 2
echo Do you want to see the weather?
read answer
if [ "$answer" = "yes" ] || [ "$answer" = "Yes" ]; then
    echo Which is your city?
    read city
    sleep 3
    echo "Fetching weather information for $city..."
    sleep 2
    wget -qO- wttr.in/$city
else
    echo "Okay, have a great day!"
fi