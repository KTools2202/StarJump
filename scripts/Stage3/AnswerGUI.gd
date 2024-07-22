extends Area2D 

@onready var panel = $Panel
@onready var heading = $Panel/Label
@onready var middle = $Panel/Body
@onready var Ans1 = $Panel/Ans1
@onready var Ans2 = $Panel/Ans2
@onready var Ans3 = $Panel/Ans3
@onready var Ans4 = $Panel/Ans4
@onready var cockpit_button = $Panel/Return

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
	cockpit_button.visible = false

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
		panel.visible = false
		heading.visible_characters = 0
		middle.visible_characters = 0
		Ans1.visible = false
		Ans2.visible = false
		Ans3.visible = false
		Ans4.visible = false

func _on_ans_3_pressed():
	middle.text = "Correct!"
	heading.visible_characters = 0
	Ans1.visible = false
	Ans2.visible = false
	Ans3.visible = false
	Ans4.visible = false
	cockpit_button.visible = true

func _on_ans_4_pressed():
	middle.text = "Incorrect!"

func _on_ans_2_pressed():
	middle.text = "Incorrect!"

func _on_ans_1_pressed():
	middle.text = "Incorrect!"


func _on_return_pressed():
	get_tree().change_scene_to_file("res://scenes/cockpit.tscn")
