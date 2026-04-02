extends Control
@onready var settings: Control = $"."


func _on_close_pressed() -> void:
	settings.visible = false
