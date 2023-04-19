# Homework 9
# Gianna Foti
# Due 12/01/22

#importting random
import random

def ComputerAnswer():
    #no arguments
    #returns the generated code as a string with 4 digits in it
    firstdigit = random.randint(0,9)
    seconddigit = random.randint(0,9)
    thirddigit = random.randint(0,9)
    fourthdigit = random.randint(0,9)
    randomanswer = str(firstdigit)+str(seconddigit)+str(thirddigit)+str(fourthdigit)
    #print(randomanswer)
    return randomanswer
 
def playerinput():
    #no arguments but should output a string with instructions to the player before every guess
    #return what the user typed for input as a string of all lowercase    
    playerguess = str(input('Guess a 4 digit number from 0000-9999: '))
    return playerguess
    
def lengthchecker(x):
    #argument is a string
    #returns False if the string is the correct length
    #returns True if the string is not the correct length.
    if len(x) == 4:
        return False
    else:
        return True
    
def numofbulls(playerguess, randomanswer):
    #takes player's guess and the secret code as string arguments
    #return the number of bulls in the guess as an integer
    bulls = 0
    for i in range (0, 4):
        if playerguess[i] == randomanswer[i]:
            bulls += 1
    return bulls
            
def bullsandcowsfile(file, text):
    #takes in arguments the file name and text as strings.
    #appends any text provided to it plus a new line into the file when called.
    game = open(file, 'a')
    game.write (text+'\n')
    game.close()

#function that lets us play the game 
def playball():
    counter = 0 #counter 
    randomanswer = ComputerAnswer() #calling function A
    gameFile = 'BullsAndCows.txt' #calling function E
    bullsandcowsfile('BullsAndCows.txt', 'Secret Code '+randomanswer) #function E
    playerguess = playerinput() #calling function B
    conditional = False
    while conditional == False:
        #quits the game if q 
        if playerguess.lower() == 'q':
            #quit statement 
            print (f'You quit, the correct secret code was {randomanswer}, you had this many bulls: {bulls}')
            break
        else:
            #length check
            if lengthchecker(playerguess):
                print ("Error! Invalid Input!! Try Again")
                playerguess = playerinput()
            else:
                #checking how many bulls
                bulls = numofbulls(playerguess, randomanswer)
                if bulls != len(randomanswer):
                    counter += 1
                    bullsandcowsfile('BullsAndCows.txt', f"Your guess was {playerguess} and the counter was " +str(counter))
                    print (f'You got this many bulls correct: {bulls}')
                    playerguess = playerinput()
                else:
                    counter += 1
                    #win statement
                    print (f'Congrats! You guessed the secret code {randomanswer} in {counter} guesses.')
                    bullsandcowsfile('BullsAndCows.txt', f"Congrats! The Code, {randomanswer}, was guessed correctly in "+ str(counter)+ " guesses")
                    conditional = True
    


    

    


        
            
        
