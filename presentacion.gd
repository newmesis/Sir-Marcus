extends Node2D


func _on_button_play_stop_pressed() -> void:
	$VideoStreamPlayer.play()


func _on_button_stop_pressed() -> void:
	$VideoStreamPlayer.stop()
