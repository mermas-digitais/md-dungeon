extends Area2D

export var door : NodePath

func _on_Area2D_body_entered(body):
	get_node(door).get_node("DoorOpen").visible = true
	get_node(door).get_node("CollisionShape2D").set_deferred("disabled", true)
	queue_free()
