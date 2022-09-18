#!/bin/bash
clear
validChoice=false
validValue=false
echo " -----------------------------------------------------"
echo "               Arithmetic Tables                      "
echo -----------------------------------------------------
echo "Enter a value (1-15): "
read value
echo " "
echo " "
if (( $value >= 1 )) && (( $value <= 15 )); then  #validation operand must be between 1 and 15 inclusive
	validValue=true
	echo 1.Addition: +
	echo 2.Subtraction: -
	echo "3.Multiplication: *"
	echo 4.Division: /
	echo 5.Exponent: ^
	echo "Enter arithmethic symbol: "
	read choice
	echo " "
	echo " "
	#check for a valid arithmetic choice
	if [[ "$choice" == "*" ]] || [[ "$choice" == "+" ]] || [[ "$choice" == "^" ]] || [[ "$choice" == "-" ]] || [[ "$choice" == "/" ]]; then
		validChoice=true
	elif [[ $validChoice == false ]]; then
		echo "You entered an invalid arithmethic symbol!"
	fi

	if [[ $validChoice == true ]] && [[ $validValue == true ]]; then
  			echo "$x Times Table ($choice)"
			echo "-----------------"
			i="1"
			while [ $i -le 15 ] #loop 15 times
			do
				if [[ "$choice" == "*" ]]; then
					echo " $value * $i = `expr $value \* $i`" #multiplication calculation
				elif [[ "$choice" == "+" ]]; then
					echo " $value + $i = `expr $value \+ $i`" #additional calculation
				elif [[ "$choice" == "-" ]]; then
					echo " $value - $i = `expr $value \- $i`" #subtraction calculation
				elif [[ "$choice" == "/" ]]; then
					echo " $value / $i = `expr $value \/ $i`" #division calculation
				elif [[ "$choice" == "^" ]]; then 		#exponent calculation
					answer=$(echo $(( value ** i )))
					echo " $value ^ $i = " $answer
				fi
				((i=i+1))
 			done
	fi
elif [[ $validValue == false ]]; then
	echo "Value must be a number between 1 and 15!"
fi
