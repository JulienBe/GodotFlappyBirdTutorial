extends Node

export var amount_to_fill_view = 0
export var scn = preload("res://scenes/pipe.tscn")
export var padding = 0
export var min_y = 0
export var max_y = 0
var cpt = 0

func _ready():
	for i in range(amount_to_fill_view):
		spawn()

func spawn():
	print(cpt)
	var new = scn.instance()
	var rnd = rand_range(min_y, max_y)
	var pos = Vector2(padding * cpt, rnd)
	new.set_pos(pos)
	new.connect("exit_tree", self, "spawn")
	add_child(new)
	cpt += 1