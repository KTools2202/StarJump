extends Control

@onready var audio_player = $AudioStreamPlayer
@onready var button_node = $TextureButton

func _ready():	
	# Check if button_node is valid before connecting
	if button_node:
		# Play audio once scene is ready
		audio_player.play()
		# Connect the 'pressed' signal from TextureButton to '_on_button_pressed' method in this script
		button_node.connect("button_up", Callable(self, "_on_button_pressed"))
	else:
		print("TextureButton node not found or accessible.")

func _on_button_pressed():
	# Debug line
	print("Button pressed, stopping music and changing scenes!")
	audio_player.stop()
	get_tree().change_scene_to_file("res://scenes/stages/stage1.tscn")
