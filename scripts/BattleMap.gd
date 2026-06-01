extends Node2D

signal main_menu_requested

@onready var return_button: Button = %ReturnButton

func _ready() -> void:
	return_button.pressed.connect(func() -> void: main_menu_requested.emit())
