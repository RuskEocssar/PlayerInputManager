#> zz.player_input:key/main_root
# ルートエンティティからキー入力によるイベントを実行
# @within
#   function zz.player_input:**

## データを取得
    scoreboard players set #pliH.input pliS. 0
    data modify storage player_input: history set from entity @s data.history
    data modify storage player_input:zz query set value []
    data modify storage player_input:zz query append from entity @s data.query[]
    data modify storage player_input:zz query append from storage player_input: query[]
    execute store result storage player_input:zz gametime int 1 run time query gametime

## イベントの実行
    execute store success score @s pliS.time.forward on origin if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} run function zz.player_input:key/forward/main
    execute store success score @s pliS.time.backward on origin if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{backward:true}}}} run function zz.player_input:key/backward/main
    execute store success score @s pliS.time.right on origin if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} run function zz.player_input:key/right/main
    execute store success score @s pliS.time.left on origin if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} run function zz.player_input:key/left/main
    execute store success score @s pliS.time.jump on origin if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{jump:true}}}} run function zz.player_input:key/jump/main
    execute store success score @s pliS.time.sneak on origin if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run function zz.player_input:key/sneak/main
    execute store success score @s pliS.time.sprint on origin if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sprint:true}}}} run function zz.player_input:key/sprint/main

## データを反映
    data modify entity @s data.history set from storage player_input: history
    scoreboard players set #pliH.check_player pliS. 1
    scoreboard players set @s pliS. 1
    
## コマンド入力の判定
    execute if score #pliH.input pliS. matches 1 run function zz.player_input:command/key/main