extends Node

var kind = "avatar"

func _ready():
	$"Active-Tab".show()
	$"Active-Tab2".hide()
	$"Active-Tab3".hide()
	$"Active-Tab4".hide()
	$"Active-Tab5".hide()
	$"Active-Tab6".hide()
	$"Active-Tab7".hide()
	$"InActive-Tab".hide()
	$"InActive-Tab2".show()
	$"InActive-Tab3".show()
	$"InActive-Tab4".show()
	$"InActive-Tab5".show()
	$"InActive-Tab6".show()
	$"InActive-Tab7".show()


func _process(delta):
	if kind == "frame":
		$"Active-Tab".hide()
		$"Active-Tab2".hide()
		$"Active-Tab3".hide()
		$"Active-Tab4".hide()
		$"Active-Tab5".hide()
		$"Active-Tab6".hide()
		$"Active-Tab7".hide()
		$"InActive-Tab".show()
		$"InActive-Tab2".show()
		$"InActive-Tab3".show()
		$"InActive-Tab4".show()
		$"InActive-Tab5".show()
		$"InActive-Tab6".show()
		$"InActive-Tab7".show()
		$Dice.hide()
		$Color.hide()
		$Avatar.hide()
		$Frame.show()
		if GamePlay.frame_active == 0:
			$"Frame/Frame-2".position.y = 576
			$"Frame/Frame-3".position.y = 576
			$"Frame/Frame-4".position.y = 576
			$"Frame/Frame-5".position.y = 576
			$"Frame/Frame-6".position.y = 576
			$"Frame/Frame-7".position.y = 576
			$"Frame/Frame-1".position.y = 540
			$"mid/Frame-15".show()
			$"mid/Frame-16".hide()
			$"mid/Frame-17".hide()
			$"mid/Frame-18".hide()
			$"mid/Frame-19".hide()
			$"mid/Frame-20".hide()
			$"mid/Frame-21".hide()
			$"Active-Tab".show()
			$"InActive-Tab".hide()
		if GamePlay.frame_active == 1:
			$"Frame/Frame-2".position.y = 576
			$"Frame/Frame-3".position.y = 576
			$"Frame/Frame-4".position.y = 576
			$"Frame/Frame-5".position.y = 576
			$"Frame/Frame-6".position.y = 576
			$"Frame/Frame-1".position.y = 576
			$"Frame/Frame-7".position.y = 540
			$"mid/Frame-15".hide()
			$"mid/Frame-16".show()
			$"mid/Frame-17".hide()
			$"mid/Frame-18".hide()
			$"mid/Frame-19".hide()
			$"mid/Frame-20".hide()
			$"mid/Frame-21".hide()
			$"Active-Tab2".show()
			$"InActive-Tab2".hide()
		if GamePlay.frame_active == 2:
			$"Frame/Frame-1".position.y = 576
			$"Frame/Frame-3".position.y = 576
			$"Frame/Frame-4".position.y = 576
			$"Frame/Frame-5".position.y = 576
			$"Frame/Frame-6".position.y = 576
			$"Frame/Frame-7".position.y = 576
			$"Frame/Frame-2".position.y = 540
			$"mid/Frame-15".hide()
			$"mid/Frame-16".hide()
			$"mid/Frame-17".show()
			$"mid/Frame-18".hide()
			$"mid/Frame-19".hide()
			$"mid/Frame-20".hide()
			$"mid/Frame-21".hide()
			$"Active-Tab3".show()
			$"InActive-Tab3".hide()
		if GamePlay.frame_active == 3:
			$"Frame/Frame-2".position.y = 576
			$"Frame/Frame-1".position.y = 576
			$"Frame/Frame-4".position.y = 576
			$"Frame/Frame-5".position.y = 576
			$"Frame/Frame-6".position.y = 576
			$"Frame/Frame-7".position.y = 576
			$"Frame/Frame-3".position.y = 540
			$"mid/Frame-15".hide()
			$"mid/Frame-16".hide()
			$"mid/Frame-17".hide()
			$"mid/Frame-18".show()
			$"mid/Frame-19".hide()
			$"mid/Frame-20".hide()
			$"mid/Frame-21".hide()
			$"Active-Tab4".show()
			$"InActive-Tab4".hide()
		if GamePlay.frame_active == 4:
			$"Frame/Frame-2".position.y = 576
			$"Frame/Frame-3".position.y = 576
			$"Frame/Frame-1".position.y = 576
			$"Frame/Frame-5".position.y = 576
			$"Frame/Frame-6".position.y = 576
			$"Frame/Frame-7".position.y = 576
			$"Frame/Frame-4".position.y = 540
			$"mid/Frame-15".hide()
			$"mid/Frame-16".hide()
			$"mid/Frame-17".hide()
			$"mid/Frame-18".hide()
			$"mid/Frame-19".show()
			$"mid/Frame-20".hide()
			$"mid/Frame-21".hide()
			$"Active-Tab5".show()
			$"InActive-Tab5".hide()
		if GamePlay.frame_active == 5:
			$"Frame/Frame-2".position.y = 576
			$"Frame/Frame-3".position.y = 576
			$"Frame/Frame-4".position.y = 576
			$"Frame/Frame-1".position.y = 576
			$"Frame/Frame-6".position.y = 576
			$"Frame/Frame-7".position.y = 576
			$"Frame/Frame-5".position.y = 540
			$"mid/Frame-15".hide()
			$"mid/Frame-16".hide()
			$"mid/Frame-17".hide()
			$"mid/Frame-18".hide()
			$"mid/Frame-19".hide()
			$"mid/Frame-20".show()
			$"mid/Frame-21".hide()
			$"Active-Tab6".show()
			$"InActive-Tab6".hide()
		if GamePlay.frame_active == 6:
			$"Frame/Frame-2".position.y = 576
			$"Frame/Frame-3".position.y = 576
			$"Frame/Frame-4".position.y = 576
			$"Frame/Frame-5".position.y = 576
			$"Frame/Frame-1".position.y = 576
			$"Frame/Frame-7".position.y = 576
			$"Frame/Frame-6".position.y = 540
			$"mid/Frame-15".hide()
			$"mid/Frame-16".hide()
			$"mid/Frame-17".hide()
			$"mid/Frame-18".hide()
			$"mid/Frame-19".hide()
			$"mid/Frame-20".hide()
			$"mid/Frame-21".show()
			$"Active-Tab7".show()
			$"InActive-Tab7".hide()
	if kind == "avatar":
		$"Active-Tab".hide()
		$"Active-Tab2".hide()
		$"Active-Tab3".hide()
		$"Active-Tab4".hide()
		$"Active-Tab5".hide()
		$"Active-Tab6".hide()
		$"Active-Tab7".hide()
		$"InActive-Tab".show()
		$"InActive-Tab2".show()
		$"InActive-Tab3".show()
		$"InActive-Tab4".show()
		$"InActive-Tab5".show()
		$"InActive-Tab6".show()
		$"InActive-Tab7".show()
		$Dice.hide()
		$Color.hide()
		$Frame.hide()
		$Avatar.show()
		if GamePlay.avatar_actve == 0:
			$"Avatar/Frame-2".position.y = 576
			$"Avatar/Frame-3".position.y = 576
			$"Avatar/Frame-4".position.y = 576
			$"Avatar/Frame-5".position.y = 576
			$"Avatar/Frame-6".position.y = 576
			$"Avatar/Frame-7".position.y = 576
			$"Avatar/Frame-1".position.y = 540
			$"mid/Frame-8".show()
			$"mid/Frame-9".hide()
			$"mid/Frame-10".hide()
			$"mid/Frame-11".hide()
			$"mid/Frame-12".hide()
			$"mid/Frame-13".hide()
			$"mid/Frame-14".hide()
			$"Active-Tab".show()
			$"InActive-Tab".hide()
		if GamePlay.avatar_actve == 1:
			$"Avatar/Frame-2".position.y = 576
			$"Avatar/Frame-3".position.y = 576
			$"Avatar/Frame-4".position.y = 576
			$"Avatar/Frame-5".position.y = 576
			$"Avatar/Frame-6".position.y = 576
			$"Avatar/Frame-1".position.y = 576
			$"Avatar/Frame-7".position.y = 540
			$"mid/Frame-8".hide()
			$"mid/Frame-9".show()
			$"mid/Frame-10".hide()
			$"mid/Frame-11".hide()
			$"mid/Frame-12".hide()
			$"mid/Frame-13".hide()
			$"mid/Frame-14".hide()
			$"Active-Tab2".show()
			$"InActive-Tab2".hide()
		if GamePlay.avatar_actve == 2:
			$"Avatar/Frame-1".position.y = 576
			$"Avatar/Frame-3".position.y = 576
			$"Avatar/Frame-4".position.y = 576
			$"Avatar/Frame-5".position.y = 576
			$"Avatar/Frame-6".position.y = 576
			$"Avatar/Frame-7".position.y = 576
			$"Avatar/Frame-2".position.y = 540
			$"mid/Frame-8".hide()
			$"mid/Frame-9".hide()
			$"mid/Frame-10".show()
			$"mid/Frame-11".hide()
			$"mid/Frame-12".hide()
			$"mid/Frame-13".hide()
			$"mid/Frame-14".hide()
			$"Active-Tab3".show()
			$"InActive-Tab3".hide()
		if GamePlay.avatar_actve == 3:
			$"Avatar/Frame-2".position.y = 576
			$"Avatar/Frame-1".position.y = 576
			$"Avatar/Frame-4".position.y = 576
			$"Avatar/Frame-5".position.y = 576
			$"Avatar/Frame-6".position.y = 576
			$"Avatar/Frame-7".position.y = 576
			$"Avatar/Frame-3".position.y = 540
			$"mid/Frame-8".hide()
			$"mid/Frame-9".hide()
			$"mid/Frame-10".hide()
			$"mid/Frame-11".show()
			$"mid/Frame-12".hide()
			$"mid/Frame-13".hide()
			$"mid/Frame-14".hide()
			$"Active-Tab4".show()
			$"InActive-Tab4".hide()
		if GamePlay.avatar_actve == 4:
			$"Avatar/Frame-2".position.y = 576
			$"Avatar/Frame-3".position.y = 576
			$"Avatar/Frame-1".position.y = 576
			$"Avatar/Frame-5".position.y = 576
			$"Avatar/Frame-6".position.y = 576
			$"Avatar/Frame-7".position.y = 576
			$"Avatar/Frame-4".position.y = 540
			$"mid/Frame-8".hide()
			$"mid/Frame-9".hide()
			$"mid/Frame-10".hide()
			$"mid/Frame-11".hide()
			$"mid/Frame-12".show()
			$"mid/Frame-13".hide()
			$"mid/Frame-14".hide()
			$"Active-Tab5".show()
			$"InActive-Tab5".hide()
		if GamePlay.avatar_actve == 5:
			$"Avatar/Frame-2".position.y = 576
			$"Avatar/Frame-3".position.y = 576
			$"Avatar/Frame-4".position.y = 576
			$"Avatar/Frame-1".position.y = 576
			$"Avatar/Frame-6".position.y = 576
			$"Avatar/Frame-7".position.y = 576
			$"Avatar/Frame-5".position.y = 540
			$"mid/Frame-8".hide()
			$"mid/Frame-9".hide()
			$"mid/Frame-10".hide()
			$"mid/Frame-11".hide()
			$"mid/Frame-12".hide()
			$"mid/Frame-13".show()
			$"mid/Frame-14".hide()
			$"Active-Tab6".show()
			$"InActive-Tab6".hide()
		if GamePlay.avatar_actve == 6:
			$"Avatar/Frame-2".position.y = 576
			$"Avatar/Frame-3".position.y = 576
			$"Avatar/Frame-4".position.y = 576
			$"Avatar/Frame-5".position.y = 576
			$"Avatar/Frame-1".position.y = 576
			$"Avatar/Frame-7".position.y = 576
			$"Avatar/Frame-6".position.y = 540
			$"mid/Frame-8".hide()
			$"mid/Frame-9".hide()
			$"mid/Frame-10".hide()
			$"mid/Frame-11".hide()
			$"mid/Frame-12".hide()
			$"mid/Frame-13".hide()
			$"mid/Frame-14".show()
			$"Active-Tab7".show()
			$"InActive-Tab7".hide()
	if kind == "color":
		$"Active-Tab".hide()
		$"Active-Tab2".hide()
		$"Active-Tab3".hide()
		$"Active-Tab4".hide()
		$"Active-Tab5".hide()
		$"Active-Tab6".hide()
		$"Active-Tab7".hide()
		$"InActive-Tab".show()
		$"InActive-Tab2".show()
		$"InActive-Tab3".show()
		$"InActive-Tab4".show()
		$"InActive-Tab5".show()
		$"InActive-Tab6".show()
		$"InActive-Tab7".hide()
		$Frame.hide()
		$Avatar.hide()
		$Dice.hide()
		$Color.show()
		if GamePlay.color_active == 0:
			$"Color/Frame-2".position.y = 576
			$"Color/Frame-3".position.y = 576
			$"Color/Frame-4".position.y = 576
			$"Color/Frame-5".position.y = 576
			$"Color/Frame-7".position.y = 576
			$"Color/Frame-1".position.y = 540
			$"Active-Tab".show()
			$"InActive-Tab".hide()
		if GamePlay.color_active == 1:
			$"Color/Frame-2".position.y = 576
			$"Color/Frame-3".position.y = 576
			$"Color/Frame-4".position.y = 576
			$"Color/Frame-5".position.y = 576
			$"Color/Frame-1".position.y = 576
			$"Color/Frame-7".position.y = 540
			$"Active-Tab2".show()
			$"InActive-Tab2".hide()
		if GamePlay.color_active == 2:
			$"Color/Frame-1".position.y = 576
			$"Color/Frame-3".position.y = 576
			$"Color/Frame-4".position.y = 576
			$"Color/Frame-5".position.y = 576
			$"Color/Frame-7".position.y = 576
			$"Color/Frame-2".position.y = 540
			$"Active-Tab3".show()
			$"InActive-Tab3".hide()
		if GamePlay.color_active == 3:
			$"Color/Frame-2".position.y = 576
			$"Color/Frame-1".position.y = 576
			$"Color/Frame-4".position.y = 576
			$"Color/Frame-5".position.y = 576
			$"Color/Frame-7".position.y = 576
			$"Color/Frame-3".position.y = 540
			$"Active-Tab4".show()
			$"InActive-Tab4".hide()
		if GamePlay.color_active == 4:
			$"Color/Frame-2".position.y = 576
			$"Color/Frame-3".position.y = 576
			$"Color/Frame-1".position.y = 576
			$"Color/Frame-5".position.y = 576
			$"Color/Frame-7".position.y = 576
			$"Color/Frame-4".position.y = 540
			$"Active-Tab5".show()
			$"InActive-Tab5".hide()
		if GamePlay.color_active == 5:
			$"Color/Frame-2".position.y = 576
			$"Color/Frame-3".position.y = 576
			$"Color/Frame-4".position.y = 576
			$"Color/Frame-1".position.y = 576
			$"Color/Frame-7".position.y = 576
			$"Color/Frame-5".position.y = 540
			$"Active-Tab6".show()
			$"InActive-Tab6".hide()
		if GamePlay.color_active == 6:
			$"Color/Frame-2".position.y = 576
			$"Color/Frame-3".position.y = 576
			$"Color/Frame-4".position.y = 576
			$"Color/Frame-5".position.y = 576
			$"Color/Frame-1".position.y = 576
			$"Color/Frame-7".position.y = 576
			#$"Active-Tab7".show()
			$"InActive-Tab7".hide()
	if kind == "dice":
		$"Active-Tab".hide()
		$"Active-Tab2".hide()
		$"Active-Tab3".hide()
		$"Active-Tab4".hide()
		$"Active-Tab5".hide()
		$"Active-Tab6".hide()
		$"Active-Tab7".hide()
		$"InActive-Tab".show()
		$"InActive-Tab2".show()
		$"InActive-Tab3".show()
		$"InActive-Tab4".show()
		$"InActive-Tab5".show()
		$"InActive-Tab6".show()
		$"InActive-Tab7".show()
		$Frame.hide()
		$Avatar.hide()
		$Color.hide()
		$Dice.show()
		if GamePlay.dice_active == 0:
			$"Dice/Frame-2".position.y = 576
			$"Dice/Frame-3".position.y = 576
			$"Dice/Frame-4".position.y = 576
			$"Dice/Frame-5".position.y = 576
			$"Dice/Frame-6".position.y = 576
			$"Dice/Frame-7".position.y = 576
			$"Dice/Frame-1".position.y = 540
			$"Active-Tab".show()
			$"InActive-Tab".hide()
		if GamePlay.dice_active == 1:
			$"Dice/Frame-2".position.y = 576
			$"Dice/Frame-3".position.y = 576
			$"Dice/Frame-4".position.y = 576
			$"Dice/Frame-5".position.y = 576
			$"Dice/Frame-6".position.y = 576
			$"Dice/Frame-1".position.y = 576
			$"Dice/Frame-7".position.y = 540
			$"Active-Tab2".show()
			$"InActive-Tab2".hide()
		if GamePlay.dice_active == 2:
			$"Dice/Frame-1".position.y = 576
			$"Dice/Frame-3".position.y = 576
			$"Dice/Frame-4".position.y = 576
			$"Dice/Frame-5".position.y = 576
			$"Dice/Frame-6".position.y = 576
			$"Dice/Frame-7".position.y = 576
			$"Dice/Frame-2".position.y = 540
			$"Active-Tab3".show()
			$"InActive-Tab3".hide()
		if GamePlay.dice_active == 3:
			$"Dice/Frame-2".position.y = 576
			$"Dice/Frame-1".position.y = 576
			$"Dice/Frame-4".position.y = 576
			$"Dice/Frame-5".position.y = 576
			$"Dice/Frame-6".position.y = 576
			$"Dice/Frame-7".position.y = 576
			$"Dice/Frame-3".position.y = 540
			$"Active-Tab4".show()
			$"InActive-Tab4".hide()
		if GamePlay.dice_active == 4:
			$"Dice/Frame-2".position.y = 576
			$"Dice/Frame-3".position.y = 576
			$"Dice/Frame-1".position.y = 576
			$"Dice/Frame-5".position.y = 576
			$"Dice/Frame-6".position.y = 576
			$"Dice/Frame-7".position.y = 576
			$"Dice/Frame-4".position.y = 540
			$"Active-Tab5".show()
			$"InActive-Tab5".hide()
		if GamePlay.dice_active == 5:
			$"Dice/Frame-2".position.y = 576
			$"Dice/Frame-3".position.y = 576
			$"Dice/Frame-4".position.y = 576
			$"Dice/Frame-1".position.y = 576
			$"Dice/Frame-6".position.y = 576
			$"Dice/Frame-7".position.y = 576
			$"Dice/Frame-5".position.y = 540
			$"Active-Tab6".show()
			$"InActive-Tab6".hide()
		if GamePlay.dice_active == 6:
			$"Dice/Frame-2".position.y = 576
			$"Dice/Frame-3".position.y = 576
			$"Dice/Frame-4".position.y = 576
			$"Dice/Frame-5".position.y = 576
			$"Dice/Frame-1".position.y = 576
			$"Dice/Frame-7".position.y = 576
			$"Dice/Frame-6".position.y = 540
			$"Active-Tab7".show()
			$"InActive-Tab7".hide()
	



