extends Area2D

# warning-ignore:unused_argument
func _on_body_entered(body):
	print("+1 petisco")
	queue_free()
