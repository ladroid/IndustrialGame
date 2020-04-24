extends Node2D

const speed = 16
var direction = Vector2.ZERO

func set_fireball_direction(dir):
	direction = dir

func _physics_process(delta):
	position.x += direction * speed
