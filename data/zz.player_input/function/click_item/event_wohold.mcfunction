#> zz.player_input:main/event_wohold
# イベントの実行 長押しによるイベントがない場合
# @within
#   function zz.player_input:**

## イベントを実行
    # シングルクリック
    execute if predicate zz.player_input:single_click unless data storage player_input: item.components."minecraft:custom_data".click_event{click:""} run function zz.player_input:event/click with storage player_input: item.components."minecraft:custom_data".click_event
    execute if predicate zz.player_input:double_click if data storage player_input: item.components."minecraft:custom_data".click_event{double_click:""} unless data storage player_input: item.components."minecraft:custom_data".click_event{click:""} run function zz.player_input:event/click with storage player_input: item.components."minecraft:custom_data".click_event
    # ダブルクリック
    execute if predicate zz.player_input:double_click unless data storage player_input: item.components."minecraft:custom_data".click_event{double_click:""} run function zz.player_input:event/double_click with storage player_input: item.components."minecraft:custom_data".click_event