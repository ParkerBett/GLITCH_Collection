extends Control

@onready var version_label = $Version

func _ready() -> void:
	version_label.text = "v" + ProjectSettings.get_setting("application/config/version", "1.0.0")


func _on_murder_drones_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/murder_drones.scn")


func _on_digital_circus_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/digital_circus.scn")


func _on_quit_pressed() -> void:
	get_tree().quit()
