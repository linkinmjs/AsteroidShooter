extends Area2D


func _process(delta: float) -> void:
	pass


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("asteroids"):
		GameManager.set_is_game_over(true)
