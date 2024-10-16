extends Node2D


var bullet_scene = preload("res://Scenes/Bullet.tscn")
# Set the bullet scene (drag your Bullet.tscn here)
# Bullet speed
@export var bullet_speed = 500.0
# Fire rate (time in seconds between shots)
@export var fire_rate = 0.3


var gun


var _time_since_last_shot = 0.0

func _ready():
	gun = $gun

	

func _process(delta: float):

	var mouse_pos = get_global_mouse_position()
	look_at(mouse_pos)
	_time_since_last_shot += delta
	if Input.is_action_pressed("fire") and _time_since_last_shot >= fire_rate:
		shoot_bullet()
		_time_since_last_shot = 0.0

func shoot_bullet():
	var bullet = bullet_scene.instantiate()
	var mouse_position = get_global_mouse_position()
	
	bullet.position = gun.global_position - self.global_position
	
	# Calculate the direction to the mouse
	var direction = (mouse_position - global_position).normalized()
	
	# Set the bullet's velocity
	bullet.velocity = direction * bullet_speed
	
	# Add the bullet to the scene
	get_parent().add_child(bullet)
