extends CharacterBody2D

const SPEED = 300.0
#const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var sprite = $Sprite2D

func _physics_process(delta):
	# Add the gravity (not needed but still here for future reference).
	#if not is_on_floor():
		#velocity.y += gravity * delta

	# Get the input direction and handle the movement/deceleration.
	# Handle up and downs.
	var lift = Input.get_axis("ui_up", "ui_down")
	if lift != 0:
		velocity.y = lift * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED * delta)

	# Get the input direction and handle the movement/deceleration.
	# Handle left and rights
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction != 0:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED * delta)
		
	move_and_slide()
