extends Node2D

func _ready() -> void:
	Music.musica_fondo_on()
	Music.musica_fondo_volumen(1)

func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	Music.musica_fondo_conmutar()


func _on_h_slider_value_changed(value: float) -> void:
	Music.musica_fondo_volumen(value)
