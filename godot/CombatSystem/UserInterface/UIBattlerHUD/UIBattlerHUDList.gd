extends VBoxContainer

const UIBattlerHUD: PackedScene = preload("UIBattlerHUD.tscn")

onready var anim_player: AnimationPlayer = $AnimationPlayer


# Arguments:
# - battlers: Array[Battlers]
func setup(battlers: Array) -> void:
	for battler in battlers:
		var battler_hud: UIBattlerHUD = UIBattlerHUD.instance()
		add_child(battler_hud)
		battler_hud.setup(battler)


func fade_in() -> void:
	anim_player.play("fade_in")


func fade_out() -> void:
	anim_player.play("fade_out")
