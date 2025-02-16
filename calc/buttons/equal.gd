extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect(_on_body_entered)


func _on_body_entered(body):
	if $"../../op".text == "+":
		$"../../results".text = str(float($"../../input1".text)+float($"../../input2".text))
	elif $"../../op".text == "-":
		$"../../results".text = str(float($"../../input1".text)-float($"../../input2".text))
	elif $"../../op".text == "*":
		$"../../results".text = str(float($"../../input1".text)*float($"../../input2".text))
	elif $"../../op".text == "/":
		$"../../results".text = str(float($"../../input1".text)/float($"../../input2".text))
	Globals.calcinput = 0
	$"../../input1".text = ""
	$"../../input2".text = ""
