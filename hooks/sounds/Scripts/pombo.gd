extends CharacterBody2D

const SPEED = 200

var direction := -1

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("resart"):
		get_tree().reload_current_scene()

func _physics_process(delta: float) -> void:

	velocity.x = direction * SPEED

	move_and_slide()
