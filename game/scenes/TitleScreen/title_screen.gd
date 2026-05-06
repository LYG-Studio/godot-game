extends Control
@onready var settings: Control = $Settings

const COPAS = preload("res://resources/Cards/Copas.tres")
const card = preload("res://prefabs/Card/Card.tscn")
@onready var cards: Node = $Cards

func _ready() -> void:
	settings.visible = false


func _on_start_pressed() -> void:
	pass
	
func _on_continue_pressed() -> void:
	pass # Replace with function body.

func _on_settings_pressed() -> void:
	settings.visible = true

func _on_credits_pressed() -> void:
	pass # Replace with function body.

func _on_exit_pressed() -> void:
	get_tree().quit()
