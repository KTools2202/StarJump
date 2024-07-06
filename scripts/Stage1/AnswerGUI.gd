extends Area2D 

#@export var pop_up_text: String = "It's the closest star to the Sun!"

@onready var panel = $Panel
@onready var heading = $Panel/Label
@onready var middle = $Panel/Body
@onready var Ans1 = $Panel/Ans1
@onready var Ans2 = $Panel/Ans2
@onready var Ans3 = $Panel/Ans3
@onready var Ans4 = $Panel/Ans4

func _ready():
	heading.text = "QUIZ!"
	middle.text = "Which star are you on?"
	panel.visible = false
	heading.visible_characters = 0
	middle.visible_characters = 0
	Ans1.visible = false
	Ans2.visible = false
	Ans3.visible = false
	Ans4.visible = false

# Showing text when the player enters the area
func _on_body_entered(body):
	if body.is_in_group("player"):  # The player-character is in a group called "player"
		panel.visible = true
		heading.visible_characters = -1
		middle.visible_characters = -1
		Ans1.visible = true
		Ans2.visible = true
		Ans3.visible = true
		Ans4.visible = true

# Hiding text when the player exits the area
func _on_body_exited(body):
	if body.is_in_group("player"):
		heading.visible_characters = 0
		middle.visible_characters = 0
		Ans1.visible = false
		Ans2.visible = false
		Ans3.visible = false
		Ans4.visible = false
