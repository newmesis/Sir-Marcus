extends Node2D

var draggable = false # cuando mouse esta encima de objeto
var is_inside_dropable = false # encima de un area para soltar
var body_ref
var offset: Vector2
var initialPos : Vector2



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	initialPos=position  # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if draggable:
		if Input.is_action_pressed("click"):
			global_position = get_global_mouse_position()
			global.is_dragging=true
		elif Input.is_action_just_released("click"):
			global.is_dragging=false
			var tween = get_tree().create_tween()
			if is_inside_dropable:
				tween.tween_property(self,"position", body_ref.position, 0.2).set_ease(Tween.EASE_OUT)		
			else:
				tween.tween_property(self,"position", initialPos, 0.2).set_ease(Tween.EASE_OUT)		
				



# funciones para mover


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("dropable"):
		is_inside_dropable = true
		body_ref = body
	


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("dropable"):
		is_inside_dropable = false
		body.modulate = Color(Color.MEDIUM_PURPLE, 0.7)



# funciones para activar/desactivar draggable

func _on_area_2d_mouse_entered() -> void:
	# el mouse esta sobre objeto (si no se esta moviendo, activar)
	if not global.is_dragging:
		draggable=true
		scale = Vector2(1.05, 1.05) 



func _on_area_2d_mouse_exited() -> void:
	# el mouse sale del objeto (si no se esta moviendo, desactivar)
	if not global.is_dragging:
		draggable=false
		scale = Vector2(1, 1) 
