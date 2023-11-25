extends Area2D

var not_entered = preload("res://assets/Block_Transparent.svg")
var entered = preload("res://assets/Block_Transparent_highlight.svg")

@onready var block = get_children()[0]

var num_in = 0

func _process(delta):
	pass

func _on_area_entered(body):
	num_in += 1
	if num_in == 1:
		block.set_texture(entered)
		Global.covered += 1

func _on_area_exited(area):
	num_in -= 1
	if num_in == 0:
		block.set_texture(not_entered)
		Global.covered -= 1
