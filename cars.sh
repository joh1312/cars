#!/bin/bash
# cars.sh
# Justin Oh

INVENTORY="my_old_cars"

while true;
do
	echo " Old Car Inventory Menu "
	echo " 1. Add a new car "
	echo " 2. List cars "
	echo " 3. Quit "

	read -r -p "Enter your choice [1-3]" choice
	echo

	case $choice in
		1)
			echo " Add a new car "
			read -r -p "Enter Year: " year
			read -r -p "Enter Make: " make
			read -r -p "Enter Model: " model
		
			echo "$year:$make:$model" >> "$INVENTORY"
			echo "Car successfully added to inventory."
			echo
			;;
		2)
			echo " Cars in Inventory "
			sort -t: -k1n "$INVENTORY"
			echo
			;;
		3)
			echo "Goodbye"
			break
			;;
		*)
			echo " Invalid option, please enter 1, 2, or 3 "
			echo
			;;
	esac
done
