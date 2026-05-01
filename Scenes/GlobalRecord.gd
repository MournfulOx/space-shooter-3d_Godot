extends Node

var Record: float = 0.0
const SAVE_PATH = "user://record.dat"

@warning_ignore("UNUSED_SIGNAL")
signal player_died

func _ready() -> void:
	if FileAccess.file_exists(SAVE_PATH):
		var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
		Record = file.get_float()

func save_if_better(time: float) -> void:
	if time > Record:
		Record = time
		var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
		file.store_float(Record)
