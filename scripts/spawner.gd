extends Node

export var amount_to_fill_view = 0
export var scn = preload("res://scenes/pipe.tscn")
export var padding = 0

func _ready():
	for i in range(amount_to_fill_view):
		spawn_and_update_pos()

func spawn_and_update_pos():
	spawn()
	go_next_pos()

func spawn():
	var new = scn.instance()
	new.set_pos(get_pos())
	new.connect("exit_tree", self, "spawn_and_update_pos")
	get_node("container").add_child(new)

func go_next_pos():
	set_pos(get_pos() + Vector2(padding, 0))