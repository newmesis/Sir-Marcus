extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_cuentame_pressed() -> void:

	# var dialogic = Engine.get_singleton("Dialogic")
	# dialogic.start_dialogue("res://scenes/Historia/historia.dtl")
	# dialogic.satar_dialogue("historia")
	Dialogic.start("historia")
	
