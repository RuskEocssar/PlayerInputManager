#> zz.click_item:main/slot/set_init
# アイテムの編集
# @within
#   function zz.click_item:**

## データ取得
    data modify storage click_item: item set value {components:{"minecraft:custom_data":{click_event:{no_consume:true}}}}
    data modify storage click_item: item merge from entity 4fe002bb-0-6-0-a00000001 Item
    data modify storage click_item: item.components merge value {"minecraft:max_stack_size":1}

## アイテムデータの初期設定
    # 再セットがある場合、見た目を保持するためuse_remainderをセットする
    execute if data storage click_item: item.components."minecraft:custom_data".click_event{no_consume:true} run data modify storage click_item: item.components."minecraft:use_remainder" set from storage click_item: item
    execute if data storage click_item: item.components."minecraft:custom_data".click_event{no_consume:true} run data remove storage click_item: item.components."minecraft:use_remainder".components."minecraft:consumable"
    # 4tick毎のオプションがtrueのとき
    execute if data storage click_item: item.components."minecraft:custom_data".click_event{4t_hold:true} run data modify storage click_item: item.components."minecraft:use_cooldown" set value {seconds:0.000001f}

## アイテムを使用可能にする
    # 判定が取れないアイテムの場合、設定する
    execute as 4fe002bb-0-6-0-a00000001 unless data storage click_item: item.components."minecraft:consumable" unless data storage click_item: item.components."minecraft:blocks_attacks" unless predicate zz.click_item:usable run function zz.click_item:slot/set_usable

## データ反映
    data modify entity 4fe002bb-0-6-0-a00000001 Item set from storage click_item: item