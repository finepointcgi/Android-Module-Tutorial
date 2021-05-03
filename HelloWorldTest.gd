extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var HelloWorld


# Called when the node enters the scene tree for the first time.
func _ready():
	if Engine.has_singleton("HelloWorld"):
		HelloWorld = Engine.get_singleton("HelloWorld")
		HelloWorld.connect("hello",self,"_on_hello")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_button_up():
	var s = HelloWorld.hello()
	print(s)
	HelloWorld.sendSignal()
	pass # Replace with function body.

func _on_hello(s):
	print(s)
	pass
