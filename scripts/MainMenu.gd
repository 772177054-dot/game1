extends Control

signal start_game_requested

@onready var settings_panel: PanelContainer = %SettingsPanel
@onready var start_button: Button = %StartButton
@onready var settings_button: Button = %SettingsButton
@onready var exit_button: Button = %ExitButton
@onready var back_button: Button = %BackButton

func _ready() -> void:
	settings_panel.visible = false
	start_button.pressed.connect(func() -> void: start_game_requested.emit())
	settings_button.pressed.connect(func() -> void: settings_panel.visible = true)
	back_button.pressed.connect(func() -> void: settings_panel.visible = false)
	exit_button.pressed.connect(func() -> void: get_tree().quit())
