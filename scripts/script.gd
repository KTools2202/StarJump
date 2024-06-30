extends CharacterBody2D

var speed = 200
var sprite_index = 0
var sprite_textures = []

func _ready():
	# Load the textures
	sprite_textures.append(load("res://sprites/Astronaut Sprite 1.png"))
	sprite_textures.append(load("res://sprites/Astronaut Sprite 1 fire.png"))

	# Set initial sprite texture
	$Sprite2D.texture = sprite_textures[sprite_index]

func _process(delta):
	# Handle player movement
	var velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed

	move_and_slide()

	# Handle sprite toggle on key press
	if Input.is_action_just_pressed("toggle_sprite"):
		toggle_sprite()

func toggle_sprite():
	# Alternate the sprite texture
	sprite_index = (sprite_index + 1) % sprite_textures.size()
	$Sprite2D.texture = sprite_textures[sprite_index]
