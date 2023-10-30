extends Node2D

@onready var enemy = %Enemy  # Change this path to wherever your enemy instance is
@onready var damage_button = %Damage
@onready var heal_button = %Heal

func _ready():
	damage_button.pressed.connect("pressed", self, "_on_damage_button_pressed")
	heal_button.pressed.connect("pressed", self, "_on_heal_button_pressed")

func _on_damage_button_pressed():
	enemy.health_component.take_damage(10)  # Take 10 damage

func _on_heal_button_pressed():
	enemy.health_component.heal(10)  # Heal 10 points
