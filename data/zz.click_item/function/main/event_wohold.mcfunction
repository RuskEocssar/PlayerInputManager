#> zz.click_item:main/event_wohold
# イベントの実行 長押しによるイベントがない場合
# @within
#   function zz.click_item:**

## イベントを実行
    # シングルクリック
    execute if predicate zz.click_item:single_click unless data storage click_item: item.components."minecraft:custom_data".click_event{click:""} run function zz.click_item:event/click with storage click_item: item.components."minecraft:custom_data".click_event
    execute if predicate zz.click_item:double_click if data storage click_item: item.components."minecraft:custom_data".click_event{double_click:""} unless data storage click_item: item.components."minecraft:custom_data".click_event{click:""} run function zz.click_item:event/click with storage click_item: item.components."minecraft:custom_data".click_event
    # ダブルクリック
    execute if predicate zz.click_item:double_click unless data storage click_item: item.components."minecraft:custom_data".click_event{double_click:""} run function zz.click_item:event/double_click with storage click_item: item.components."minecraft:custom_data".click_event