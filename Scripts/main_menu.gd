extends Control


func _on_play_pressed() -> void:
		get_tree().change_scene_to_file("res://Scenes/create_lobby.tscn")

func _on_join_online_lobby_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/join_lobby.tscn")

func _on_options_pressed() -> void:
		get_tree().change_scene_to_file("res://Scenes/options_menu.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
