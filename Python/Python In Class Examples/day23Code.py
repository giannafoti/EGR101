# day 23 code
# EGR 101

# top scoring players in Europe 2021-2022 Season
# SOURCE https://www.goal.com/en/lists/golden-shoe-2021-22-top-scorers/l9bqc67vabwp1i97pxc0f6vc6#cs2f6668c3521d7209
# Last Accessed 3/25/2022
topScorers = {"Benzema":22, "Vlahovic":21, "Lewandowski":31, "Schick":20, "Immobile":21}


# who currently holds the golden shoe title?
goldenShoe = ""

for player in topScorers:
    # replace goldenShoe vaue if
    #1st person, or if player has more goals
    if goldenShoe == "" or \
       topScorers[player] > topScorers[goldenShoe]:
        goldenShoe = player 
        
        
print(f'The golden shoe goes to {goldenShoe}')


# Simulate the standings at the end of the season
# add a random # btw. 1 & 20 to every player
import random
for player in topScorers:
    topScorers[player] += random.randint(1, 20)

    
# display results after
print(f'The new goal totals are: {topScorers}')