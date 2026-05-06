extends Node2D

@export var card_type: CardResource

@onready var nameLabel: Label = $VBoxContainer/Name
@onready var typeLabel: Label = $VBoxContainer/HBoxContainer/Type
@onready var valueLabel: Label = $VBoxContainer/HBoxContainer/Value


func set_card_type(cr: CardResource):
	self.card_type = cr

func _ready() -> void:
	if not card_type:
		push_error("oi2222")
		return
		
	
	self.nameLabel.text = self.card_type.name
	self.typeLabel.text = str(self.card_type.type)
	self.valueLabel.text = str(self.card_type.value)
	
	if not card_type.effect:
		push_error("2222oi")
		return
		
	self.card_type.effect.on_draw()

#func _input(event: InputEvent) -> void:
	#if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		#print(event)
