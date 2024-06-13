extends Node

var try = 1
var quiz = [1, 2, 3]
var quizzing = {"question1": "test", "question2": "test2", "question3": "test3"}
const ANSWER1 = "answer"
const ANSWER2 = "answer2"
const ANSWER3 = "answer3"

# Called when the node enters the scene tree for the first time.
func _ready():
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("Hello there")
	if quiz == 1:
		while try <= 1:
			attempt1 == input(quizzing["question1"]) # Replace with function body.
			if attempt1 == ANSWER1:
				print('Correct!')
				try += 1
			else:
				print('Incorrect!')
	elif quizzing == 2:
		while try <= 2:
			attempt2 == input(quizzing["question2"])
			if attempt2 == ANSWER2:
				print('Correct!')
				try += 1
			else:
				print('Incorrect!')
	elif quizzing == 3:
		while try <= 3:
			attempt3 == input(quizzing["question3"])
			if attempt2 == ANSWER2:
				print('correct')
				try += 1
			else:
				print('Incorrect!')
	else:
		print("An error has been encountered. Please")
	pass
