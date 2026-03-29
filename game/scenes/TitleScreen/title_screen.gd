extends Control
@onready var settings: Control = $Settings

func _ready() -> void:
	settings.visible = false

func _on_start_pressed() -> void:
	pass # Replace with function body.

func _on_continue_pressed() -> void:
	pass # Replace with function body.

func _on_settings_pressed() -> void:
	settings.visible = true

func _on_credits_pressed() -> void:
	pass # Replace with function body.

func _on_exit_pressed() -> void:
	get_tree().quit()
