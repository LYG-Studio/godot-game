extends HSlider

# Define audio buses and add sliders for each audio group: music, SFX, etc
func _on_volume_value_changed(value: float) -> void:
	var db = linear_to_db(value)
	AudioServer.set_bus_volume_db(0, db)


func _on_mute_toggled(toggled_on: bool) -> void:
	AudioServer.set_bus_mute(0,toggled_on)
