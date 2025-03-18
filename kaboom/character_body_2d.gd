extends CharacterBody2D

const speed = 550
const jump_power = -2000

const accel = 50
const friction = 70
const max_jump = 3
const gravity = 120
const reduce_width = 0.08

var current_jumps = 1
var width: float = 1:
	get:
		return width
	set(value):
		width = max(value, 1)
		scale.x = width

func _physics_process(delta: float) -> void:
	var input_dir: Vector2 = input()
	if input_dir != Vector2.ZERO:
		accelerate(input_dir)
		width -= delta * reduce_width
	else:
		add_friction()
	player_movement()
	jump()

func input() -> Vector2:
	var input_dir = Vector2.ZERO
	input_dir.x = Input.get_axis("player_left", "player_right")
	input_dir = input_dir.normalized()
	return input_dir

func accelerate(direction):
	velocity = velocity.move_toward(speed * direction, accel)

func add_friction():
	velocity = velocity.move_toward(Vector2.ZERO, friction)

func player_movement():
	move_and_slide()

func jump():
	if Input.is_action_just_pressed("player_up"):
		if current_jumps < max_jump:
			velocity.y = jump_power
			current_jumps += 1
	else:
		velocity.y += gravity
	
	if is_on_floor():
		current_jumps = 1
