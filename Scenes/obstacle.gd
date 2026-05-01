extends Area3D

func _ready() -> void:
	var scale_random = randf_range(4,5)
	scale = Vector3(scale_random,scale_random,scale_random)
	
	rotate_y(randf_range(0, TAU))
	$Mesh.get_children().pick_random().show()
	position.y = -5

func set_xy_pos(x:float, z:float):
	position.x = x
	position.z = z

func _physics_process(delta: float) -> void:
	position.z += 2 * delta


func _on_body_entered(_body: Node3D) -> void:
	GlobalRecord.player_died.emit()
