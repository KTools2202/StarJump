extends Area2D 

@onready var label = $Label

func _ready():
	label.text = "It's the closest star to the Sun!"
	label.visible_characters = 0

# Showing text when the player enters the area
func _on_body_entered(body):
	if body.is_in_group("player"):  # The player-character is in a group called "player"
		label.visible_characters = -1

# Hiding text when the player exits the area
func _on_body_exited(body):
	if body.is_in_group("player"):
		label.visible_characters = 0
