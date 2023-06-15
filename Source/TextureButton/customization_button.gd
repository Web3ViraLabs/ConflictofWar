extends TextureButton

#class_name SmartTextureButton

onready var pressed_audio = $Pressed
onready var focused_audio = $Focused

func button_pressed():
	if GamePlay.interface_sound:
		pressed_audio.play()
	#get_tree().change_scene("res://Source/Gameplay/HUD/Customization.tscn")

func focus_entered():
	pass
	#focused_audio.play()
