#> zz.player_input:forward/tick
# 常時実行
# @within
#   function zz.player_input:**

## プレイヤーから実行
    scoreboard players set #pliH.player pliS. 0
    execute on origin run function zz.player_input:key/forward/tick_player

## ホールドが終了したら削除
    execute if score #pliH.player pliS. matches 1 run tag @s remove pliT.active.forward