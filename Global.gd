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

func new_target():
	total = 0
	target_grid =  [[0, 0, 0, 0, 0, 0], 
					[0, 0, 0, 0, 0, 0],
					[0, 0, 0, 0, 0, 0], 
					[0, 0, 0, 0, 0, 0], 
					[0, 0, 0, 0, 0, 0], 
					[two_in_three[rng.randi_range(0,2)], two_in_three[rng.randi_range(0,2)], two_in_three[rng.randi_range(0,2)], two_in_three[rng.randi_range(0,2)], two_in_three[rng.randi_range(0,2)], two_in_three[rng.randi_range(0,2)]]]
	
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

func _process(delta):
	if Input.is_key_pressed(KEY_R):
		new_target()
	if covered == total:
		print("win!")
