#> zz.player_input:key/sprint/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## イベント実行
    scoreboard players operation #pliH.time pliS.time = @s time.sprint
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.sprint
    # ホールド
    execute if entity @s[tag=pliT.hold.sprint] if predicate zz.player_input:hold if predicate zz.player_input:click run function zz.player_input:key/event/hold_end
    execute if entity @s[tag=pliT.hold.sprint] if predicate zz.player_input:hold if predicate zz.player_input:click run tag @s remove pliT.hold.sprint

## スコア加算
    scoreboard players add @s pliS.time.sprint 1
    scoreboard players add @s[scores={time.sprint=0..}] time.sprint 1
    execute as @s[scores={time.sprint=0..},predicate=zz.player_input:click] run scoreboard players set @s time.sprint -1

## tickの終了
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.sprint
    execute unless predicate zz.player_input:interval_time store success score #pliH.player pliS. run scoreboard players set @s pliS.time.sprint 2147483647