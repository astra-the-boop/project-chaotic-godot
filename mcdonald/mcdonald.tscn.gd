extends Node2D

@onready
var label: Label = $Label

@onready
var area: Area2D = $Area2D

@export var player: CollisionObject2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.modulate.a = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var opacity_change_rate = delta * 5
	if not area.overlaps_body(player):
		opacity_change_rate *= -1
	
	label.modulate.a = clampf(label.modulate.a + opacity_change_rate, 0.0, 1.0)
