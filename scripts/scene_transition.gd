extends Control

func _ready():
	$TextureButton.connect("pressed", Callable(self, "_on_button_pressed"))

func _on_button_pressed():
	print("Button pressed!")
	get_tree().root.call("load_scene", "res://scenes/sprite_2d.tscn.tscn")
