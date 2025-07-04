extends Node2D

@onready var player1 = preload("res://scenes/video_stream_player1.tscn")
#@onready var player2 = preload("res://test/video_stream_player1.tscn") 
#@onready var player3 = preload("res://test/video_stream_player1.tscn") 
#@onready var player4 = preload("res://test/video_stream_player1.tscn") 
#@onready var player5 = preload("res://test/video_stream_player1.tscn")
 
var p1 = null
var p2 = null
var p3 = null
var p4 = null
var p5 = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#play_thing()
	pass # Replace with function body.

#func finito(node:VideoStreamPlayer) -> void:
	#node.finished.disconnect(finito)
	#node.queue_free()
	##play_thing()
	#return

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Testing"):
		p1.play()
		#p2.play()
		#p3.play()
		#p4.play()
		#p5.play()
	if Input.is_action_just_pressed("Load"):
		p1 = player1.instantiate()
		#p2 = player2.instantiate()
		#p3 = player3.instantiate()
		#p4 = player4.instantiate()
		#p5 = player5.instantiate()
		add_child(p1)
		#add_child(p2)
		#add_child(p3)
		#add_child(p4)
		#add_child(p5)
		#p1.finished.connect(finito.bind(p1))
		#p2.finished.connect(finito.bind(p2))
		#p3.finished.connect(finito.bind(p3))
		#p4.finished.connect(finito.bind(p4))
		#p5.finished.connect(finito.bind(p5))

func play_thing() -> void:
		p1 = player1.instantiate()
		add_child(p1)

		#p1.finished.connect(finito.bind(p1))

		p1.play()
