extends Node2D

signal change_camera_pos

var area_no: int = -1

func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body.name == "Player"):
		change_camera_pos.emit(self.global_position)
