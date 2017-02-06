extends Node

const ground_width = 168
const scn_ground = preload("res://scenes/ground.tscn")
const amount_to_fill_view = 2

func _ready():
	for i in range(amount_to_fill_view):
		spawn_and_update_pos()

func spawn_and_update_pos():
	spawn()
	go_next_pos()

func spawn():
	var new_ground = scn_ground.instance()
	new_ground.set_pos(get_pos())
	new_ground.connect("exit_tree", self, "spawn_and_update_pos")
	get_node("container").add_child(new_ground)

func go_next_pos():
	set_pos(get_pos() + Vector2(ground_width, 0))