extends Control


func _process(delta: float) -> void:
	if GameManager.is_game_over:
		visible = true
