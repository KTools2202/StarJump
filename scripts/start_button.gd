extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready():
	# Access the TextureButton node
	var button_node = "../TextureButton"  # Assumes TextureButton is a child node of Control
	
	# Check if button_node is valid before connecting
	if button_node:
		# Connect the 'pressed' signal from TextureButton to '_on_button_pressed' method in this script
		button_node.connect("pressed", Callable(self, "_on_button_pressed"))
	else:
		print("TextureButton node not found or accessible.")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
