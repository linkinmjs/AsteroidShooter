extends Marker2D

@export var big_asteroid_scene: PackedScene

@export var min_y: float
@export var max_y: float

func create_asteroid():
	var big_asteroid_instance = big_asteroid_scene.instantiate()
	add_child(big_asteroid_instance)
	var random_y = randf_range(min_y, max_y)
	big_asteroid_instance.global_position.y = random_y

func _on_timer_timeout() -> void:
	create_asteroid()
