#> zz.player_input:key/main_root
# プレイヤーの進捗を解除
# @within
#   function zz.player_input:**

## データを取得
    data modify storage player_input:zz query set from entity @s data.query
    execute store result storage player_input:zz gametime int 1 run time query gametime

## イベントの実行
    execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} run function zz.player_input:key/forward/main
    # execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{backward:true}}}} run function zz.player_input:key/backward/main
    # execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} run function zz.player_input:key/right/main
    # execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} run function zz.player_input:key/left/main
    # execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{jump:true}}}} run function zz.player_input:key/jump/main
    # execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run function zz.player_input:key/sneak/main
    # execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sprint:true}}}} run function zz.player_input:key/sprint/main

## データを反映
    data modify entity @s data.query set from storage player_input:zz query
    scoreboard players set #pliH. pliS. 0