extends Node2D

@onready
var label: Label = $Label

@onready
var area: Area2D = $Area2D

@onready
var audio_player = %AudioPlayer

@export var player: CollisionObject2D

# Sounds
var eating_sounds = [
	preload("./sounds/minecraft-eat.mp3"),
	preload("./sounds/roblox-eating-sound-effect-nom-nom-nom.mp3"),
	preload("./sounds/munch-sound-effect.mp3"),
]

var eating_the_dogs = preload("./sounds/in-springfield-theyre-eating-the-dogs.mp3")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.modulate.a = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var opacity_change_rate = delta * 5
	if not area.overlaps_body(player):
		opacity_change_rate *= -1
	
	label.modulate.a = clampf(label.modulate.a + opacity_change_rate, 0.0, 1.0)
	
	if area.overlaps_body(player) and Input.is_action_just_pressed("player_bigback"):
		player.transform = player.transform.scaled_local(Vector2(1.1, 1))
		
		# small chance to eat the dogs
		var sound
		if randf() < 0.1:
			sound = eating_the_dogs
		else:
			sound = eating_sounds.pick_random()
		
		audio_player.stream = sound
		audio_player.play()
		
