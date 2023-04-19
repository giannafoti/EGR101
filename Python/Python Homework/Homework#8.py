# Homework 8
# Gianna Foti
# Due 11/8/22

import random

#making a dictionary
dictionary = {'wins': 0, 'loses': 0, 'ties': 0}

#making a counter
counter = 1

#while statement to play game multiple 
while True:
#user input
    userinput = input("Enter rock, paper, or scissors: ")
    userinput = userinput.lower()
#data structure of weapons
    weapons = ["rock", "paper", "scissors"]
#computer choosing a random game
    randomweapons = random.choice(weapons)
#makinf an if statement for if there isnt 
    if userinput not in weapons:
        print (f"That was not a valid input. Please try again")
#asks again if input is not valid
        userinput = input("Enter rock, paper, or scissors: ")
#making an if statement if there is a tie
    if userinput == randomweapons:
        print("The game has begun")
        print (f"You both selected {userinput}. It is a tie!")
#adding 1 to the ties section in my dictionary
        dictionary['ties'] += 1
    elif userinput == "rock":
#rock beats scissors win
        if randomweapons == "scissors":
            print("The game has begun")
            print (f"You chose {userinput}, the computer chose {randomweapons}. Rock beats scissors. You win!")
#adding 1 to the wins section in my dictionary            
            dictionary['wins'] += 1
        else:
            print("The game has begun")
            print (f"You chose {userinput}, the computer chose {randomweapons}. Paper beats rock. You lose.")
#adding 1 to the loses section in my dictionary
            dictionary['loses'] += 1
    elif userinput == "paper":
#paper beats rock win
        if randomweapons == "rock":
            print("The game has begun")
            print(f"You chose {userinput}, the computer chose {randomweapons}. Paper covers rock! You win!")
#adding 1 to the wins section in my dictionary            
            dictionary['wins'] += 1
        else:
            print("The game has begun")
            print(f"You chose {userinput}, the computer chose {randomweapons}. Scissors cuts paper! You lose.")
#adding 1 to the loses section in my dictionary            
            dictionary['loses'] += 1
    elif userinput == "scissors":
#scissors beats paper win
        if randomweapons == "paper":
            print("The game has begun")
            print(f"You chose {userinput}, the computer chose {randomweapons}. Scissors cuts paper! You win!")
#adding 1 to the wins section in my dictionary          
            dictionary['wins'] += 1
        else:
            print("The game has begun")
            print(f"You chose {userinput}, the computer chose {randomweapons}. Rock smashes scissors! You lose.")
#adding 1 to the loses section in my dictionary           
            dictionary['loses'] += 1
#making a function to play the game again           
    playagain = input("Do you want to play again? Please type y or n: ")
#anything other than y displays rounds and scores and breaks the code
    if playagain.lower() != "y":
        print (f"You played {counter} games. You won {dictionary['wins']} games and you lost {dictionary['loses']}. You tied {dictionary['ties']} times")
        break
    else:
#adds one to the counter
        counter += 1