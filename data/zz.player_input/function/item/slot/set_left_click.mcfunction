#> zz.player_input:main/slot/set_init
# アイテムの編集
# @within
#   function zz.player_input:**

## データ取得
    data modify storage player_input: item set value {components:{"minecraft:custom_data":{left_click:{hide:3}}}}
    data modify storage player_input: item merge from entity 4fe002bb-0-6-0-a00000001 Item
    
## 変更 
    data modify storage player_input: item.components merge value {"minecraft:enchantments":{"zz.player_input:left_click":1},"minecraft:piercing_weapon":{},"minecraft:max_stack_size":1}
    execute if data storage player_input: item.components."minecraft:custom_data".left_click{hide:1} run data modify storage player_input: item.components merge value {"minecraft:enchantment_glint_override":0b}
    execute if data storage player_input: item.components."minecraft:custom_data".left_click{hide:2} run data modify storage player_input: item.components merge value {"minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}
    execute if data storage player_input: item.components."minecraft:custom_data".left_click{hide:3} run data modify storage player_input: item.components merge value {"minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]},"minecraft:enchantment_glint_override":0b}

## データ反映
    data modify entity 4fe002bb-0-6-0-a00000001 Item set from storage player_input: item