#> zz.player_input:main/slot/set_init
# アイテムの編集
# @within
#   function zz.player_input:**

## データ取得
    data modify storage player_input: item set value {components:{"minecraft:custom_data":{click_event:{no_consume:true}}}}
    data modify storage player_input: item merge from entity 4fe002bb-0-6-0-a00000001 Item
    data modify storage player_input: item.components merge value {"minecraft:max_stack_size":1}

## アイテムデータの初期設定
    # 再セットがある場合、見た目を保持するためuse_remainderをセットする
    execute if data storage player_input: item.components."minecraft:custom_data".click_event{no_consume:true} run data modify storage player_input: item.components."minecraft:use_remainder" set from storage player_input: item
    execute if data storage player_input: item.components."minecraft:custom_data".click_event{no_consume:true} run data remove storage player_input: item.components."minecraft:use_remainder".components."minecraft:consumable"
    # 4tick毎のオプションがtrueのとき
    execute if data storage player_input: item.components."minecraft:custom_data".click_event{4t_hold:true} run data modify storage player_input: item.components."minecraft:use_cooldown" set value {seconds:0.000001f}

## アイテムを使用可能にする
    # 判定が取れないアイテムの場合、設定する
    execute as 4fe002bb-0-6-0-a00000001 unless data storage player_input: item.components."minecraft:consumable" unless data storage player_input: item.components."minecraft:blocks_attacks" unless predicate zz.player_input:usable run function zz.player_input:item/slot/set_usable

## データ反映
    data modify entity 4fe002bb-0-6-0-a00000001 Item set from storage player_input: item