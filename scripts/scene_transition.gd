extends Control

func _ready():
	# Access the TextureButton node
	var button_node = $TextureButton  # Assumes TextureButton is a child node of Control
	
	# Check if button_node is valid before connecting
	if button_node:
		# Connect the 'pressed' signal from TextureButton to '_on_button_pressed' method in this script
		button_node.connect("pressed", Callable(self, "_on_button_pressed"))
	else:
		print("TextureButton node not found or accessible.")

func _on_button_pressed():
	print("Button pressed!")
	get_tree().change_scene_to_file("res://scenes/sprite_2d.tscn")

#func change_scene(scene_path):
	#var next_scene = load_scene(scene_path)
	#get_tree().set_current_scene(next_scene)

#func load_scene(scene_path):
	#return load(scene_path).instantiate()
