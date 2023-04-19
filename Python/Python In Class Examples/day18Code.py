# Day 18
# EGR 101

import math
from math import tan, sqrt, radians, sin

#accel due to gravity, m/s/s
g = 9.8
# angle of 1st hill degrees
thetaFirstHill = 42
# radius of shortest curve m
r = 6
# angle of bank shortest curve deg.
thetaCurve = 45

# acceleration down the hill

# a = sin (theta)
a = sin(radians(thetaFirstHill))



# Display to 3 decimals
print(f'The acceleration down the first hill is {a:.3f} g')

# speed around shortest curve v = sqrt (rg tan theta)
v = sqrt(r*g*tan(radians(thetaCurve)))

# display 2 decimal places
print(f'The speed around the shortest curve of the roller coaster is {v:.2f} m/s.')

# 2 input statements get planet and new g value
planet = input('What is the planet? ')
gravity = float(input('What is the gravity on this planet? '))
              
# calculate new speed around curve
v = sqrt(r*gravity*tan(radians(thetaCurve)))

# output results
print(f'The speed around the curve on {planet} would be {v:.2f} m/s')