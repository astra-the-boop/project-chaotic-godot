extends Node2D

var currentInput = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"0".button_down.connect(on0click)
	$"1".button_down.connect(on1click)
	$"2".button_down.connect(on2click)
	$"3".button_down.connect(on3click)
	$"4".button_down.connect(on4click)
	$"5".button_down.connect(on5click)
	$"6".button_down.connect(on6click)
	$"7".button_down.connect(on7click)
	$"8".button_down.connect(on8click)
	$"9".button_down.connect(on9click)
	$plus.button_down.connect(onplusclick)
	$min.button_down.connect(onminclick)
	$div.button_down.connect(ondivclick)
	$mult.button_down.connect(onmultclick)
	$equal.button_down.connect(onequalclick)

func onplusclick() -> void:
	$op.text = "+"
	currentInput = 2

func onminclick() -> void:
	$op.text = "-"
	currentInput = 2

func ondivclick() -> void:
	$op.text = "/"
	currentInput = 2

func onmultclick() -> void:
	$op.text = "*"
	currentInput = 2


func on0click() -> void:
	if currentInput == 0:
		$input1.text += "0"
	else:
		$input2.text += "0"

func on1click() -> void:
	if currentInput == 0:
		$input1.text += "1"
	else:
		$input2.text += "1"

func on2click() -> void:
	if currentInput == 0:
		$input1.text += "2"
	else:
		$input2.text += "2"

func on3click() -> void:
	if currentInput == 0:
		$input1.text += "3"
	else:
		$input2.text += "3"

func on4click() -> void:
	if currentInput == 0:
		$input1.text += "4"
	else:
		$input2.text += "4"

func on5click() -> void:
	if currentInput == 0:
		$input1.text += "5"
	else:
		$input2.text += "5"

func on6click() -> void:
	if currentInput == 0:
		$input1.text += "6"
	else:
		$input2.text += "6"

func on7click() -> void:
	if currentInput == 0:
		$input1.text += "7"
	else:
		$input2.text += "7"

func on8click() -> void:
	if currentInput == 0:
		$input1.text += "8"
	else:
		$input2.text += "8"

func on9click() -> void:
	if currentInput == 0:
		$input1.text += "9"
	else:
		$input2.text += "9"

func onequalclick() -> void:
	$results.text += str(int($input1.text)+int($input2.text))




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
