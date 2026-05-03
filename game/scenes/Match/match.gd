extends Node2D

# receives the deck the match will use
# max health could be received as well if we plan changing it from match to match

# controls all the general rules of a match:
# - 4 cards make a room
# - users picks up to 3 and then new cards are added unil there are 4 again
# - picked cards are activated and resolved if there is need for user input and then the card is discarted
# - only one potion can be used with the healing effect per room, subsequent ones need to be discarted
# - the weapon can only be used against enemies of lower power than the last defeated one.
#      If no enemy was defeated then there is no limit.
# - if a weapon can not be used, the fight will be bare handed, receiving full damage
# - the weapon use is optional, the user always has the option of fighting bare handed and receiving
#      full damage
# - when picking a weapon, it trashes the previous one and all its defeated enemies worn down counter
# - if health reaches zero, match finishes on a LOSS
# - if all cards are discarted/used and health is above zero, match finishes on a WIN
