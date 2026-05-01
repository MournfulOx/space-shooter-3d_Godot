extends CharacterBody3D

var direction : float
var direction_z : float
var SPEED := 10.0
signal shoot_laser(pos: Vector3)

func _physics_process(delta: float) -> void:
	direction = Input.get_axis("Left","Right")
	direction_z = Input.get_axis("Forward","Back")
	velocity.x = direction * SPEED
	velocity.z = direction_z * SPEED
	$Mesh.rotation.z = move_toward($Mesh.rotation.z, -direction / 1.5, delta)
	$Mesh.position.y = sin(Time.get_ticks_msec() / 500.0) * 0.3 + sin(Time.get_ticks_msec() / 600.0) / 10
	move_and_slide()

	if Input.is_action_just_pressed("Shoot"):
		shoot_laser.emit(global_transform.origin)
