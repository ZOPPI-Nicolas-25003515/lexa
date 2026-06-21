extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_btn_sauvegarder_pressed() -> void:
	Dialogic.Save.save("partie_1")
	$SonValidation.play()
	$CadreSauvegarde.show()
	await get_tree().create_timer(2.0).timeout
	$CadreSauvegarde.hide()

func _on_btn_quitter_pressed() -> void:
	Dialogic.end_timeline()
	get_tree().change_scene_to_file("res://assets/scenes/main_menu.tscn")

func _on_btn_sauvegarder_mouse_entered() -> void:
	$SonSurvol.play()


func _on_btn_quitter_mouse_entered() -> void:
	$SonSurvol.play()


func _on_btn_reprendre_pressed() -> void:
	hide()

func _on_btn_reprendre_mouse_entered() -> void:
	$SonSurvol.play()


func _on_h_slider_value_changed(value: float) -> void:
	var bus_index = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_volume_db(bus_index, value)
	if value <= -30:
		AudioServer.set_bus_mute(bus_index, true)
	else:
		AudioServer.set_bus_mute(bus_index, false)
