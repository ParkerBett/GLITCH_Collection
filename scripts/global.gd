extends Node

var previous_menu: NodePath = "res://scenes/main.tscn"

var murder_drones_main_camera = true
var murder_drones_number = 1

var digital_circus_main_camera = true
var digital_circus_number = 1

func play_video(video: String):
	var video_player = load("res://scenes/video_player.tscn")
	var video_player_instance = video_player.instantiate()

	video_player_instance.video = video
	
	var root = get_tree().root
	var current_scene = get_tree().current_scene

	previous_menu = get_tree().current_scene.scene_file_path

	root.remove_child.call_deferred(current_scene)
	current_scene.queue_free()
	
	root.add_child.call_deferred(video_player_instance)
	get_tree().set_current_scene.call_deferred(video_player_instance)
