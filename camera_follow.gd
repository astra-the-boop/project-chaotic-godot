extends Camera2D

@export var player: CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(player)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.position.x = player.position.x
	print(player.position.x)
