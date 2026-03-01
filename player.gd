extends CharacterBody2D
const walkspeed:=200.0
const jumpforce:=350.0
const gravity=1000
func _physics_process(delta: float) -> void:
	var horizontalinput:=0.0
	if Input.is_action_pressed("right"): 
		horizontalinput+=1.0
	if Input.is_action_pressed("left"): 
		horizontalinput-=1.0
	velocity.x=horizontalinput*walkspeed
	if is_on_floor():
		velocity.y=0
		if Input.is_action_just_pressed("jump"):
			velocity.y=-jumpforce
	else:
		velocity.y+=gravity*delta
	move_and_slide()
