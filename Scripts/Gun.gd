extends Node2D

@onready var bullet = $Bullets/Bullet
@onready var bullets = $Bullets
var bullet_speed = 100

func _physics_process(delta: float):
	var mouse_position = get_global_mouse_position()
	look_at(mouse_position)
func load_bullet(delta: float) :
	preload("res://Scenes/bullet.gd")

var bullet_start = self.position
#var bullet_direction = 
var draw_circle_flag = false
var radius = 5

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			draw_circle_flag = true
			queue_redraw()
			bullet.position = bullet_start

func _draw():
	if draw_circle_flag == true:
		draw_circle(bullet_start, radius, Color(0,0,1))

func _on_bullets_area_entered(area: StaticBody2D):
	var draw_circle_flag = false
	print('collide')
