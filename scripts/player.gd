extends CharacterBody2D

const SPEED = 160
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var input_position = Input.get_vector("a", "d","w", "s")
	velocity = input_position * SPEED
	
	move_and_slide()
