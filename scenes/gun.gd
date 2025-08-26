extends Node3D

var bb_prefab := preload("res://scenes/bb.tscn")

func _ready():
	pass

func atirar():
	var bb = bb_prefab.instantiate()
	var spawn_point = $Spawn
	bb.global_transform = spawn_point.global_transform
	get_tree().current_scene.add_child(bb)

func _process(delta):
	if Input.is_action_just_pressed("tiro"):
		atirar()
