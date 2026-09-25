extends FoldableContainer

@onready var video = $".."

@onready var stop_button = $Stop
@onready var reverse_30_button = $"Control/Reverse 30s"
@onready var pause_play_button = $"Control/Pause & Play"
@onready var forward_30_button = $"Control/Forward 30s"


func _on_pause__play_toggled(toggled_on: bool) -> void:
	if toggled_on:
		pause_play_button.icon = load("res://assets/images/ui/play.png")
		video.paused = true
	else:
		pause_play_button.icon = load("res://assets/images/ui/pause.png")
		video.paused = false


func _on_stop_pressed() -> void:
	get_tree().change_scene_to_file(Global.previous_menu)


func _on_reverse_30s_pressed() -> void:
	if video.is_playing():
		video.paused = true
		video.stream_position = max(0.0, video.stream_position - 30.0)
		video.paused = false


func _on_forward_30s_pressed() -> void:
	if video.is_playing():
		video.paused = true
		video.stream_position = max(0.0, video.stream_position + 30.0)
		video.paused = false
