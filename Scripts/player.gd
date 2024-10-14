extends CharacterBody2D

var direction := Input.get_axis("ui_left", "ui_right")
var radius = 50
const SPEED = 300.0
const JUMP_VELOCITY = -600.0

func _process(delta: float):
	var mouse_position = get_global_mouse_position()

func _physics_process(delta: float) -> void:
	var mouse_position = get_global_mouse_position()
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	var direction := Input.get_axis("ui_left", "ui_right")
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if mouse_position.x > position.x:
		$Gun.scale.y = 1
	elif mouse_position.x < position.x:
		$Gun.scale.y = -1
	


	


	
	move_and_slide()

func _on_hazards_body_entered(area: CharacterBody2D):
	hide()
	print('death')
