extends Sprite2D

# Declare member variables here
var velocity = Vector2()
var speed = 200

# Called when the node enters the scene tree for the first time
func _ready():
	# Load the image as a Texture
	var texture = load(image_path)
	
	# Assign the texture to the Sprite
	self.texture = texture

# Called every frame. 'delta' is the elapsed time since the previous frame
func _process(delta):
	velocity = Vector2()

	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1

	velocity = velocity.normalized() * speed
	velocity = move_and_slide(velocity)
