#> zz.player_input:item/slot/change_offhand
# アイテムがオフハンドに移動したときに実行されるファンクション
# @within
#   advancement zz.player_input:change_slot

## アイテムの編集
    # 取得
    item replace entity 4fe002bb-0-6-0-a00000001 container.0 from entity @s weapon.offhand
    # 編集
    execute if items entity 4fe002bb-0-6-0-a00000001 container.0 *[!custom_data~{_slot:"offhand"},!custom_data~{_slot:"mainhand"},custom_data~{left_click:{}},!piercing_weapon] run function zz.player_input:item/slot/set_left_click
    execute if items entity 4fe002bb-0-6-0-a00000001 container.0 *[!custom_data~{_slot:"offhand"},!custom_data~{_slot:"mainhand"},custom_data~{right_click:{}}] run function zz.player_input:item/slot/set_right_click
    item modify entity 4fe002bb-0-6-0-a00000001 container.0 {function:"set_custom_data",tag:{_slot:"offhand"}}
    # 反映
    item replace entity @s weapon.offhand from entity 4fe002bb-0-6-0-a00000001 container.0

## 後処理
    advancement revoke @s only zz.player_input:item/change_offhand