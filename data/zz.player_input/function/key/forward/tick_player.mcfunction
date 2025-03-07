#> zz.player_input:key/forward/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## イベント実行
    scoreboard players operation #pliH.time pliS.time = @s time.forward
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.forward
    # ホールド
    execute if entity @s[tag=pliT.hold.forward] if predicate zz.player_input:hold if predicate zz.player_input:click run function zz.player_input:item/right_click/hold_end

## スコア加算
    scoreboard players add @s pliS.time.forward 1
    scoreboard players add @s[scores={time.forward=0..}] time.forward 1
    execute as @s[scores={time.forward=0..},predicate=zz.player_input:click] run scoreboard players set @s time.forward -1

## tickの終了
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.forward
    execute unless predicate zz.player_input:interval_time store success score #pliH.player pliS.time.forward run scoreboard players set @s pliS.time.forward 2147483647