##########################################

#!/bin/bash/

#Prompt user to enter two integers
#Prompt user to choose a operation
#Return calculated output
#Make sure appropriate error messages are addressed

echo "Please enter your first number."

read  

echo "Please enter your secind number."

read 

echo "Please choose an operator: addition, subratction, multiplication, subtraction."

read

echo "Thank you! Your answer is:,,"
#################################




# Main program starts here
echo "Welcome to Bash Calculator!"

# Input the first integer
read -p "Enter your first number: " num1

# Input validation for first integer
if ! [[ "$num1" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input: '$num1' is not an number."
    exit 1
fi

# Input the second integer
read -p "Enter your second number: " num2

# Input validation for second integer
if ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input: '$num2' is not an number."
    exit 1
fi

# Choose the operation
echo "Choose an operation (+, -, *, /):"
read operation

# Perform the calculation based on the chosen operation
perform_calculation


# Function to perform and display the calculation
perform_calculation() {
    case $operation in
        '+')
            result=$(($num1 + $num2))
            echo "Result: $num1 + $num2 = $result"
            ;;
        '-')
            result=$(($num1 - $num2))
            echo "Result: $num1 - $num2 = $result"
            ;;
        '*')
            result=$(($num1 * $num2))
            echo "Result: $num1 * $num2 = $result"
            ;;
        '/')
            if [ $num2 -eq 0 ]; then
                echo "Error: Division by zero is not permitted."
            else
                result=$(($num1 / $num2))
                echo "Result: $num1 / $num2 = $result"
            fi
            ;;
        *)
            echo "Invalid operation selected. Please restart the calculator."
            exit 1
            ;;
    esac
}
