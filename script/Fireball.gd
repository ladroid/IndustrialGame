extends KinematicBody2D

var velocity = Vector2()
const speed = 10000
var direction = 1

func set_fireball_direction(dir):
	direction = dir
	if dir == -1:
		$AnimatedSprite.flip_h = true

func _physics_process(delta):
	velocity.x = speed * delta * direction
	#translate(velocity)
	var collision = move_and_collide(velocity * delta)
	$AnimatedSprite.play("fire")
	if collision:
		var normal = collision.normal
		var remaining_vel = collision.remainder
		remaining_vel.bounce(normal)
		move_and_collide(remaining_vel)
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
