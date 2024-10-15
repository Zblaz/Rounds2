extends Node2D

@onready var BulletSpawnPoint = $Spawn

var bullet_speed: float = 1000
var BulletScene: PackedScene  # To hold the bullet scene
var shoot_cooldown: float = 0.3  # Delay between shots
var can_shoot: bool = true
var barrel_length = 20

func _process(delta: float) -> void:
	point_at_mouse()

func point_at_mouse():
	var mouse_pos = get_global_mouse_position()
	var direction = (mouse_pos - global_position).normalized()
	var angle: float = direction.angle()
	rotation = angle
	
	
func _ready() -> void:
	# Example to set the bullet scene based on the gun type
	BulletScene = preload("res://Scenes/Bullet.tscn")  # Change based on the gun type

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT and can_shoot:
			shoot_bullet()

func shoot_bullet():
	var bullet_instance = BulletScene.instantiate()  # Create an instance of the bullet
	bullet_instance.position = BulletSpawnPoint.position # Spawn at the gun position

	# Calculate the direction towards the mouse
	var mouse_pos = get_global_mouse_position()
	var direction = (mouse_pos - bullet_instance.position).normalized()

	bullet_instance.set_direction(direction.normalized(), bullet_speed)  # Set the bullet direction
	get_parent().add_child(bullet_instance)  # Add the bullet to the scene

	can_shoot = false  # Prevent shooting too fast
	await get_tree().create_timer(shoot_cooldown).timeout  # Await the cooldown timer
	can_shoot = true
