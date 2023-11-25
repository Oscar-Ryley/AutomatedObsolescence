extends CharacterBody2D

#var last = Vector2(0,0)
#var max_speed = 500
#var _velocity = Vector2.ZERO

#func _physics_process(delta: float) -> void:
#	var target_global_position: Vector2 = get_global_mouse_position()
#	_velocity = Steering.follow(
#		_velocity,
#		global_position,
#		target_global_position,
#		max_speed
#	)
#	move_and_slide()

var speed = 400
var stop_down = false
var stop_up = false
var stop_right = false
var stop_left = false

func _process(delta):
	
	self.look_at(get_global_mouse_position())
	if Input.is_mouse_button_pressed( 1 ):
		self.get_children()[0].rotation += 0.01
		self.get_children()[1].rotation -= 0.01
	if Input.is_mouse_button_pressed( 2 ):
		self.get_children()[0].rotation -= 0.01
		self.get_children()[1].rotation += 0.01
	
	if (Input.is_action_pressed("ui_right") or Input.is_key_pressed(KEY_D)) and stop_right == false:
		position.x += delta * speed
	if (Input.is_action_pressed("ui_left") or Input.is_key_pressed(KEY_A)) and stop_left == false:
		position.x -= delta * speed
	if (Input.is_action_pressed("ui_up") or Input.is_key_pressed(KEY_W)) and stop_up == false:
		position.y -= delta * speed
	if (Input.is_action_pressed("ui_down") or Input.is_key_pressed(KEY_S)) and stop_down == false:
		position.y += delta * speed
		
	#self.look_at(get_global_mouse_position())
	#if get_global_mouse_position() != last and position != get_global_mouse_position():
		#position += transform.x * delta * 500
		#last = get_global_mouse_position()

func _on_rigid_body_2d_body_entered(body):
	stop_down = true

func _on_rigid_body_2d_body_exited(body):
	stop_down = false

func _on_rigid_body_2d_2_body_entered(body):
	stop_left = true

func _on_rigid_body_2d_2_body_exited(body):
	stop_left = false

func _on_rigid_body_2d_3_body_entered(body):
	stop_right = true

func _on_rigid_body_2d_3_body_exited(body):
	stop_right = false

func _on_rigid_body_2d_4_body_entered(body):
	stop_up = true

func _on_rigid_body_2d_4_body_exited(body):
	stop_up = false
