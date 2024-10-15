extends CollisionShape2D

func move_to(position: Vector2):
	self.position = position

func _on_bullets_area_entered(area: StaticBody2D):
	print('collide')
