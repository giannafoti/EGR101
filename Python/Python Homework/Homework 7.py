# Homework 7
# Gianna Foti
# Due 11/8/22

import string #imports string

lc_letters=list(string.ascii_lowercase) #lets you have all lowercase
uc_letters=list(string.ascii_uppercase) #lets you have all uppercase letters

fancycharacters = {'$', '#', '@', '&', '*' ,'!', '%'} #a set with all of the special characters that are needed 

username = input ('Enter a username: ') #asks for user input 


commonusernameset = ['kax2022', 'py_rules', 'TAsRcool', 'geauxtigahs!', 'chargersWin'] #common usernames list 
commonpassword = {'Abc!123', 'P4ssw0rd', 'birthDay%', 'Tacob&ll'} #common passwords list 

if len(username) < 6: #checking if username is too short 
    print ('Your username is too short')
elif len(username) > 16: #checking if username is too long
    print ('Your username is too long')
elif username in commonusernameset: #checking if username is in common usernames list
                print ('Error! Common name! It has already been taken.')
else: #if passes username prompt
        password = input ('Enter a password: ') #asking for password input 
        passwordset = set(password) #making a set for password
        if len(password) < 6: #checking if password is too short
            print ('Your password is too short')
        elif len(password) > 16: #checking if password is too long
            print ('Your password is too long')
        elif password in commonpassword: #checking if password is in common passwords list
                print ('Error! Common Password!')
        elif len(passwordset.intersection(lc_letters)) < 1: #checking if there is a lower case letter
            print ('Your password has to contain a lowercase letter!')
        elif len(passwordset.intersection(uc_letters)) < 1: #checking if there is an upper case letter
            print ('Your password has to contain an uppercase letter!')
        elif len(passwordset.intersection(fancycharacters)) < 1: #checking if there is a special character
            print ('Your password has to contain a special character!')
        else: 
            print (f'Welcome! You have successfully created an account {username}!') #welcome message with given username
            commonusernameset.append(username) #adding username to the used names list
            print(f'Thanks {username}, your password {password} has been set!') #welcoming user and password 
                
        
        
        
    
    
    


