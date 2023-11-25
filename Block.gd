extends Area2D

var not_entered = preload("res://assets/Block_Transparent.svg")
var entered = preload("res://assets/Block_Transparent_highlight.svg")
var enabled = true

@onready var block = get_children()[0]

var num_in = 0

func _on_area_entered(body):
	if enabled == true:
		num_in += 1
		if num_in == 1:
			block.set_texture(entered)
			Global.covered += 1

func _on_area_exited(area):
	if enabled == true:
		num_in -= 1
		if num_in == 0:
			block.set_texture(not_entered)
			Global.covered -= 1

func _disable():
	enabled = false
	self.get_children()[0].visible = false

func _enable():
	enabled = true
	self.get_children()[0].visible = true
