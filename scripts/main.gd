extends Control

func _ready() -> void:
	pass


func _on_murder_drones_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/murder_drones.scn")


func _on_digital_circus_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/digital_circus.scn")
