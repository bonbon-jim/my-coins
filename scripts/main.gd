extends Node2D

@export var coin_scene: PackedScene

func _on_timer_timeout() -> void:
	var coin = coin_scene.instantiate()
	add_child(coin)
	
	var coin_y_position = -100
	# 60 -> 1080
	var coin_x_position = randi_range(60, 1080)
	coin.position = Vector2(coin_x_position, coin_y_position)
	
