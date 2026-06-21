extends Control

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/scenes/scene1.tscn")

func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/scenes/options_menu.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()
