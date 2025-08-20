extends Area2D

func _on_body_entered(body):
	print("+1 petisco")
	queue_free()
