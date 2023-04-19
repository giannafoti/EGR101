def printPrices(inventory):
    '''printPrices takes a dictionary of inventory and outputs the items in it
           (the keys) as well as their costs (the values)
       ARGUMENTS:
          inventory: a dictionary with items as keys as prices as values
       RETURNS:
          NONE
       OUTPUT:
          Text in the form ____ costs $____ for all of the items in the dictionary'''
    for item in inventory:
        print (f'{item} costs ${inventory[item]:.2f}')
    print()
    
        
def addItem(inventory, item, price):
    '''addItem adds an item and its price to the inventory
        ARGUMENTS:
          inventory: the dictionary holding the store inventory
          item: the name of the item to add
          price: how much the item costs
        RETURNS:
           inventory: the updated dictionary including the new item'''
    inventory[item] = price
    
    return inventory 

def cost(inventory, purchaseList):
    '''cost goes through the provided list, and says how much it will cost
       ARGUMENTS:
           inventory: the dictionary of the store inventory
           purchaseList: what the customer wants to buy
       RETURNS:
           total: How much it will cost to buy customer's list given the inventory'''
    total = 0
    for thing in purchaseList:
        total += inventory[thing]
        
    return total 
           
    