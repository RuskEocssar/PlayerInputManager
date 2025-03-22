#> zz.player_input:sprint/tick
# 常時実行
# @within
#   function zz.player_input:**

## プレイヤーから実行
    scoreboard players set #pliH.player pliS. 0
    execute on origin run function zz.player_input:key/sprint/tick_player

## ホールドが終了したら削除
    scoreboard players add @s pliS. 1
    execute if score #pliH.player pliS. matches 1 run scoreboard players reset @s pliS.time.sprint