# Gianna Foti
# EGR 101
# Homework 6
# Due 10/27/22

import  math 

#asking for inputs for base and height in meters
base = float(input("Please input a base number in meters? ")) 
height = float(input("Please input a height number in meters? "))

#calculating the area of the triangle and then displaying with correct units
areaofTri = .5 * (base*height)
print (f'The area of the triangle is {areaofTri:.2f} meters squared')

#calculating the unknown side with the pythag theorem
unknownside = math.hypot(base, height) 
print (f'The unknown side is {unknownside: .3f} meters')

#calculating the perimeter and displaying with units 
perimeter = base + height + unknownside
print (f'The perimeter is {perimeter: .2f} meters')

#finding the amount of boards needed 
boards = math.ceil(2*(perimeter/2.5))

#posts must be no more than .5 meters
post = 0.5

# individually finding how many posts are needed
fenceforbase = math.ceil(base/post)
fenceforheight = math.ceil(height/post)
fenceforunknownside = math.ceil(unknownside/post)

#adding the posts for each side to determine the total amount of posts
TotalPost = (fenceforbase + fenceforheight + fenceforunknownside)
print (f'The fence will require {boards} boards and {TotalPost} posts.')






