extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	load_scene("res://scenes/start_button.tscn")

func load_scene(scene_path):
	# Load the new scene
	var new_scene = load(scene_path).instance()
	
	# Get the current scene (the first child of the root)
	var current_scene = get_tree().root.get_child(0)
	
	# Remove the current scene if it exists
	if current_scene:
		current_scene.queue_free()
	
	# Add the new scene as a child of the root node
	get_tree().root.add_child(new_scene)
	new_scene.owner = get_tree().root
