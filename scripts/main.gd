extends Node2D

@export var coin_scene: PackedScene

func _on_timer_timeout() -> void:
	var coin_instance = coin_scene.instantiate()
	add_child(coin_instance)
	
	print(coin_instance)
	
	var coin_instance_y_position = -100
	# 60 -> 1080
	var coin_instance_x_position = randi_range(60, 1080)
	coin_instance.position = Vector2(coin_instance_x_position, coin_instance_y_position)
	
