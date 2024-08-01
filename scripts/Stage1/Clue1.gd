extends Area2D 

@onready var hint = $Sun  

func _ready():
	hint.visible = false

# Showing text when the player enters the area
func _on_body_entered(body):
	if body.is_in_group("player"):  # The player-character is in a group called "player"
		hint.visible = true

# Hiding text when the player exits the area
func _on_body_exited(body):
	if body.is_in_group("player"):
		hint.visible = false
