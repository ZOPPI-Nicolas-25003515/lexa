extends Control

func _on_start_pressed() -> void:
	Global.charger_sauvegarde = false
	get_tree().change_scene_to_file("res://assets/scenes/scene1.tscn")
	
func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/scenes/options_menu.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_start_mouse_entered() -> void:
	$SonSurvol.play()

func _on_options_mouse_entered() -> void:
	$SonSurvol.play()


func _on_quit_mouse_entered() -> void:
	$SonSurvol.play()


func _on_continuer_pressed() -> void:
	if Dialogic.Save.has_slot("partie_1"):
		Global.charger_sauvegarde = true
		get_tree().change_scene_to_file("res://assets/scenes/scene1.tscn")
	else:
		$SonErreur.play()
		$CadreErreur.show()
		await get_tree().create_timer(2.0).timeout
		$CadreErreur.hide()


func _on_continuer_mouse_entered() -> void:
	$SonSurvol.play()
