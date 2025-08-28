extends CharacterBody2D

const SPEED = 60

var direction := 1

@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	sprite.play("Walk")
	if ray_cast_right.is_colliding():
		direction = -1
		sprite.flip_h = false
	elif ray_cast_left.is_colliding():
		direction = 1
		sprite.flip_h = true

	velocity.x = direction * SPEED
	move_and_slide()

	
