#> zz.player_input:common/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## イベント実行
    # ホールド
    execute if score #pliH.mode pliS.time matches 2 if predicate zz.player_input:hold if predicate zz.player_input:input at @s run function zz.player_input:common/hold_end

## スコア加算
    execute if score #pliH.time pliS.time matches 0.. run scoreboard players add #pliH.time pliS.time 1
    execute if score #pliH.time pliS.time matches 0.. if predicate zz.player_input:input run scoreboard players set #pliH.time pliS.time -1
    scoreboard players add #pliH.interval pliS.time 1

## tickの終了
    execute unless predicate zz.player_input:interval_time store success score #pliH.player pliS. run scoreboard players set #pliH.interval pliS.time 2147483647