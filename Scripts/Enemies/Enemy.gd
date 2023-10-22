extends Node

class_name Enemy

var health: int = 0
var attackDamage: int = 0

func _ready():
	pass

func getHealth() -> int:
	return health
	
func attack() -> int:
	return attackDamage
