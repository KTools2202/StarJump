extends Node2D

#@onready var checkpoint_gui = preload("res://scenes/checkpoint.tscn").instance()
# Called when the node enters the scene tree for the first time.
func _ready():
	load_scene("res://scenes/start_button.tscn")
	#add_child(checkpoint_gui)

	# Using this logic for multiple "checkpoints"
	for checkpoint in get_tree().get_nodes_in_group("checkpoints"):
		checkpoint.connect("checkpoint_reached", Callable(self, "_on_checkpoint_reached"))

func load_scene(scene_path):
	# Load the new scene
	var new_scene = load(scene_path).instantiate()
	
	# Get the current scene (the first child of the root)
	var current_scene = get_tree().root.get_child(0)
	
	# Remove the current scene if it exists
	if current_scene:
		current_scene.queue_free()
	
	# Add the new scene as a child of the root node
	get_tree().root.add_child(new_scene)
	new_scene.owner = get_tree().root
	
func _on_checkpoint_reached():
	#checkpoint_gui.show_message("Checkpoint Reached", "You have reached a checkpoint.", Callable(self, "_checkpoint_callback"))
	pass

func _checkpoint_callback():
	# Add logic to handle what happens after the checkpoint message is dismissed
	print("Checkpoint acknowledged")
