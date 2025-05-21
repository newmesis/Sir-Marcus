class_name Game # Definimos la clase "Game" para ser referenciada desde otro codigo.
extends Node # La clase hereda de la clase base Node de Godot, 
			#  tendrá todas las funcionalidades básicas de un nodo en el motor de juego.

#Cuando el nodo esté listo empezamos.
@onready var _pause_menu := $InterfaceLayer/PauseMenu as PauseMenu 

#Manejamos eventos de entrada que no han sido procesados por otros nodos
func _unhandled_input(event: InputEvent) -> void: #evento de entrada
	if event.is_action_pressed(&"toggle_fullscreen"): # cambio a pantalla completa
		var mode := DisplayServer.window_get_mode()
		if mode == DisplayServer.WINDOW_MODE_FULLSCREEN or \
				mode == DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		get_tree().root.set_input_as_handled()

	elif event.is_action_pressed(&"toggle_pause"):
		var tree := get_tree()
		tree.paused = not tree.paused
		if tree.paused:
			_pause_menu.open()
		else:
			_pause_menu.close()
		get_tree().root.set_input_as_handled()
