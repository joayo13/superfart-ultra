extends RigidBody2D

@onready var collectible: Collectible = $Collectible  # Adjust path if necessary

func _on_collectible_collected(value: int) -> void:
	print("Collected a coin worth: ", value)
