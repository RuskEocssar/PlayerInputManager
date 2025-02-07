#> zz.player_input:tick_root
# 常時実行
# @within
#   function zz.player_input:**

## スコアの設定 
    scoreboard players set #pliH.tick pliS. 1

## 常時実行
    execute as 4fe002bb-0-2-0-a00000001 on passengers if entity @s[tag=pliT.dummy.active] run function zz.player_input:tick_item
    execute if entity @p[scores={pliS.time.click=0..2147483646}] run schedule function zz.player_input:main/tick 1t replace