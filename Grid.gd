extends Node2D

var grid = []
var rlist = []

signal block_disable

func set_grid():
	Global.new_target()
	block_disable.emit()
