#> zz.player_input:tick
# 常時実行
# @within
#   function zz.player_input:**

## 常時実行
    scoreboard players set #pliH.tick pliS. 0
    execute as 4fe002bb-0-2-0-a00000001 on passengers if entity @s[tag=pliT.root.active] run function zz.player_input:tick_root
    execute if score #pliH.tick pliS. matches 1 run schedule function zz.player_input:tick 1t replace