#> zz.player_input:main/tick_item
# 常時実行
# @within
#   function zz.player_input:**

## アイテムから常時実行
    # アイテムデータを取得
    data modify storage player_input: item set value {components:{"minecraft:custom_data":{click_event:{click:"",double_click:"",hold:"",hold_init:"",hold_end:""}}}}
    data modify storage player_input: item.components."minecraft:custom_data".click_event.click_interval set from storage player_input: click_interval
    data modify storage player_input: item.components."minecraft:custom_data".click_event.hold_threshold set from storage player_input: hold_threshold
    data modify storage player_input: item.components."minecraft:custom_data".click_event.double_click_range set from storage player_input: double_click_range
    data modify storage player_input: item merge from entity @s Item
    # アイテムの再設定が必要な場合
    execute if entity @s[tag=pliT.item.reset] run function zz.player_input:main/item/reset
    # プレイヤーから実行
    scoreboard players set #pliH.player pliS.time.click 0
    execute on origin run function zz.player_input:main/time_add

## ホールドが終了したら削除
    execute if score #pliH.player pliS.time.click matches 1 run tag @s remove pliT.dummy.active