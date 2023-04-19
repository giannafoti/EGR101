# Day 24 code
# EGR 101

import store 

# costs of history themed books on bookshop.org 11/10/2021
books = {"Code Girls": 15.63, "The American Gospel": 17.48, "The Radium Girls": 16.55, \
         "The Girls of Atomic City": 16.56, "An Indigenous Peoples' History of the United States":14.72}


# print the store's inventory
store.printPrices(books)

# add a book to the inventory
books = store.addItem(books, "When Books Went to War", 15.63)
store.printPrices(books)



# list of books I want to buy
buying = [ "Code Girls", "The Girls of Atomic City"]

# see how much I owe
owe = store.cost(books, buying)

print(f'I owe ${owe:.2f} for buying {len(buying)} books')

s = input('enter a character: ')
sorter.letter_counter(s)