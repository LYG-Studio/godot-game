extends Node2D

@export var card_type: CardResource

@onready var label: Label = $Label

func set_card_type(cr: CardResource):
	self.card_type = cr

func _ready() -> void:
	if not card_type:
		push_error("oi2222")
		return
		
	
	self.label.text = self.card_type.name
	
	if not card_type.effect:
		push_error("2222oi")
		return
		
	self.card_type.effect.on_draw()
