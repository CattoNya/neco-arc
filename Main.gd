extends Node2D

var sound: AudioStream = preload("res://burenyuu_sound_effect.mp3")
var texture1 = preload("res://neco_sus.png")
var texture2 = preload("res://neco_sus_2.png")

onready var sprite = $Sprite
onready var audio = $AudioStreamPlayer
onready var animated_sprite = $AnimatedSprite

func _ready() -> void:
	audio.set_stream(sound) 
	audio.set_volume_db(2.0)
	audio.connect("finished", self, "audio_finished")

func _process(delta):
	if Input.is_action_just_pressed("space_key"):
		audio.play()
		animated_sprite.animation = "sus_talk"

func audio_finished():
	animated_sprite.animation = "idle"
