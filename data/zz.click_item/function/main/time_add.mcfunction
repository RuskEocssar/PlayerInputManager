#> zz.click_item:main/time_add
# クリック判定用のスコア加算
# @within
#   function zz.click_item:**


## ホールドの処理
    # ホールド開始
    execute if predicate zz.click_item:hold_init unless data storage click_item: item.components."minecraft:custom_data".click_event{hold_init:""} run function zz.click_item:event/hold_init with storage click_item: item.components."minecraft:custom_data".click_event
    # ホールド終了
    execute if predicate zz.click_item:hold if predicate zz.click_item:click run function zz.click_item:main/hold_end

## スコア加算
    scoreboard players add @s[scores={player.click.time=0..}] player.click.time 1

## 判定の終了
    execute as @s[scores={player.click.time=0..},predicate=zz.click_item:click] run scoreboard players set @s player.click.time -1

## スコア加算
    scoreboard players add @s cliS.time.click 1

## tickの終了
    execute unless predicate zz.click_item:interval_time store success score #cliH.player cliS.time.click run scoreboard players set @s cliS.time.click 2147483647