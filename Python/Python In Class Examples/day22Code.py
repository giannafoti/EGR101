# Gianna Foti
# Day 22 Code
# EGR 101


# if you initially have 24 rabbits, how long will it take to have 1 million rabbits?
rabbits = [24]
year = 0


# display year and how many rabbits
print(f'{"Year"} {"Rabbits"}')
print(f'{"----"} {"-------"}')


while rabbits [-1] < 1000000:
    newCount = round(3.5*rabbits [-1])
    rabbits.append (newCount)
    year +=1
    print (f'{year:4g} {rabbits[-1]:7.0f}')
    
    
    

# display year and how many rabbits
print(f'{"Year"}   {"Rabbits"}')
print(f'{"----"}   {"-------"}')

    
    
print(f'After {year} years you will have {rabbits[-1]} rabbits.')


