extends Node2D



func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/test_world.tscn")
