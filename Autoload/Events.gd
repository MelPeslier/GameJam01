extends Node

enum Type {
	MOON,
	SUN,
}

signal spawn(type: Type, _pos: Vector2)
