#> zz.player_input:main/event_whold
# イベントの実行 長押しによるイベントがある場合
# @within
#   function zz.player_input:**

## イベントを実行
    # シングルクリック
    execute if predicate zz.player_input:single_click unless predicate zz.player_input:hold unless data storage player_input: data{click:""} run function zz.player_input:item/event/click with storage player_input: data
    execute if predicate zz.player_input:double_click unless predicate zz.player_input:hold if data storage player_input: data{double_click:""} unless data storage player_input: data{click:""} run function zz.player_input:item/event/click with storage player_input: data
    # ダブルクリック
    execute if predicate zz.player_input:double_click unless predicate zz.player_input:hold unless data storage player_input: data{double_click:""} run function zz.player_input:item/event/double_click with storage player_input: data
    # ホールド開始
    execute unless entity @s[tag=pliT.hold.click_item] if predicate zz.player_input:hold unless data storage player_input: data{hold_init:""} run function zz.player_input:item/event/hold_init with storage player_input: data
    execute unless entity @s[tag=pliT.hold.click_item] if predicate zz.player_input:hold run tag @s add pliT.hold.click_item
    # ホールド
    execute if predicate zz.player_input:hold unless data storage player_input: data{hold:""} run function zz.player_input:item/event/hold with storage player_input: data