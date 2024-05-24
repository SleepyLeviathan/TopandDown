extends CharacterBody2D


@onready var weapon = $Weapon

const SPEED = 270

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var input_position = Input.get_vector("a", "d","w", "s")
	var grave = get_node_or_null("../Grave")

	velocity = input_position * SPEED
	move_and_slide()
	
	if (Input.is_action_just_pressed("mouse_left")):
		print("You hit!")
		weapon.hit()
		if(grave):
			grave.hit()
		# do animation
		# hit object of mouse position
