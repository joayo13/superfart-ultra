extends Camera2D
@onready var player: CharacterBody2D = $"../Player"
var target: Node
func _ready():
	if player:
		target = player
		global_position.y = target.global_position.y
		global_position.x = target.global_position.x
	assert(target)

func _process(delta):
	# Only update the vertical position to follow the player
	if player:
		global_position.y = target.global_position.y
