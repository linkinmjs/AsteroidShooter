extends Label


func _process(_delta: float) -> void:
	text = "SCORE: " + str(GameManager.score)
