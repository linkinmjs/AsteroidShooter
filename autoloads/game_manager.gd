extends Node

var score = 0
var is_game_over = false

func _process(delta: float) -> void:
	pass

func addScore(points):
	score += points

func set_is_game_over(value):
	is_game_over = value
