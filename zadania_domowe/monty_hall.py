from pyfiglet import Figlet
import matplotlib.pyplot as plt
import random

#P.M. made me.
#Inspiration: https://en.wikipedia.org/wiki/Monty_Hall_problem


games = 10
tries = 9999
doors = [1,2,3]

def the_game(doors, tries, change):
    wins = 0
    for i in range(0,tries):
        current_round = doors.copy()

        #place for prize
        prize = random.choice(current_round)

        #picking a door
        choice = random.choice(current_round)

        #pc knows where the prize is
        #so depending on that we have twos scenarios
        if prize == choice:
            #the first one - we know that chosen doors have prize
            #we open random, empty doors, and the second empty doors are the one that can be switched too
            current_round.remove(choice)
            opening = random.choice(current_round)
            current_round.remove(opening)
            to_change =  current_round[0]
        else:
            #the sceond one - chosen doors do not have prize
            #we have to open those that are empty and leave only those that have price
            current_round.remove(choice)
            current_round.remove(prize)
            to_change =  prize


        #simulating change:
        if change:
            choice = to_change

        #final
        if choice == prize:
            wins += 1

    return wins


#Now - running many games to create lists with number of wins for change=true and change=false
#later to create some graph out of that


#running many games - with change = True
games_true = []
for i in range(0, games):
    games_true.append(the_game(doors, tries, True))

#running many games - with change = False
games_false = []
for i in range(0, games):
    games_false.append(the_game(doors, tries, False))

plt.hist(games_true)
