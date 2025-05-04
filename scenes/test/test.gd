extends Node2D

var is_alive = false
var coins = 5
var sword_cost = 3

func _ready() -> void:
	if coins > sword_cost:
		print("puedes comprar la espada")
	else:
		print("NO puedes comprar la espada")
