#> zz.player_input:key/right/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## イベント実行
    scoreboard players operation #pliH.time pliS.time = @s time.right
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.right
    # ホールド
    execute if entity @s[tag=pliT.hold.right] if predicate zz.player_input:hold if predicate zz.player_input:input run function zz.player_input:key/event/hold_end
    execute if entity @s[tag=pliT.hold.right] if predicate zz.player_input:hold if predicate zz.player_input:input run tag @s remove pliT.hold.right

## スコア加算
    scoreboard players add @s pliS.time.right 1
    scoreboard players add @s[scores={time.right=0..}] time.right 1
    execute as @s[scores={time.right=0..},predicate=zz.player_input:input] run scoreboard players set @s time.right -1

## tickの終了
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.right
    execute unless predicate zz.player_input:interval_time store success score #pliH.player pliS. run scoreboard players set @s pliS.time.right 2147483647