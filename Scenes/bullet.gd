extends RigidBody2D

var player = preload("res://Scenes/player.tscn")
var player_instance = player.instantiate()
var gun = player_instance.get_node("Gun")
var bullet_spawn = gun.get_node("Spawnhold")
var bullet_speed: float = 1000  # Default speed
var lifetime: float = 2.0  # How long the bullet exists
var mouse_pos = get_global_mouse_position()
var spawn = bullet_spawn.position
var direction = mouse_pos - spawn
var angle = direction.angle()


func set_direction(direction: Vector2, bullet_speed: float) -> void:
	linear_velocity = direction.normalized() * bullet_speed  # Set the bullet's velocity
