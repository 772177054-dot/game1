extends Node

const MAIN_MENU_SCENE := preload("res://scenes/MainMenu.tscn")
const BATTLE_MAP_SCENE := preload("res://scenes/BattleMap.tscn")

@onready var scene_root: Node = $SceneRoot

func _ready() -> void:
	show_main_menu()

func show_main_menu() -> void:
	_load_scene(MAIN_MENU_SCENE)

func start_game() -> void:
	_load_scene(BATTLE_MAP_SCENE)

func _load_scene(scene: PackedScene) -> void:
	for child in scene_root.get_children():
		child.queue_free()

	var instance := scene.instantiate()
	scene_root.add_child(instance)

	if instance.has_signal("start_game_requested"):
		instance.start_game_requested.connect(start_game)
	if instance.has_signal("main_menu_requested"):
		instance.main_menu_requested.connect(show_main_menu)
