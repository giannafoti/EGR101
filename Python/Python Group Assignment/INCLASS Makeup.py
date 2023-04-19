#In Class Assignment Module 11
#Gianna Foti

vehicletype = input('Please put in a vehicle type [C = Compact, M = Midsize, V = Van]: ') #asking for input on which type of car
carinputtuple = {vehicletype.lower()} #creates a tuple from type of car input, makes it either upper or lower
carlist = (vehicletype.lower()) #creates a list from the type of car input, makes it either upper or lower

validcar = {'c', 'm', 'v'} #creates a set for the valid cars

#if statement for determing which car and the cost of the rental 
if carinputtuple.intersection(validcar):
    days = int(input('Number of days the vehicle was rented: ')) #asking for the amount of days rented 
    firstreading = int(input('The vehicles odometer reading at the start of the rental period: ')) #asking for the first reading
    endreading = int(input('The vehicles odometer reading at the end of the rental period: ')) #asking for final reading
    if carlist[0] == 'c': #if car is a compact car
        total = (25*days) +(0.5*(endreading-firstreading))+30 
        print(f'The total for renting a Compact car is: ${total:.2f}') #total for the rental
    elif carlist[0] == 'm': #if car is a mid size car
        total = (32.5*days)+(0.65*(endreading-firstreading))+30
        print(f'The total for renting a Midsize car is: ${total:.2f}') #total for the rental
    else: 
        if endreading-firstreading < 150: #if the car has been driven less than 150 miles 
            total = (75*days)+60 
        else: #if car is a van
            total = (75*days)+(0.75*((endreading-firstreading)-150))+60
            print(f'The total for renting a Van is: ${total:.2f}') #total for the rental c
else:
    print('Your vehicle is not valid') #if they do not put a valid input/car type 
        
        
    