extends Node

enum Type {
	MOON,
	SUN,
}

signal spawn(type: Type, _pos: Vector2)

signal add_point(type: Type)

signal add_to_bar(type: Type, val: float)

signal add_diam(type: Type, val: float)

signal cut_scene()

signal start_game()

signal end_cinematic(val: int)

signal free_them_all()
