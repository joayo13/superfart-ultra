extends CharacterBody2D
# Called when the node enters the scene tree for the first time.
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
var speed = 50
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move_and_slide()
	velocity.x = 0
	if Input.is_action_pressed("ui_left"):
		animated_sprite_2d.animation = "sliding"
		animated_sprite_2d.flip_h = true
		velocity.x = -speed
	if Input.is_action_pressed("ui_right"):
		animated_sprite_2d.animation = "sliding"
		velocity.x = speed
		animated_sprite_2d.flip_h = false
	
		
