extends Marker2D

@export var power_ups: Array[PackedScene]
@export var max_y: float
@export var min_y: float
@export var max_x: float
@export var min_x: float

@onready var timer: Timer = $Timer

func create_power_up():
	if GameManager.is_game_over:
		timer.stop()
	
	var random_power_up_scene = power_ups.pick_random()
	var random_power_up_instance = random_power_up_scene.instantiate()
	add_child(random_power_up_instance)
	var random_y = randf_range(min_y, max_y)
	var random_x = randf_range(min_x, max_x)
	
	random_power_up_instance.global_position.y = random_y
	random_power_up_instance.global_position.x = random_x

func _on_timer_timeout() -> void:
	create_power_up()
