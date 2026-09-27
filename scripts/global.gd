extends Node

var previous_menu: NodePath = "res://scenes/main.tscn"

var murder_drones_main_camera = true
var murder_drones_number = 1

var digital_circus_main_camera = true
var digital_circus_number = 1

func play_video(video: String):
	var root = get_tree().root
	var current_scene = get_tree().current_scene

	previous_menu = get_tree().current_scene.scene_file_path

	root.remove_child.call_deferred(current_scene)
	current_scene.queue_free()
	
	var video_player = load("res://scenes/video_player.tscn")
	var video_player_instance = video_player.instantiate()
	
	var final_video_path = video
	var placeholder_path = "res://assets/video/placeholder.mp4" 

	if not OS.has_feature("editor"):
		var clean_path = video.replace("res://", "")
		var exe_dir = OS.get_executable_path().get_base_dir()
		var external_path = exe_dir.path_join(clean_path)
		
		if FileAccess.file_exists(external_path):
			final_video_path = external_path
		else:
			final_video_path = placeholder_path
	else:
		if not FileAccess.file_exists(video):
			final_video_path = placeholder_path
	
	video_player_instance.video = final_video_path
	
	root.add_child.call_deferred(video_player_instance)
	get_tree().set_current_scene.call_deferred(video_player_instance)
