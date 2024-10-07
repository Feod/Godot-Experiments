extends Node2D

@export var physBodyTarget : RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	self.add_to_group("RigidBodies")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed("P2_left"):
		velocity.x -= 1
	if Input.is_action_pressed("P2_right"):
		velocity.x += 1
	if Input.is_action_pressed("P2_up"):
		velocity.y -= 1
	if Input.is_action_pressed("P2_down"):
		velocity.y += 1
		
	velocity = velocity.normalized() * 100
	
	physBodyTarget.apply_impulse(velocity)
