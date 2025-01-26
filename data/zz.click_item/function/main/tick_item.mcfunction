#> zz.click_item:main/tick_item
# 常時実行
# @within
#   function zz.click_item:**

## アイテムから常時実行
    # アイテムデータを取得
    data modify storage click_item: item set value {components:{"minecraft:custom_data":{click_event:{click:"",double_click:"",hold:"",hold_init:"",hold_end:""}}}}
    data modify storage click_item: item.components."minecraft:custom_data".click_event.click_interval set from storage click_item: click_interval
    data modify storage click_item: item.components."minecraft:custom_data".click_event.hold_threshold set from storage click_item: hold_threshold
    data modify storage click_item: item.components."minecraft:custom_data".click_event.double_click_range set from storage click_item: double_click_range
    data modify storage click_item: item merge from entity @s Item
    # アイテムの再設定が必要な場合
    execute if entity @s[tag=cliT.item.reset] run function zz.click_item:main/item/reset
    # プレイヤーから実行
    scoreboard players set #cliH.player cliS.time.click 0
    execute on origin run function zz.click_item:main/time_add

## ホールドが終了したら削除
    execute if score #cliH.player cliS.time.click matches 1 run tag @s remove cliT.dummy.active