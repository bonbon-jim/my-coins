extends Area2D

@export var speed = 400

func _ready():
	body_entered.connect(_on_body_entered)

func _physics_process(delta: float) -> void:
	position += Vector2.DOWN * speed * delta
	# delta to ensure consistantance across device
	# 60 times per second
		# 2px per movement
		# 1s -> 120px
	# 30 times per second
		# 2px per movement
		# 1s -> 60pxad

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		collect()
		queue_free() # delete coin
		
func collect():
	# Your coin collection logic here
	var ui: UserInterface = get_tree().get_first_node_in_group('ui')
	ui.update_socre_label()
