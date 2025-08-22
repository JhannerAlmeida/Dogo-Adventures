extends Area2D

func _on_body_entered(body: Node2D):
	print("+1 petisco")
	queue_free()