func _on_Button_pressed():
	if kind == "frame":
		GamePlay.frame_active = 0
	elif kind == "avatar":
		GamePlay.avatar_actve = 0
	elif kind == "dice":
		GamePlay.dice_active = 0
	elif kind == "color":
		GamePlay.color_active = 0


func _on_Button2_pressed():
	if kind == "frame":
		GamePlay.frame_active = 1
	elif kind == "avatar":
		GamePlay.avatar_actve = 1
	elif kind == "dice":
		GamePlay.dice_active = 1
	elif kind == "color":
		GamePlay.color_active = 1


func _on_Button3_pressed():
	if kind == "frame":
		GamePlay.frame_active = 2
	elif kind == "avatar":
		GamePlay.avatar_actve = 2
	elif kind == "dice":
		GamePlay.dice_active = 2
	elif kind == "color":
		GamePlay.color_active = 2



func _on_Button4_pressed():
	if kind == "frame":
		GamePlay.frame_active = 3
	elif kind == "avatar":
		GamePlay.avatar_actve = 3
	elif kind == "dice":
		GamePlay.dice_active = 3
	elif kind == "color":
		GamePlay.color_active = 3



func _on_Button5_pressed():
	if kind == "frame":
		GamePlay.frame_active = 4
	elif kind == "avatar":
		GamePlay.avatar_actve = 4
	elif kind == "dice":
		GamePlay.dice_active = 4
	elif kind == "color":
		GamePlay.color_active = 4



