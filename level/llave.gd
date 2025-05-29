class_name llave
extends Area2D
## Collectible that disappears when the player touches it.


@onready var animation_player := $AnimationPlayer as AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	animation_player.play(&"picked")
	(body as Player).coin_collected.emit()
	get_tree().change_scene_to_file("res://scenes/Puerta Castillo/puerta.tscn")
