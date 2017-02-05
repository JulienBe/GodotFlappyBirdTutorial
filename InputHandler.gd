extends Sprite

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	self.set_process_input(true)
	print("ready")

func _input(event):
	print("input")
	if (event.is_action("MOVE_LEFT")):
		print("left")
	if (event.is_action("MOVE_RIGHT")):
		print("right")
		