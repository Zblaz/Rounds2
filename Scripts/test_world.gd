extends Node2D

@onready var pause_menu = $Pause_Menu  #Pause Menu Func
var pause = false

func _process(delta) :
	if Input.is_action_just_pressed("pause") :
		pauseMenu()

func pauseMenu() :
	if pause :
		pause_menu.hide()
		Engine.time_scale = 1
	else :
		pause_menu.show()
		Engine.time_scale = 0
		
	pause = !pause
