# This function guesses the total number of files in this GitHub directory

# short function that asks the user to enter a number
function numberguess {
    echo "Guess a number (integer):"
    read guess
}

# start of program for user
echo "Try to guess the number of files in this directory"
n_files=$(ls | wc -l) # variable with the number of files in the directory

while [[ $guess -ne $n_files ]]
do
    numberguess
    if [[ ! $guess =~ ^[0-9]*$ ]]
    then
        echo "Error guess an integer number.."
    elif [[ $guess -gt $n_files ]]
    then
        echo "There are less than $guess files in this directory.. Try again!"        
    elif [[ $guess -lt $n_files ]]
    then
        echo "There are more than $guess files in this directory.. Try again!"
    else
        echo "Congratulations!! There are $guess files in this directory"
    fi     
done
