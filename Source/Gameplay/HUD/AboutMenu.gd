extends Control

onready var slider = $Slider

var is_sliding:bool = false

func _ready() -> void:
	slider.rect_position.x = -372

func cancel():
	self.hide()

func show():
	if is_sliding:
		return
	
	is_sliding = true
	
	visible = true
	
	var tween = create_tween()
	tween.tween_property(slider,"rect_position:x", 0, 0.1)
	tween.tween_property(self, "is_sliding", false, 0)

func hide():
	if is_sliding:
		return
	
	is_sliding = true
	
	var tween = create_tween()
	tween.tween_property(slider,"rect_position:x", -372, 0.1)
	tween.tween_property(self, "is_sliding", false, 0)
	tween.tween_property(self, "visible", false, 0)


func profile() -> void:
	yield(get_tree().create_timer(0.1), "timeout")
	get_tree().change_scene("res://Source/Gameplay/HUD/ProfileScreen.tscn")


func credit() -> void:
	pass # Replace with function body.


func privacy() -> void:
	pass # Replace with function body.


func faq() -> void:
	pass # Replace with function body.
