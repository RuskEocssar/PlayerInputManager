#> zz.player_input:load
# 定義/初期設定
# @within
#   tag/function minecraft:load

## 各種定義
    function zz.player_input:define

## 入力の初期設定
    execute unless data storage player_input: click_item run data modify storage player_input: click_item set value {input_interval:2,hold_threshold:6,double_input_range:{min:2,max:4}}
    execute unless data storage player_input: key_input run data modify storage player_input: key_input set value {input_interval:2,hold_threshold:6,double_input_range:{min:2,max:4}}

## アイテム管理用のエンティティ
    execute unless score 4fe002bb-0000-0002-0000-000a00000001 pliS. matches 1 store success score 4fe002bb-0000-0002-0000-000a00000001 pliS. run summon interaction 0 1000 0 {Tags:["pliT.","pliT.root"],UUID:[I;1340080827,2,10,1],width:0f,height:0f}
    execute unless score 4fe002bb-0000-0006-0000-000a00000001 pliS. matches 1 store success score 4fe002bb-0000-0006-0000-000a00000001 pliS. run summon item 0 1000 0 {Tags:["pliT.","pliT.item"],UUID:[I;1340080827,6,10,1],Item:{id:"stick",components:{max_stack_size:1}},PickupDelay:32767s,Age:-32767s,NoGravity:true,Invulnerable:true}