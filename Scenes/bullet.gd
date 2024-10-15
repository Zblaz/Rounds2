extends CollisionShape2D


func move_to(position: Vector2):
	self.position = position

func _on_bullets_body_entered(body: Node2D) -> void:
	print('collide')
