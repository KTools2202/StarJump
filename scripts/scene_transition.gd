extends Control

func _ready():
	# Access the TextureButton node
	var button_node = $TextureButton  # Assumes TextureButton is a child node of Control
	
	# Check if button_node is valid before connecting
	if button_node:
		# Connect the 'pressed' signal from TextureButton to '_on_button_pressed' method in this script
		button_node.connect("button_up", Callable(self, "_on_button_pressed"))
	else:
		print("TextureButton node not found or accessible.")

func _on_button_pressed():
	print("Button pressed!")
	get_tree().change_scene_to_file("res://scenes/stages/stage1.tscn")
