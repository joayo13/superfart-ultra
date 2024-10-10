class_name Collectible
extends Area2D
signal collected
@export var value: int = 1
func _on_body_entered(body):
	if body.name == "Player":
		emit_signal("collected", value)
		_on_collected()

# Default behavior for when the collectible is collected
func _on_collected():
	get_parent().queue_free()  # Remove the collectible from the scene
