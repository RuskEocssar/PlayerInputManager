#> zz.player_input:key/backward/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## イベント実行
    scoreboard players operation #pliH.time pliS.time = @s time.backward
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.backward
    # ホールド
    execute if entity @s[tag=pliT.hold.backward] if predicate zz.player_input:hold if predicate zz.player_input:input run function zz.player_input:key/event/hold_end
    execute if entity @s[tag=pliT.hold.backward] if predicate zz.player_input:hold if predicate zz.player_input:input run tag @s remove pliT.hold.backward

## スコア加算
    scoreboard players add @s pliS.time.backward 1
    scoreboard players add @s[scores={time.backward=0..}] time.backward 1
    execute as @s[scores={time.backward=0..},predicate=zz.player_input:input] run scoreboard players set @s time.backward -1

## tickの終了
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.backward
    execute unless predicate zz.player_input:interval_time store success score #pliH.player pliS. run scoreboard players set @s pliS.time.backward 2147483647