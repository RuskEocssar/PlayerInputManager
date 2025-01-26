#> zz.click_item:load
# 定義/初期設定
# @within
#   tag/function minecraft:load

## 各種定義
    function zz.click_item:define

## 入力の初期設定
    execute unless data storage click_item: click_interval run data modify storage click_item: click_interval set value 1
    execute unless data storage click_item: hold_threshold run data modify storage click_item: hold_threshold set value 4
    execute unless data storage click_item: double_click_range run data modify storage click_item: double_click_range set value {min:2,max:5}

## アイテム管理用のエンティティ
    execute unless entity 4fe002bb-0-2-0-a00000001 run summon interaction 0 1000 0 {Tags:["cliT.","cliT.root"],UUID:[I;1340080827,2,10,1],width:0f,height:0f}
    execute unless entity 4fe002bb-0-6-0-a00000001 run summon item 0 1000 0 {Tags:["cliT.","cliT.item"],UUID:[I;1340080827,6,10,1],Item:{id:"stick",components:{max_stack_size:1}},PickupDelay:32767s,Age:-32767s,NoGravity:true,Invulnerable:true}