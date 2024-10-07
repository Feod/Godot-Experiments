extends Camera2D

var rigid_bodies = []

func _ready():
	rigid_bodies = get_tree().get_nodes_in_group("RigidBodies")

func _process(delta):
	if rigid_bodies.size() == 0:
		return

	var average_position = Vector2()
	for body in rigid_bodies:
		average_position += body.global_position
	average_position /= rigid_bodies.size()

	global_position = average_position
