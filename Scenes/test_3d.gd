extends Node3D

var elapsed_time: float = 0.0
var material: StandardMaterial3D

func _ready() -> void:
	material = $MeshInstance3D.get_active_material(0).duplicate()
	$MeshInstance3D.set_surface_override_material(0, material)

func _process(delta: float) -> void:
	elapsed_time += delta

	var hue = fmod(elapsed_time / 6.0, 1.0)
	material.albedo_color = Color.from_hsv(hue, 1.0, 1.0, 1.0)

	$MeshInstance3D.rotate_z(-0.5 * delta)
