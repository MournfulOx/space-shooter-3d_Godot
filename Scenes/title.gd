extends Control

func _ready() -> void:
	var minutes = int(GlobalRecord.Record / 60)
	var seconds = int(GlobalRecord.Record) % 60
	$Record.text = "Best Record: %02d:%02d" % [minutes, seconds]

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://Scenes/main.tscn")
