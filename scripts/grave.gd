extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var inGrave = false
func hit():
	print("dsadjsaikd")
	if (inGrave):
		queue_free()


func _on_mouse_entered():
	print("Entered")
	inGrave = true

func _on_mouse_exited():
	inGrave = false
	print("Out")
