extends CharacterBody2D

# Declare member variables here
var speed = 200
var image_path = "res://sprites/Astronaut Sprite 1.png"

# Called when the node enters the scene tree for the first time
func _ready():
	# Create a new Sprite2D node
	var sprite = Sprite2D.new()

	# Load a texture
	var texture = load(image_path)
	sprite.texture = texture

	# Add the sprite as a child of the current node
	add_child(sprite)
	
	# Optionally, set the position of the sprite
	sprite.position = Vector2(0, 0)

# Called every frame. 'delta' is the elapsed time since the previous frame
func _process(delta):
	# Reset the built-in velocity each frame
	velocity = Vector2()

	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1

	# Normalize velocity to have consistent movement speed in all directions
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed

	# Move the character using the built-in velocity property
	move_and_slide()
