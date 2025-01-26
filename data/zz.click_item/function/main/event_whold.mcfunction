#> zz.click_item:main/event_whold
# イベントの実行 長押しによるイベントがある場合
# @within
#   function zz.click_item:**

## イベントを実行
    # シングルクリック
    execute if predicate zz.click_item:single_click unless predicate zz.click_item:hold unless data storage click_item: item.components."minecraft:custom_data".click_event{click:""} run function zz.click_item:event/click with storage click_item: item.components."minecraft:custom_data".click_event
    execute if predicate zz.click_item:double_click unless predicate zz.click_item:hold if data storage click_item: item.components."minecraft:custom_data".click_event{double_click:""} unless data storage click_item: item.components."minecraft:custom_data".click_event{click:""} run function zz.click_item:event/click with storage click_item: item.components."minecraft:custom_data".click_event
    # ダブルクリック
    execute if predicate zz.click_item:double_click unless predicate zz.click_item:hold unless data storage click_item: item.components."minecraft:custom_data".click_event{double_click:""} run function zz.click_item:event/double_click with storage click_item: item.components."minecraft:custom_data".click_event
    # ホールド開始
    execute unless score @s cliS.mode matches 1 if predicate zz.click_item:hold unless data storage click_item: item.components."minecraft:custom_data".click_event{hold_init:""} run function zz.click_item:event/hold_init with storage click_item: item.components."minecraft:custom_data".click_event
    execute unless score @s cliS.mode matches 1 if predicate zz.click_item:hold run scoreboard players set @s cliS.mode 1
    # ホールド
    execute if predicate zz.click_item:hold unless data storage click_item: item.components."minecraft:custom_data".click_event{hold:""} run function zz.click_item:event/hold with storage click_item: item.components."minecraft:custom_data".click_event