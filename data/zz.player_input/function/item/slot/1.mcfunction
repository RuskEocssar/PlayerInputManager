#> zz.player_input:main/slot/1
# スロットの処理
# @within
#   function zz.player_input:**

## アイテムの編集
    # 取得
    item replace entity 4fe002bb-0-6-0-a00000001 container.0 from entity @s hotbar.1
    # 編集
    execute if items entity 4fe002bb-0-6-0-a00000001 container.0 *[!custom_data~{_slot:"offhand"},!custom_data~{_slot:"mainhand"},custom_data~{left_click:{}},!piercing_weapon] run function zz.player_input:item/slot/set_left_click
    execute if items entity 4fe002bb-0-6-0-a00000001 container.0 *[!custom_data~{_slot:"offhand"},!custom_data~{_slot:"mainhand"},custom_data~{right_click:{}}] run function zz.player_input:item/slot/set_right_click
    item modify entity 4fe002bb-0-6-0-a00000001 container.0 {function:"set_custom_data",tag:{_slot:"mainhand"}}
    # 反映
    item replace entity @s hotbar.1 from entity 4fe002bb-0-6-0-a00000001 container.0