extends Area2D

@export var speed = 400

func _physics_process(delta: float) -> void:
	position += Vector2.DOWN * speed * delta
	# delta to ensure consistantance across device
	# 60 times per second
		# 2px per movement
		# 1s -> 120px
	# 30 times per second
		# 2px per movement
		# 1s -> 60pxad
