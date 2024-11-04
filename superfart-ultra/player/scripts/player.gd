extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var max_speed_y = 50.0
var max_speed_x = 50.0
var acceleration = 5.0    # Rate of acceleration
var deceleration = 5.0    # Rate of deceleration

func _process(delta: float) -> void:
	var input_direction = Vector2.ZERO

	# Check input and set direction
	if Input.is_action_pressed("ui_left"):
		input_direction.x = -1
		animated_sprite_2d.flip_h = true
	elif Input.is_action_pressed("ui_right"):
		input_direction.x = 1
		animated_sprite_2d.flip_h = false

	# Apply acceleration when moving
	if input_direction != Vector2.ZERO:
		velocity.x = lerp(velocity.x, input_direction.x * max_speed_x, acceleration * delta)
	else:
		# Apply deceleration when no input is pressed
		velocity.x = lerp(velocity.x, 0.0, deceleration * delta)

	# Move vertically at a constant speed (if required)
	velocity.y = -max_speed_y  # Modify or remove this line if you'd like vertical movement with acceleration too

	# Move the character using the velocity
	move_and_slide()
