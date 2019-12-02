num=$(find . -type f -maxdepth 1 | wc -l)
echo "welcome to my guessing game!"

function guess {
	echo "guess the number files in this directory!"	
	read guess	
}

guess
while [[ $num -ne $guess ]]
do
	if [[ $guess -gt $num ]]
	then
		echo "Too High"
	elif [[ $guess -lt $num ]]; then
		echo "Too Low"
	fi
	guess
done

echo "You got it! $guess"
