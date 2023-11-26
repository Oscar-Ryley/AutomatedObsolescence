extends CharacterBody2D

var last = Vector2(0,0)

func _process(delta):
	self.look_at(get_global_mouse_position())
	if get_global_mouse_position() != last and position != get_global_mouse_position():
		position += transform.x * delta * 500
		last = get_global_mouse_position()
