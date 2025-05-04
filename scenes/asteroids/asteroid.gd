extends Area2D

@export var min_speed = 300
@export var max_speed = 400
@export var min_rotation_speed = -180
@export var max_rotation_speed = 180

var random_speed
var random_rotation


func _ready():
	random_speed = randf_range(min_speed, max_speed)
	random_rotation = randf_range(min_rotation_speed, max_rotation_speed)
	
	
func _process(delta: float) -> void:
	position.x -= random_speed * delta
	rotation_degrees += random_rotation * delta


func _on_area_entered(area: Area2D) -> void:
	queue_free() # queue_free delete scenes
