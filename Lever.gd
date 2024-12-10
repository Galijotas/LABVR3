extends StaticBody3D

var toggle = false
var interactable = true
@export var animation_player: AnimationPlayer

func LeverInteract():
	if interactable == true:
		interactable = false
		toggle = !toggle
		if toggle == false:
			animation_player.play("LeverOff")
			$LeverSound.play()
		if toggle == true:
			animation_player.play("LeverOn")
			$LeverSound.play()
		await get_tree().create_timer(2.0, false).timeout
		interactable = true
