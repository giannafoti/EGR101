# Homework 9
# Gianna Foti
# Due 12/01/22

import random

def ComputerAnswer():
    firstdigit = random.randint(0,9)
    seconddigit = random.randint(0,9)
    thirddigit = random.randint(0,9)
    fourthdigit = random.randint(0,9)
    randomanswer = str((firstdigit*1000) + (seconddigit*100)+(thirddigit*10)+(fourthdigit))
    print(randomanswer)    
 
def playerinput():
    playerguess = str(input('Guess a 4 digit number from 0000-9999: '))
    
def lengthchecker(x):   
    if len(x) == 4:
        return False
    else:
        return True
    
def numofbulls(playerguess, randomanswer):
    bulls = 0
    for i in range (0, 4):
        if playerguess[i] == code[i]:
            bulls += 1
            
def bullsandcowsfile(file, text):
    game = open(file, 'a')
    game.write (text+'\n')
    game.close()

def playball():
    counter = 0
    randomanswer = ComputerAnswer() #calling function A
    gameFile = 'BullsAndCows.txt' #calling function E
    bullsandcowsfile = ('BullsAndCows.txt', 'Secret Code') #function E
    playerguess = playerinput() #calling function B
    conditional = False
    while conditional == False:
        if playerguess == 'Q':
            break
        else:
            if lengthchecker(playerguess):
                print ("Error! Invalid Input!! Try Again")
            else:
                numofbulls(playerguess, randomanswer)
                counter += 1
                bullsandcowsfile = ('BullsAndCows.txt', +str (counter))
                print (f'You got this many bulls correct: {correct}')
                counter += 1
                print (f' Congrats! You guessed the secret code in {counter} guesses.')
                bullsandcowsfile = ('BullsAndCows.txt', "Code was guessed correctly in str(counter)+ guesses")
                conditional = True