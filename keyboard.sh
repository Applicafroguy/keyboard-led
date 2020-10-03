#!/bin/bash

# Dir
search_dir=/sys/class/leds

# Get list of files
echo "List"
echo "------------------"
for file in "$search_dir"/*
do
	echo $file
done
echo "------------------"
# Split File Path
split_path=($(echo $file | tr "/" "\n" ))

# Get input
input=($(echo ${split_path[3]} | tr "::" "\n"))

# Turn Led function
led_on_off() {

	# Check if Backlight is on
	is_on=$(cat $input_path)

	# Turn on Keyboard Backlight Led 
	if [ $is_on -eq 0 ]
	then
		echo 1 | sudo tee $input_path
	else
		echo 0 | sudo tee $input_path
	fi
}

# If scroll lock
if [ "$1" == "scroll" ]
then
	# Create Input Path
	input_path="$search_dir/$input::scrolllock/brightness"

	led_on_off


elif [ "$1" == "caps" ]
then
	# Create Input Path
	input_path="$search_dir/$input::capslock/brightness"

	led_on_off
elif [ "$1" == "num" ]
then 
	# Create Input Path
	input_path="$search_dir/$input::numlock/brightness"

	led_on_off
fi


