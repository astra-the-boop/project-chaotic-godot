extends Area2D


func _ready():
	body_entered.connect(_on_body_entered)
	

func _on_body_entered(body):
	if Globals.calcinput == 0:
		$"../../input1".text += "4"
	else:
		$"../../input2".text += "4"
