extends Control

@onready var final_score_label: Label = %FinalScoreLabel

func _process(_delta: float) -> void:
	if GameManager.is_game_over:
		visible = true
		final_score_label.text = "Your Score: " + str(GameManager.score)
