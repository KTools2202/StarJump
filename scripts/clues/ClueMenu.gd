extends Control

var callback = null

func _ready():
	hide()
	$Panel/OK.connect("pressed", Callable(self, "_on_ok_button_pressed"))
	  # Start hidden

func show_message(title, body, callback_func = null):
	$Panel/Title.text = title
	$Panel/Body.text = body
	callback = callback_func
	show()

func _on_ok_button_pressed():
	hide()
	if callback and callback is Callable:
		callback.call()
