extends VideoStreamPlayer

const vid1 = "res://videos/HD Alpha.mov"
const vid2 = "res://videos/HD Alpha.webm"
var path = ""

@onready var ffmpeg:FFmpegVideoStream = FFmpegVideoStream.new()

func _ready() -> void:
	path = vid1
	ffmpeg.file = path
	stream = ffmpeg
	return
	
func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("Testing"):
		visible = true
		play()
	if !is_playing():
		if Input.is_action_just_pressed("Reload"):
			ffmpeg.file = path
		if Input.is_action_just_pressed("Switch"):
			match ffmpeg.file:
				vid1:
					path = vid2
				vid2:
					path = vid1
			ffmpeg.file = path
	if Input.is_action_just_pressed("Quit"):
		get_tree().quit()
	return


func _on_finished() -> void:
	visible = false
	return
