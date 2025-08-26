extends RigidBody3D

@export var backdrag = 10

func _process(delta: float) -> void:
	#var new_force = sqrt(linear_velocity.z) * backdrag
	#linear_velocity.y += lerp(linear_velocity.y, new_force, delta*5)
	linear_velocity.y += backdrag
	backdrag -= 0.1
