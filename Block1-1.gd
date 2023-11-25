extends Area2D

var not_entered = preload("res://assets/Block_Transparent.svg")
var entered = preload("res://assets/Block_Transparent_highlight.svg")

@onready var block = get_children()[0]

func _on_area_entered(body):
	block.set_texture(entered)

func _on_area_exited(area):
	block.set_texture(not_entered)
