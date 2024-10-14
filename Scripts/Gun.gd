extends Polygon2D

func _process(delta: float):
	var mouse_position = get_global_mouse_position()
	look_at(mouse_position)
	
