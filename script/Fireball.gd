extends RigidBody2D

var velocity = Vector2()
const speed = 10000
var direction = 1
#var direction = Vector2()

func set_fireball_direction(dir):
	direction = dir
	if dir == -1:
		$AnimatedSprite.flip_h = true

func _physics_process(delta):
	velocity.x = speed * delta * direction
	set_linear_velocity(velocity)
	#set_bounce(1)
	$AnimatedSprite.play("fire")

"""func _physics_process(delta):
	velocity.x = speed * delta * direction
	move_and_slide(velocity)
	if get_slide_count() > 0:
		var collision = get_slide_collision(0)
		if collision != null:
			direction = direction.bounce(collision.normal)
	velocity.x = speed * delta
	var collision = move_and_collide(velocity * delta)
	$AnimatedSprite.play("fire")
	if collision:
		var normal = collision.normal
		var remaining_vel = collision.remainder
		remaining_vel.bounce(normal)
		move_and_collide(remaining_vel)"""
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Area2D_body_entered(body):
	if "TileMap" in body.name:
		set_bounce(1)
