extends Control

@onready var thumbnail = $Thumbnail
@onready var slider = $Slider

var number: int

var texture = "res://assets/images/digital-circus/thumbnails/1.jpg"
var video = "res://assets/video/digital-circus/1.mp4"

func _ready() -> void:
	slider.value = float(Global.murder_drones_number)
	number = int(slider.value)
	
	texture = "res://assets/images/digital-circus/thumbnails/%s.jpg" % number
	thumbnail.texture = load(texture)

func _on_slider_value_changed(value: float) -> void:
	number = int(value)
	Global.murder_drones_number = number
	
	texture = "res://assets/images/digital-circus/thumbnails/%s.jpg" % number
	thumbnail.texture = load(texture)
	

func _on_play_pressed() -> void:
	video = "res://assets/video/digital-circus/%s.mp4" % number
	Global.play_video(video)
