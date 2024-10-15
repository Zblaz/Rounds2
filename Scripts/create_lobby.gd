extends Control



func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/test_world.tscn")

func _on_invite_friends_pressed() -> void:   #This Currently Hasnt Been Added
	pass
	
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")


func _on_create_lobby_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/create_lobby.tscn")
