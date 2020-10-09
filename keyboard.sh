#!/usr/bin/bash

# Dir
search_dir=/sys/class/leds

# Get list of files
for f in "$search_dir"/*
do
	file=$f
done
# Split File Path
split_path=($(echo $file | tr "/" "\n" ))

# Get input
input=($(echo ${split_path[3]} | tr "::" "\n"))

# Turn Led function
function led_on_off {

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

# Format Help
fmt_help="  %-20s\t%-54s\n"

function _help {
    echo "Description: Keyboard Backlight, Caps Lock & Num Lock script."
    echo ""
    echo "Usage: keyboardled [option...]"
	echo ""
    printf "${fmt_help}" \
		"-s, --scroll" "turn on/off keyboard backlight." \
		"-c, --caps" "turn on/off caps lock." \
		"-n, --num" "turn on/off num lock" \
		"-h, --help, help" "print this usage message." 
}

# Display Name
echo ""
echo "Keyboard Led"
echo "..............................."
echo ""

case "$1" in
	-h | --help | help)
		_help
		;;
	-s | --scroll)
		# Create Input Path
		input_path="$search_dir/$input::scrolllock/brightness"
		led_on_off
		;;
	-c | --caps)
		input_path="$search_dir/$input::capslock/brightness"
		led_on_off
		;;
	-n | --num)
		# Create Input Path
		input_path="$search_dir/$input::numlock/brightness"
		led_on_off
		;;
	*)
    	echo "Input error, too many arguments."
    	exit 1
    	;;
esac