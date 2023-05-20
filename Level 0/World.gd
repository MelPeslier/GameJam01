extends Node2D

@onready var moon: PackedScene = preload("res://Echoes/moon.tscn")
@onready var sun: PackedScene = preload("res://Echoes/sun.tscn")

func _ready() -> void:
	Events.connect("spawn", on_spawn)

func on_spawn(type: Events.Type):
	var pos: Vector2 = Vector2(randf_range(-30.0, 30.0), randf_range(-200.0, 200.0))
	var obj: PackedScene
	
	match type:
		Events.Type.MOON:
			obj = moon
		Events.Type.SUN:
			obj = sun
		
	obj.global_position = pos
	obj.get_tree.instantiate()
	get_tree()
