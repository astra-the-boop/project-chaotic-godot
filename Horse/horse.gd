extends RigidBody2D
var direction

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var screen_center = get_viewport().get_visible_rect().size / 2
	print(get_viewport_rect())
	position = screen_center
	_new_direction()
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	position+=direction
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not $Right.is_on_screen() or not $Left.is_on_screen() or not $Up.is_on_screen() or not $Down.is_on_screen():
		_new_direction()
	else:
		get_parent().find_child("UI").score +=1
		#print("help")
	
func _new_direction():
	direction = Vector2(randi_range(-10,10),randi_range(-10,10))
	

func _on_top_collision(body: Node2D):
	if body.is_in_group("player"):
		if body.width > 2:
			if not $DeathSoundPlayer.playing:
				$DeathSoundPlayer.play()
		body.velocity.y = -1000
