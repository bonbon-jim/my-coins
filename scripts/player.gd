extends CharacterBody2D

@export var speed = 800

# this is a func. we have created
func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	#print(input_direction)
	velocity = input_direction * speed

# this is a func. created by Godot
func _physics_process(delta):
	get_input()
	move_and_slide()