func _on_Button6_pressed():
	if kind == "frame":
		GamePlay.frame_active = 5
	elif kind == "avatar":
		GamePlay.avatar_actve = 5
	elif kind == "dice":
		GamePlay.dice_active = 5
	elif kind == "color":
		GamePlay.color_active = 5



func _on_Button7_pressed():
	if kind == "frame":
		GamePlay.frame_active = 6
	elif kind == "avatar":
		GamePlay.avatar_actve = 6
	elif kind == "dice":
		GamePlay.dice_active = 6



func _on_Button8_pressed():
	get_tree().change_scene("res://Source/Main/Main.tscn")


func _on_Button9_pressed():
	kind = "avatar"
	$"ChooseMap(7)".show()
	$"ChooseMap(7)2".hide()
	$"ChooseMap(8)".hide()
	$"ChooseMap(8)2".hide()
	$"ChooseMap(8)3".hide()
	$"ChooseMap(8)4".hide()
	$"ChooseMap(9)".hide()
	$"ChooseMap(8)5".show()
	$"ChooseMap(8)6".show()
	$"ChooseMap(8)7".show()
	$"ChooseMap(8)8".show()
	$"ChooseMap(9)2".show()


func _on_Button10_pressed():
	kind = "frame"
	$"ChooseMap(8)".show()
	$"ChooseMap(8)5".hide()
	$"ChooseMap(7)".hide()
	$"ChooseMap(8)2".hide()
	$"ChooseMap(8)3".hide()
	$"ChooseMap(8)4".hide()
	$"ChooseMap(9)".hide()
	$"ChooseMap(7)2".show()
	$"ChooseMap(8)6".show()
	$"ChooseMap(8)7".show()
	$"ChooseMap(8)8".show()
	$"ChooseMap(9)2".show()



func _on_Button11_pressed():
	kind = "color"
	$"ChooseMap(8)2".show()
	$"ChooseMap(8)6".hide()
	$"ChooseMap(7)".hide()
	$"ChooseMap(7)".hide()
	$"ChooseMap(8)4".hide()
	$"ChooseMap(9)".hide()
	$"ChooseMap(8)5".show()
	$"ChooseMap(7)2".show()
	$"ChooseMap(8)7".show()
	$"ChooseMap(8)8".show()
	$"ChooseMap(9)2".show()




func _on_Button12_pressed():
	kind = "dice"
	$"ChooseMap(8)3".show()
	$"ChooseMap(8)7".hide()
	$"ChooseMap(7)".hide()
	$"ChooseMap(8)2".hide()
	$"ChooseMap(8)4".hide()
	$"ChooseMap(9)".hide()
	$"ChooseMap(8)5".show()
	$"ChooseMap(8)6".show()
	$"ChooseMap(7)2".show()
	$"ChooseMap(8)8".show()
	$"ChooseMap(9)2".show()


