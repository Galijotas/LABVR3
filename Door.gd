extends StaticBody3D

var toggle = false
var interactable = true
@export var animation_player: AnimationPlayer

func DoorInteract():
	if interactable == true:
		interactable = false
		toggle = !toggle
		if toggle == false:
			animation_player.play("Close")
			$CloseDoors.play()
		if toggle == true:
			animation_player.play("Open")
			$OpenDoors.play()
		await get_tree().create_timer(1.0, false).timeout
		interactable = true
