extends Control

@onready var main = $"../"

func _on_resume_pressed() -> void:
	main.pausemenu()  #Knowen Bug Where Crashes If Pressed Resume!!!


func _on_options_pressed() -> void:
	pass   #Not Currently Coded


func _on_return_to_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
