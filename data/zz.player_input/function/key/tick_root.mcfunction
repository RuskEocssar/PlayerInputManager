#> zz.player_input:tick_root
# 常時実行
# @within
#   function zz.player_input:**

## スコアの設定 
    scoreboard players set @s pliS. 0

## データを取得
    data modify storage player_input: history set from entity @s data.history
    data modify storage player_input:zz query set value []
    data modify storage player_input:zz query append from entity @s data.query[]
    data modify storage player_input:zz query append from storage player_input: query[]
    execute store result storage player_input:zz gametime int 1 run time query gametime

## 常時実行
    execute if entity @s[scores={pliS.time.forward=1}] run function zz.player_input:key/forward/tick
    execute if entity @s[scores={pliS.time.backward=1}] run function zz.player_input:key/backward/tick
    execute if entity @s[scores={pliS.time.right=1}] run function zz.player_input:key/right/tick
    execute if entity @s[scores={pliS.time.left=1}] run function zz.player_input:key/left/tick
    execute if entity @s[scores={pliS.time.jump=1}] run function zz.player_input:key/jump/tick
    execute if entity @s[scores={pliS.time.sneak=1}] run function zz.player_input:key/sneak/tick
    execute if entity @s[scores={pliS.time.sprint=1}] run function zz.player_input:key/sprint/tick

## データを反映
    data modify entity @s data.history set from storage player_input: history