extends Node3D

var laser_scene : PackedScene = preload("res://Scenes/laser.tscn")
var meteor_scene : PackedScene = preload("res://Scenes/meteors.tscn")
var obstacle_scene : PackedScene = preload("res://Scenes/obstacle.tscn")
var game_size = {
	'left': -30,
	'right': 30,
	'front': -10,
	'back': -150
}

var elapsed_time: float = 0.0

func _ready() -> void:
	GlobalRecord.player_died.connect(_on_player_died)
	$AudioStreamPlayer.play()
	for i in randi_range(20,25):
		var obstacle = obstacle_scene.instantiate()
		$Projectiles.add_child(obstacle)
		obstacle.set_xy_pos(
			randf_range(game_size['left'], game_size['right']),
			randf_range(game_size['front'], game_size['back'])
		)
	

func _process(delta: float) -> void:
	elapsed_time += delta
	var minutes = int(elapsed_time / 60)
	var seconds = int(elapsed_time) % 60
	$TimeLabel.text = "%02d:%02d" % [minutes, seconds]

func _on_player_died() -> void:
	GlobalRecord.save_if_better(elapsed_time)
	get_tree().call_deferred("change_scene_to_file", "res://Scenes/title.tscn")

func _on_player_shoot_laser(pos: Vector3) -> void:
	var laser = laser_scene.instantiate() as Area3D
	$Projectiles.add_child(laser)
	laser.position = pos + Vector3(0, 0, -1)


func _on_meteor_timer_timeout() -> void:
	var meteor = meteor_scene.instantiate()
	$Projectiles.add_child(meteor)
