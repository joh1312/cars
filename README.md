# README for Numbers Script

## Author Information
- **Name:** Justin Oh  
- **Course:** CPSC 298 Computer Science Colloquium  
- **Assignment:** Cars Script
- **Date:** 10/22/25

## Program Description
This script prompts the user to enter a number between 1 and 3 on a menu that is presented to the user. They can add a new car to the inventory and see what is currently on the list. 

## Example Output
If the user enters **1**, the program should display:
```
 Add a new car 
Enter Year: 
```

## Usage
To run the script interactively:
```bash
./cars.sh
```

To test with an input file (for example, `numbers-input`):
```bash
./cars.sh < cars-input
```

## How the Script Works
1. The script begins with a **shebang** (`#!/bin/bash`) and identifying comments.  
2. In a while loop, it presents the menu. 
3. It prompts the user to enter a number between 1 and 3. 
4. Depending on the number entered, it performs that action. 

## Core Logic Example
```bash
echo " Old Car Inventory Menu "
  echo " 1. Add a new car "
  echo " 2. List cars "
  echo " 3. Quit "

  read -r -p "Enter your choice [1-3]" choice
  echo

```

## Testing Results
When tested with the input file `numbers-input` containing:
```
1948:Ford:sedan
1952:Chevrolet:coupe
1960:Ford:Mustang
1972:Chevrolet:Corvette
1977:Plymouth:Roadrunner
1984:Toyota:Supra
1984:Toyota:Supra
```
The script outputs:
```
 Old Car Inventory Menu 
 1. Add a new car 
 2. List cars 
 3. Quit 

 Add a new car 
Car successfully added to inventory.

 Old Car Inventory Menu 
 1. Add a new car 
 2. List cars 
 3. Quit 

 Cars in Inventory 
1948:Ford:sedan
1952:Chevrolet:coupe
1960:Ford:Mustang
1972:Chevrolet:Corvette
1977:Plymouth:Roadrunner
1984:Toyota:Supra
1984:Toyota:Supra

 Old Car Inventory Menu 
 1. Add a new car 
 2. List cars 
 3. Quit 

Goodbye

```

## Example Validations
| Input | Output Behavior |
|--------|------------------|
| 3 | 1 Odd  2 Even  3 Odd |
| 7 | 1 Odd  2 Even  3 Odd  4 Even  5 Odd  6 Even  7 Odd |

## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]

## Resources
Used class slides

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
