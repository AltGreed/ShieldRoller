extends KinematicBody2D
export var speed = 150

func _physics_process(delta):
	look_at(get_global_mouse_position())
	var direction = Vector2()
	if Input.is_action_pressed("move_up"):
		direction += Vector2(0,-1)
	if Input.is_action_pressed("move_down"):
		direction += Vector2(0,1)
	if Input.is_action_pressed("move_right"):
		direction += Vector2(1,0)
	if Input.is_action_pressed("move_left"):
		direction += Vector2(-1,0)		
	move_and_slide(direction * speed)
	
	
	

func _on_shieldInteraction_body_entered(body):
	pass # Replace with function body.


