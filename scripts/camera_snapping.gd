extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(get_child_count()):
		if(i == 0):
			continue
		get_child(i).area_no = i
		get_child(i).change_camera_pos.connect(change_camera_position)

func change_camera_position(new_position: Vector2) -> void:
	$Camera2D.global_position = new_position
