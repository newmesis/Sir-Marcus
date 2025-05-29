extends Node2D

signal picked_up_changed(picked)
signal mouse_released

var picked_up:bool = false

var initial_position 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	initial_position = position
	#print(initial_position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if picked_up:
		global_position = get_global_mouse_position()
		print(global_position)

	if Input.is_action_just_released("Mouse_left"):
		print("released")
		mouse_released.emit() # emite señal de soltar mouse
	


func _on_mouse_region_pressed() -> void:
	picked_up = true       # coger card = true
	print("cogido")
	await mouse_released   # espera soltar ratón
	picked_up = false      # coger card = false
	# position = Vector2.ZERO
	position = initial_position
	print(position)
	
	
	
