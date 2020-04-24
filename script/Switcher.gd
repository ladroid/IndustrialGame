extends StaticBody2D

var on = false
var off = false

func _ready():
	pass

func _physics_process(delta):
	pass

func switcher_on_off():
	on = true
	if on == true and off == false:
		print("A<-\n\n")
		$AnimatedSprite.play("on")
		on = false
		off = true
	if on == false and off == true:
		print("->B\n\n")
		$AnimatedSprite.play("off")
		off = false
		on = true

func _on_Area2D_body_entered(body):
	if "Hero" in body.name:
		switcher_on_off()
	
