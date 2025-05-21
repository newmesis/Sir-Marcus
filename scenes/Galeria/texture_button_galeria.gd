extends TextureButton
# referencia al TextureButton
@onready var texture_button = $TextureButton_galeria

func _ready():
	# me aseguro de que la referencia sea válida antes de usarlo
	if texture_button == null:
		push_error("TextureButton_galeria no encontrado en la escena.")
		return

func _on_Button_siguiente_pressed():
	var current_texture = texture_button.texture_normal
	var next_texture_path = ""
	
	#Verifico la textura actual y cambia a la siguiente
	if current_texture.resource_path.ends_with("1.jpg"):
		next_texture_path = "res://scenes/Galeria/Imagenes/2.jpg" # Comprobamos la ruta
	else:
		next_texture_path = "res://scenes/Galeria/Imagenes/1.jpg" #volvemos a la primera imagen si no es la primera


	var next_texture = load(next_texture_path)
	if next_texture != null:
		texture_button.texture_normal = next_texture
	else:
		push_error("La textura no se pudo cargar: " + next_texture_path)
