extends Node2D

var image

var indice = 0    # el indice almacena el lugar actual (imagen) de la lista 
var total = 8

var imglist = [
		preload("res://scenes/Galeria/Imagenes/1.jpg"),
	preload("res://scenes/Galeria/Imagenes/2.jpg"),
	preload("res://scenes/Galeria/Imagenes/3.jpg"),
	preload("res://scenes/Galeria/Imagenes/4.jpg"),
	preload("res://scenes/Galeria/Imagenes/5.jpg"),
	preload("res://scenes/Galeria/Imagenes/6.jpg"),
	preload("res://scenes/Galeria/Imagenes/7.jpg"),
	preload("res://scenes/Galeria/Imagenes/8.jpg")
		]	
 


func _on_button_pressed() -> void:
	$img.texture= imglist[indice]
	indice = indice+1
	if indice>=total:
		indice = 0
	


func _on_button_2_pressed() -> void:
	$img.texture= imglist[indice]
	indice = indice-1
	if indice>=total:
		indice = 0
