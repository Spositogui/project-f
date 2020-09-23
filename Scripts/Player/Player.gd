extends KinematicBody2D

const JUMP = -400
const GRAVITY = 20
const SPEED = 200
var mov = Vector2()

func _physics_process(delta):
	
	mov.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		mov.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		mov.x = -SPEED
	else:
		mov.x = 0
	
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			mov.y = JUMP
	
	move_and_slide(mov, Vector2(0,-1))
