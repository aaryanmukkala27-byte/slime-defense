extends CharacterBody2D
var up=false

func _physics_process(delta: float) -> void:
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	velocity.y=-50


func _on_area_2d_body_exited(body: Node2D) -> void:
	velocity.y=50
