extends Control


func _ready() -> void:
	hide()
	

func _process(delta: float) -> void:
	if Input.is_action_just_released("pause"):
		if is_visible():
			hide()
		else:
			show()


func _on_resume_button_pressed() -> void:
	hide()


func _on_options_button_pressed() -> void:
	pass # Replace with function body.


func _on_main_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
