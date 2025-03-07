#> zz.player_input:tick_root
# 常時実行
# @within
#   function zz.player_input:**

## スコアの設定 
    scoreboard players set @s pliS. 1

## 常時実行
    # データのコピー
    data modify storage player_input: data set from storage player_input: key_input
    execute on passengers run data modify storage player_input:zz list set from entity @s data.events
    # 
    execute if entity @s[tag=pliT.active.forward] run function zz.player_input:key/forward/tick
    # execute if entity @s[tag=pliT.active.backward] run function zz.player_input:key/backward/tick
    # execute if entity @s[tag=pliT.active.right] run function zz.player_input:key/right/tick
    # execute if entity @s[tag=pliT.active.left] run function zz.player_input:key/left/tick
    # execute if entity @s[tag=pliT.active.jump] run function zz.player_input:key/jump/tick
    # execute if entity @s[tag=pliT.active.sneak] run function zz.player_input:key/sneak/tick
    # execute if entity @s[tag=pliT.active.sprint] run function zz.player_input:key/sprint/tick