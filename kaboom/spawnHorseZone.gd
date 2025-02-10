extends Area2D


func _ready():

	body_entered.connect(_on_body_entered)
	

func _on_body_entered(body):
	$".."._on_horse_button_pressed()
