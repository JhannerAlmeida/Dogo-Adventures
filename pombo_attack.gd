extends CharacterBody2D

const SPEED = 200
var direction := -1


func _physics_process(delta: float) -> void:
	
	velocity.x = direction * SPEED

	move_and_slide()
