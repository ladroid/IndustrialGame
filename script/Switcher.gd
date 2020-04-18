extends StaticBody2D

var on = true

func _ready():
	pass 


func _on_Area2D_body_entered(body):
	if "Hero" in body.name:
		if on == true:
			$AnimatedSprite.play("on")
			on = false
		if on == false:
			$AnimatedSprite.play("off")
			on = true
	
