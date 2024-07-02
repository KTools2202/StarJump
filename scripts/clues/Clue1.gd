extends Area2D 

@export var pop_up_text: String = "It's the closest star to the Sun!"

@onready var label = $Label  # Path may need to be changed if still not functioning

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))
	connect("body_exited", Callable(self, "_on_body_exited"))
	label.text = pop_up_text
	label.hide()

# Showing text when the player enters the area
func _on_body_entered(body):
	if body.is_in_group("player"):  # The player-character is in a group called "player"
		label.show()

# Hiding text when the player exits the area
func _on_body_exited(body):
	if body.is_in_group("player"):
		label.hide()
