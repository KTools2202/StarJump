extends Node2D

@onready var sun = $Sun
@onready var polaris = $Polaris
@onready var proxima = $Proxima_centauri

# Called when the node enters the scene tree for the first time.
func _ready():
	sun.connect("button_up", Callable(self, "_on_sun_button_pressed"))
	polaris.connect("button_up", Callable(self, "_on_polaris_button_pressed"))
	proxima.connect("button_up", Callable(self, "_on_proxima_button_pressed"))

func _on_sun_button_pressed():
	get_tree().change_scene_to_file("res://scenes/stages/stage1.tscn")

func _on_polaris_button_pressed():
	get_tree().change_scene_to_file("res://scenes/stages/stage2.tscn")
	
func _on_proxima_button_pressed():
	get_tree().change_scene_to_file("res://scenes/stages/stage3.tscn")
