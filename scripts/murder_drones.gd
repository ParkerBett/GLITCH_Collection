extends Control

@onready var camera_main = $Main/Camera
@onready var camera_episodes = $Episodes/Camera

func _ready() -> void:
	if !Global.murder_drones_main_camera:
		camera_main.enabled = false
		camera_episodes.enabled = true

func _on_play_pressed() -> void:
	Global.play_video("res://assets/video/murder-drones/murder-drones.mp4")


func _on_episodes_pressed() -> void:
	Global.murder_drones_main_camera = false
	
	camera_main.enabled = false
	camera_episodes.enabled = true


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_back_pressed_episodes() -> void:
	Global.murder_drones_main_camera = true
	
	camera_main.enabled = true
	camera_episodes.enabled = false
