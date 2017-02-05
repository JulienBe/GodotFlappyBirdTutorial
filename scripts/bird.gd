extends RigidBody2D

const max_rotation = deg2rad(30)

func _ready():
	set_fixed_process(true)
	set_process_input(true)

func _fixed_process(delta):
	angle_control()

func angle_control():
	clamp_angle()
	if get_linear_velocity().y > 0:
		set_angular_velocity(1.5)

func clamp_angle():
	if get_rot() > max_rotation:
		set_rot(max_rotation)
	if get_rot() < -max_rotation:
		set_rot(-max_rotation)

func jump():
	set_linear_velocity(Vector2(get_linear_velocity().x, -150))
	set_angular_velocity(-3)

func _input(event):
	if event.is_action_pressed("jump"):
		jump()