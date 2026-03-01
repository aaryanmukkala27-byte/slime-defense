extends CharacterBody2D
@export var speed: float = 200.0
var direction=-1
func _physics_process(delta):
	if is_on_wall():
		direction=-direction
	
	velocity.x = direction * speed
	
	move_and_slide()
