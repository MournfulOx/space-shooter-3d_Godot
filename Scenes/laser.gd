extends Area3D

var speed := 15
var can_move := true

func _ready() -> void:
	scale = Vector3(0.1, 0.1, 0.1)
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector3.ONE, 0.4)
	$AudioStreamPlayer3D.play()

func _physics_process(delta: float) -> void:
	if can_move:
		position.z -= speed * delta
	if position.z <= -200:
		queue_free()

func destroy():
	can_move = false
	await get_tree().create_timer(0.3).timeout
	queue_free()


func _on_area_entered(area: Area3D) -> void:
	can_move = false
	area.destroy()
	$Red.material_overlay.set_shader_parameter("progress", 1.0)
	await get_tree().create_timer(0.2).timeout
	queue_free()
	
