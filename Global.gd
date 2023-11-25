extends Node

var wins = 0
var covered = 0
var target_grid = [	[0, 0, 0, 0, 0, 0], 
					[0, 0, 0, 0, 0, 0],
					[0, 0, 0, 0, 0, 0], 
					[0, 0, 0, 0, 0, 0], 
					[0, 0, 0, 0, 0, 0], 
					[0, 0, 0, 0, 0, 0] ]
var rng = RandomNumberGenerator.new()
var total = 1000
var two_in_three = [0, 1, 1]
@export var spawn_object_block = preload("res://block.tscn")
@export var spawn_object_square = preload("res://target_square.tscn")
@export var spawn_object_sign_square = preload("res://sign_square.tscn")
var previous_target_grid = [[0, 0, 0, 0, 0, 0], 
							[0, 0, 0, 0, 0, 0],
							[0, 0, 0, 0, 0, 0], 
							[0, 0, 0, 0, 0, 0], 
							[0, 0, 0, 0, 0, 0], 
							[0, 0, 0, 0, 0, 0] ]

func new_target():
	total = 0
	target_grid =  [[0, 0, 0, 0, 0, 0], 
					[0, 0, 0, 0, 0, 0],
					[0, 0, 0, 0, 0, 0], 
					[0, 0, 0, 0, 0, 0], 
					[0, 0, 0, 0, 0, 0], 
					[two_in_three[rng.randi_range(0,2)], two_in_three[rng.randi_range(0,2)], two_in_three[rng.randi_range(0,2)], two_in_three[rng.randi_range(0,2)], two_in_three[rng.randi_range(0,2)], 1]]
	
	#instead of all of these loops, should really loop backwards through the array from 4 back to 0
	for item in range(0, 5):
		if target_grid[5][item] == 1:
			target_grid[4][item] = rng.randi_range(0,1)
	for item in range(0, 5):
		if target_grid[4][item] == 1:
			target_grid[3][item] = rng.randi_range(0,1)
	for item in range(0, 5):
		if target_grid[3][item] == 1:
			target_grid[2][item] = rng.randi_range(0,1)
	for item in range(0, 5):
		if target_grid[2][item] == 1:
			target_grid[1][item] = rng.randi_range(0,1)
	for item in range(0, 5):
		if target_grid[1][item] == 1:
			target_grid[0][item] = rng.randi_range(0,1)
	
	for row in target_grid:
		for item in row:
			if item == 1:
				total += 1
	spawn_sign_squares()
	spawn_squares()
	previous_target_grid = target_grid

func _ready():
	new_target()
	spawn_block()

var block_array = []

func spawn_block():
	for i in block_array:
		i.queue_free()
	block_array = []
	for i in range(0, total):
		var obj = spawn_object_block.instantiate()
		block_array.append(obj)
		add_child(obj)

var square_array = []

var diff = -135

var locations = [[Vector2(5*diff,5*diff), Vector2(4*diff,5*diff), Vector2(3*diff,5*diff), Vector2(2*diff,5*diff), Vector2(1*diff,5*diff), Vector2(0*diff,5*diff)], 
				[Vector2(5*diff,4*diff), Vector2(4*diff,4*diff), Vector2(3*diff,4*diff), Vector2(2*diff,4*diff), Vector2(1*diff,4*diff), Vector2(0*diff,4*diff)],
				[Vector2(5*diff,3*diff), Vector2(4*diff,3*diff), Vector2(3*diff,3*diff), Vector2(2*diff,3*diff), Vector2(1*diff,3*diff), Vector2(0*diff,3*diff)], 
				[Vector2(5*diff,2*diff), Vector2(4*diff,2*diff), Vector2(3*diff,2*diff), Vector2(2*diff,2*diff), Vector2(1*diff,2*diff), Vector2(0*diff,2*diff)], 
				[Vector2(5*diff,1*diff), Vector2(4*diff,1*diff), Vector2(3*diff,1*diff), Vector2(2*diff,1*diff), Vector2(1*diff,1*diff), Vector2(0*diff,1*diff)],
				[Vector2(5*diff, 0*diff), Vector2(4*diff, 0*diff), Vector2(3*diff, 0*diff), Vector2(2*diff, 0*diff), Vector2(1*diff, 0*diff), Vector2(0*diff, 0*diff)] ]

func spawn_squares():
	for i in square_array:
		i.queue_free()
	square_array = []
	var index = 0
	for i in range(0,6):
		for j in range(0,6):
			if target_grid[i][j] == 1:
				var obj = spawn_object_square.instantiate()
				obj.position = locations[i][j]
				square_array.append(obj)
				add_child(obj)
			index += 1

var sign_square_array = []

var sdiff = -20
var sign_locations = [[Vector2(5*sdiff,5*sdiff), Vector2(4*sdiff,5*sdiff), Vector2(3*sdiff,5*sdiff), Vector2(2*sdiff,5*sdiff), Vector2(1*sdiff,5*sdiff), Vector2(0*sdiff,5*sdiff)], 
				[Vector2(5*sdiff,4*sdiff), Vector2(4*sdiff,4*sdiff), Vector2(3*sdiff,4*sdiff), Vector2(2*sdiff,4*sdiff), Vector2(1*sdiff,4*sdiff), Vector2(0*sdiff,4*sdiff)],
				[Vector2(5*sdiff,3*sdiff), Vector2(4*sdiff,3*sdiff), Vector2(3*sdiff,3*sdiff), Vector2(2*sdiff,3*sdiff), Vector2(1*sdiff,3*sdiff), Vector2(0*sdiff,3*sdiff)], 
				[Vector2(5*sdiff,2*sdiff), Vector2(4*sdiff,2*sdiff), Vector2(3*sdiff,2*sdiff), Vector2(2*sdiff,2*sdiff), Vector2(1*sdiff,2*sdiff), Vector2(0*sdiff,2*sdiff)], 
				[Vector2(5*sdiff,1*sdiff), Vector2(4*sdiff,1*sdiff), Vector2(3*sdiff,1*sdiff), Vector2(2*sdiff,1*sdiff), Vector2(1*sdiff,1*sdiff), Vector2(0*sdiff,1*sdiff)],
				[Vector2(5*sdiff, 0*sdiff), Vector2(4*sdiff, 0*sdiff), Vector2(3*sdiff, 0*sdiff), Vector2(2*sdiff, 0*sdiff), Vector2(1*sdiff, 0*sdiff), Vector2(0*sdiff, 0*sdiff)] ]

func spawn_sign_squares():
	for i in sign_square_array:
		i.queue_free()
	sign_square_array = []
	var index = 0
	for i in range(0,6):
		for j in range(0,6):
			if previous_target_grid[i][j] == 1:
				var obj = spawn_object_sign_square.instantiate()
				obj.position = sign_locations[i][j] + Vector2(174, 820)
				sign_square_array.append(obj)
				add_child(obj)
			index += 1

func _process(delta):
	if covered == total:
		wins += 1
		new_target()
		spawn_block()
