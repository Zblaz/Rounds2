extends RigidBody2D

var bullet_speed: float = 1000  # Default speed
var lifetime: float = 2.0  # How long the bullet exists

func set_direction(direction: Vector2, bullet_speed: float) -> void:
	linear_velocity = direction.normalized() * bullet_speed  # Set the bullet's velocity


func _on_Area2D_body_entered(body: StaticBody2D,Node, Area2D) -> void:
	queue_free()  # Remove the bullet 
	hide()
