extends Node2D

const CARD = preload("res://prefabs/Card/Card.tscn")

# receives the deck the match will use
const DECK = [
	{"type": "Copas", "value": 1}, # should we add the ID and card image/animations?
	{"type": "Copas", "value": 2},
	{"type": "Copas", "value": 3},
	{"type": "Copas", "value": 4},
	{"type": "Copas", "value": 5},
	{"type": "Copas", "value": 6},
	{"type": "Copas", "value": 7},
	{"type": "Copas", "value": 8},
	{"type": "Copas", "value": 9},
	{"type": "Copas", "value": 10},
] # leaving it hardcoded for now to get the match rules done

# max health could be received as well if we plan changing it from match to match
const MAX_HEALTH = 20 # leaving it hardcoded for now
const ROOM_SIZE = 4

var currentHealth = MAX_HEALTH
var deckPile = DECK
var discardPile = []
var activeCards = []

# controls all the general rules of a match:
# - 4 cards make a room
# - users picks up to 3 and then new cards are added unil there are 4 again or until the deck runs
#      out of cards
# - picked cards are activated and resolved if there is need for user input and then the card is discarded
# - only one potion can be used with the healing effect per room, subsequent ones need to be discarded
# - the weapon can only be used against enemies of lower power than the last defeated one.
#      If no enemy was defeated then there is no limit.
# - if a weapon can not be used, the fight will be bare handed, receiving full damage
# - the weapon use is optional, the user always has the option of fighting bare handed and receiving
#      full damage
# - when picking a weapon, it trashes the previous one and all its defeated enemies worn down counter
# - if health reaches zero, match finishes on a LOSS
# - if all cards are discarted/used and health is above zero, match finishes on a WIN
