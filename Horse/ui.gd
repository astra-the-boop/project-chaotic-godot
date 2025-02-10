extends CanvasLayer
@onready var Horse_Bouncy = preload("res://Horse/Horse.tscn")
var score = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Score.text = str(score)

func _on_horse_button_pressed() -> void:
	var new_horse = Horse_Bouncy.instantiate()
	get_parent().add_child(new_horse)
	pass # Replace with function body.


func _on_button_pressed() -> void:
	#make it do something
	pass # Replace with function body.
