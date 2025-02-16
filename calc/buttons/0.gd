extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	body_entered.connect(_on_body_entered)
	

func _on_body_entered(body):
	if Globals.calcinput == 0:
		$"../../input1".text += "0"
	else:
		$"../../input2".text += "0"
