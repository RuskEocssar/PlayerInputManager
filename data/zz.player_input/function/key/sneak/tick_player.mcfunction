#> zz.player_input:key/sneak/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## イベント実行
    scoreboard players operation #pliH.time pliS.time = @s time.sneak
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.sneak
    # ホールド
    execute if entity @s[tag=pliT.hold.sneak] if predicate zz.player_input:hold if predicate zz.player_input:click run function zz.player_input:key/event/hold_end
    execute if entity @s[tag=pliT.hold.sneak] if predicate zz.player_input:hold if predicate zz.player_input:click run tag @s remove pliT.hold.sneak

## スコア加算
    scoreboard players add @s pliS.time.sneak 1
    scoreboard players add @s[scores={time.sneak=0..}] time.sneak 1
    execute as @s[scores={time.sneak=0..},predicate=zz.player_input:click] run scoreboard players set @s time.sneak -1

## tickの終了
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.sneak
    execute unless predicate zz.player_input:interval_time store success score #pliH.player pliS. run scoreboard players set @s pliS.time.sneak 2147483647