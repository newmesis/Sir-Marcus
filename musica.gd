extends Node2D


func musica_fondo_off() -> void:
	$Music.stop()
	
func musica_fondo_on() -> void:
	$Music.play()
	
	
func musica_fondo_volumen(vol:int) -> void:
	$Music.volume_db = vol



func musica_fondo_conmutar()  -> void:
	if $Music.playing:
		$Music.stop()
	else:
		$Music.play()
