extends CharacterBody2D


@export var lifetime = 2.0

func _physics_process(delta: float) -> void:
	var mouse_position = get_global_mouse_position()
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

func _ready():
	await(get_tree().create_timer(lifetime).timeout)
	queue_free()

func _process(delta):
	# Move the bullet in the direction it was shot
	move_and_collide((velocity * 2) * delta)

func _on_area_2d_area_entered(area: Area2D) -> void:
	hide()
