extends StaticBody2D

var on = false
var off = false

func _ready():
	pass

func _physics_process(delta):
	pass

func switcher_on_off():
	if on == true and off == false:
		print("A")
		$AnimatedSprite.play("on")
		on = false
		off = true
	if on == false and off == true:
		print("B")
		$AnimatedSprite.play("off")
		on = true
		off = false
	if on == false and off == false:
		$AnimatedSprite.play("idle")
		on = true
		off = true
		print("C")

func _on_Area2D_body_entered(body):
	if "Hero" in body.name:
		switcher_on_off()
	
