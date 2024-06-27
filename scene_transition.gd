extends Control

func _ready():
	$TextureButton.pressed.connect(_on_button_pressed)

func _on_button_pressed():
	print("Button pressed!")
	var next_scene = load("res://sprites/sprite_2d.tscn")
	get_tree().change_scene_to(next_scene)
