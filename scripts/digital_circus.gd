extends Control

@onready var camera_main = $Main/Camera
@onready var camera_episodes = $Episodes/Camera

func _on_play_pressed() -> void:
	Global.play_video("res://assets/video/digital-circus/digital-circus.mp4")


func _on_episodes_pressed() -> void:
	camera_main.enabled = false
	camera_episodes.enabled = true


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_back_pressed_episodes() -> void:
	camera_main.enabled = true
	camera_episodes.enabled = false
