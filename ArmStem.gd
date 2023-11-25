extends Node2D

func _ready():
	rotation = 0
	set_as_top_level(true)
#var TargetPath = NodePath("./Arm/CharacterBody2D")

#@onready var TargetNode = get_node(TargetPath)
#@onready var StartOffset = self.transform.origin - TargetNode.transform.origin

#func _process(delta):
#	self.transform.origin = TargetNode.transform.origin + StartOffset

