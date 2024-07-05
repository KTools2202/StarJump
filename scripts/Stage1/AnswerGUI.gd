extends Area2D 

#@export var pop_up_text: String = "It's the closest star to the Sun!"

@onready var panel = $Panel
@onready var heading = $Panel/Label
@onready var body = $Panel/Body
@onready var Ans1 = $Panel/Ans1
@onready var Ans2 = $Panel/Ans2
@onready var Ans3 = $Panel/Ans3
@onready var Ans4 = $Panel/Ans4

func _ready():
	heading.text = "QUIZ!"
	
	heading.visible_characters = 0
	body.visible_characters = 0

# Showing text when the player enters the area
func _on_body_entered(body):
	if body.is_in_group("player"):  # The player-character is in a group called "player"
		heading.visible_characters = -1
		body.visible_characters = -1

# Hiding text when the player exits the area
func _on_body_exited(body):
	if body.is_in_group("player"):
		heading.visible_characters = 0
		body.visible_characters = 0
