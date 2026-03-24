#> zz.player_input:item/slot/change_hotbar
# アイテムがホットバーに移動したときに実行されるファンクション
# @within
#   advancement zz.player_input:change_slot

## データをセット
    execute if items entity @s hotbar.0 *[!custom_data~{_slot:"mainhand"},custom_data~{right_click:{}}] run function zz.player_input:item/slot/0
    execute if items entity @s hotbar.1 *[!custom_data~{_slot:"mainhand"},custom_data~{right_click:{}}] run function zz.player_input:item/slot/1
    execute if items entity @s hotbar.2 *[!custom_data~{_slot:"mainhand"},custom_data~{right_click:{}}] run function zz.player_input:item/slot/2
    execute if items entity @s hotbar.3 *[!custom_data~{_slot:"mainhand"},custom_data~{right_click:{}}] run function zz.player_input:item/slot/3
    execute if items entity @s hotbar.4 *[!custom_data~{_slot:"mainhand"},custom_data~{right_click:{}}] run function zz.player_input:item/slot/4
    execute if items entity @s hotbar.5 *[!custom_data~{_slot:"mainhand"},custom_data~{right_click:{}}] run function zz.player_input:item/slot/5
    execute if items entity @s hotbar.6 *[!custom_data~{_slot:"mainhand"},custom_data~{right_click:{}}] run function zz.player_input:item/slot/6
    execute if items entity @s hotbar.7 *[!custom_data~{_slot:"mainhand"},custom_data~{right_click:{}}] run function zz.player_input:item/slot/7
    execute if items entity @s hotbar.8 *[!custom_data~{_slot:"mainhand"},custom_data~{right_click:{}}] run function zz.player_input:item/slot/8

## 後処理
    advancement revoke @s only zz.player_input:item/change_hotbar