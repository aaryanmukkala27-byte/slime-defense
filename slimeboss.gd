extends CharacterBody2D
@export var speed: float = 50.0
var direction=-1
func _physics_process(delta):
	if is_on_wall():
		direction=-direction
	
	velocity.x = direction * speed
	if is_on_floor():
		velocity.y=-100
	else:
		velocity.y+=delta*100
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	queue_free()
