#> zz.player_input:key/forward/tick
# 常時実行
# @within
#   function zz.player_input:**

## ストレージの取得
    data modify storage player_input:zz events set value []
    data modify storage player_input:zz macro.list set value []
    data modify storage player_input:zz key_type set value "forward"
    data modify storage player_input:zz settings set from storage player_input: key_input
    data modify storage player_input:zz events append from storage player_input:zz query[].forward

## プレイヤーから実行
    scoreboard players set #pliH.player pliS. 0
    execute on origin run function zz.player_input:key/forward/tick_player

## スコア設定
    scoreboard players add @s pliS. 1
    
## ホールドが終了したら削除
    execute if score #pliH.player pliS. matches 1 run scoreboard players reset @s pliS.time.forward