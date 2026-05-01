extends Area3D

var speed : float
var direction : float
var can_move := true

func _ready() -> void:
	direction = randf_range(-1, 1)
	position.z = -50
	var random_scale = randf_range(2, 4)
	scale = Vector3(random_scale, random_scale, random_scale)
	speed = randf_range(5, 10)

func _physics_process(delta: float) -> void:
	if can_move:
		position.z += speed * delta
		position.x += direction * speed * delta
		rotate_x(delta * 1.5)
		rotate_z(delta * 1.5)


func destroy() -> void:
	can_move = false
	$Mesh.material_overlay.set_shader_parameter("progress", 1.0)
	await get_tree().create_timer(0.3).timeout
	queue_free()

func _on_area_entered(_area: Area3D) -> void:
	GlobalRecord.player_died.emit()
	area.queue_free()
	destroy()
