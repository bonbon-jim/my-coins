class_name UserInterface
extends CanvasLayer
var score: int = 0

func update_socre_label() -> void: 
	score += 1
	$ScoreLabel.text = 'Coins: ' + str(score)
