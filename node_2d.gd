extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("scene1");
	Dialogic.signal_event.connect(_on_dialogic_signal)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_dialogic_signal(argument: String):
	if argument == "montrer_photo":
		$CanvasLayer/TextureRect.show()
	if argument == "enlever_photo":
		$CanvasLayer/TextureRect.hide()	
