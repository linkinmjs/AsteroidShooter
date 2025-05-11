extends Node

var score = 0
var is_game_over = false

func _process(_delta: float) -> void:
	if is_game_over && Input.is_action_just_pressed("shoot"):
		restart_game()

func restart_game():
	get_tree().reload_current_scene()
	score = 0
	is_game_over = false

func addScore(points):
	if not is_game_over:
		score += points

func set_is_game_over(value):
	is_game_over = value
