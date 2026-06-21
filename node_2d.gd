extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.charger_sauvegarde == true:
		Dialogic.Save.load("partie_1")
	else:
		Dialogic.start("scene1")
	Dialogic.signal_event.connect(_on_dialogic_signal)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_dialogic_signal(argument: String):
	if argument == "montrer_photo":
		$CanvasLayer/TextureRect.show()
	if argument == "enlever_photo":
		$CanvasLayer/TextureRect.hide()	


func _on_texture_button_pressed() -> void:
	$CanvasLayer/MenuPause.show()

func _on_texture_button_mouse_entered() -> void:
	$SonSurvol.play()
