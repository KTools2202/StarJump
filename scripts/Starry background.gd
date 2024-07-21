extends AnimatedSprite2D

@onready var audio_player = $Background

# Called when the node enters the scene tree for the first time.
func _ready():
	set_autoplay('stars')
	audio_player.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_autoplay()

func _on_ans_4_pressed():
	audio_player.stop()
