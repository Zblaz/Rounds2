extends Polygon2D


var rotation_speed: float = 5.0

func _process(delta: float) -> void:
	rotation += rotation_speed * delta
