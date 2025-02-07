#> zz.player_input:main/event_whold
# イベントの実行 長押しによるイベントがある場合
# @within
#   function zz.player_input:**

## イベントを実行
    # シングルクリック
    execute if predicate zz.player_input:single_click unless predicate zz.player_input:hold unless data storage player_input: item.components."minecraft:custom_data".click_event{click:""} run function zz.player_input:event/click with storage player_input: item.components."minecraft:custom_data".click_event
    execute if predicate zz.player_input:double_click unless predicate zz.player_input:hold if data storage player_input: item.components."minecraft:custom_data".click_event{double_click:""} unless data storage player_input: item.components."minecraft:custom_data".click_event{click:""} run function zz.player_input:event/click with storage player_input: item.components."minecraft:custom_data".click_event
    # ダブルクリック
    execute if predicate zz.player_input:double_click unless predicate zz.player_input:hold unless data storage player_input: item.components."minecraft:custom_data".click_event{double_click:""} run function zz.player_input:event/double_click with storage player_input: item.components."minecraft:custom_data".click_event
    # ホールド開始
    execute unless entity @s[tag=pliT.click_item.hold] if predicate zz.player_input:hold unless data storage player_input: item.components."minecraft:custom_data".click_event{hold_init:""} run function zz.player_input:event/hold_init with storage player_input: item.components."minecraft:custom_data".click_event
    execute unless entity @s[tag=pliT.click_item.hold] if predicate zz.player_input:hold run tag @s add pliT.click_item.hold
    # ホールド
    execute if predicate zz.player_input:hold unless data storage player_input: item.components."minecraft:custom_data".click_event{hold:""} run function zz.player_input:event/hold with storage player_input: item.components."minecraft:custom_data".click_event