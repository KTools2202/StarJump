extends Area2D

signal checkpoint_reached

func _ready():
	#connect("body_entered", Callable(self, "_on_body_entered"))
	pass

func _on_body_entered(body):
	if body is CharacterBody2D:  # Assuming the player character extends CharacterBody2D
		print("Test clue")
