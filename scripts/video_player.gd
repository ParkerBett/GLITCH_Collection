extends VideoStreamPlayer

@export var video: String

func _ready() -> void:
	if video == "":
		video = "res://assets/video/placeholder.mp4"
	
	stream.file = video
	play()

func _process(_delta: float) -> void:
	pass

	
func _on_finished() -> void:
	get_tree().change_scene_to_file(Global.previous_menu)
