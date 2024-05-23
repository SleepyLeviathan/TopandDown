extends Node2D

@onready var animated_sprite_2d = $AnimatedSprite2D
func hit():
	animated_sprite_2d.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
