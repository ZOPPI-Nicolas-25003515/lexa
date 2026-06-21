extends Control

func _on_btn_plein_ecran_pressed() -> void:
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_WINDOWED:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)

func _on_h_slider_value_changed(value: float) -> void:
	var bus_index = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_volume_db(bus_index, value)
	if value <= -30:
		AudioServer.set_bus_mute(bus_index, true)
	else:
		AudioServer.set_bus_mute(bus_index, false)

func _on_btn_retour_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/scenes/main_menu.tscn")


func _on_btn_plein_ecran_mouse_entered() -> void:
	$SonSurvol.play()


func _on_btn_retour_mouse_entered() -> void:
	$SonSurvol.play()
