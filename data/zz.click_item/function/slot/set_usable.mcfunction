#> zz.click_item:main/slot/set_usable
# アイテムの編集
# @within
#   function zz.click_item:**

## アイテムを使用可能にする
    # use_cooldownが設定されている場合
    execute if data storage click_item: item.components."minecraft:use_cooldown" run return run data modify storage click_item: item.components."minecraft:consumable" set value {consume_seconds:0f,animation:"none",sound:"intentionally_empty",has_consume_particles:false}
    # use_cooldownが設定されていない場合
    data modify storage click_item: item.components."minecraft:consumable" set value {consume_seconds:2147483647,animation:"none",sound:"intentionally_empty",has_consume_particles:false}