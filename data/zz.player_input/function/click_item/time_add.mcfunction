#> zz.player_input:main/time_add
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## ホールド終了
    execute if entity @s[tag=pliT.click_item.hold] if predicate zz.player_input:hold if predicate zz.player_input:click run function zz.player_input:main/hold_end

## スコア加算
    scoreboard players add @s[scores={player.click.time=0..}] player.click.time 1
    execute as @s[scores={player.click.time=0..},predicate=zz.player_input:click] run scoreboard players set @s player.click.time -1

## スコア加算
    scoreboard players add @s pliS.time.click 1

## tickの終了
    execute unless predicate zz.player_input:interval_time store success score #pliH.player pliS.time.click run scoreboard players set @s pliS.time.click 2147483647