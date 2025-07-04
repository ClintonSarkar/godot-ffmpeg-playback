extends VideoStreamPlayer

const vid1 = "res://videos/HD Alpha.mov"
const vid2 = "res://videos/HD Alpha.webm"
var path = ""

var manual_loop = true

@onready var ffmpeg:FFmpegVideoStream = FFmpegVideoStream.new()

func _ready() -> void:
	path = vid1
	ffmpeg.file = path
	stream = ffmpeg
	return
	
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("Testing"):
		visible = true
		manual_loop = true
		play()
		
	if manual_loop:
		if get_stream_position() >= 0.2:
			stop()
			match ffmpeg.file:
				vid1:
					path = vid2
				vid2:
					path = vid1
			ffmpeg.file = path
			play()

	if Input.is_action_just_pressed("Stop"):
		manual_loop = false

	if Input.is_action_just_pressed("Quit"):
		get_tree().quit()
	return


func _on_finished() -> void:
	visible = false

	return
