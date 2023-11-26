extends Sprite2D

func _ready():
	self.visible = true

func _process(delta):
	if Global.wins > 0:
		self.visible = false
