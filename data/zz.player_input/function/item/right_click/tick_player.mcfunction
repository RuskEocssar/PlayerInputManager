#> zz.player_input:item/right_click/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## イベント実行
    scoreboard players operation #pliH.time pliS.time = @s time.click_item
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.click_item
    # ホールド
    execute if entity @s[tag=pliT.hold.click_item] if predicate zz.player_input:hold if predicate zz.player_input:click run function zz.player_input:item/right_click/hold_end

## スコア加算
    scoreboard players add @s pliS.time.click_item 1
    scoreboard players add @s[scores={time.click_item=0..}] time.click_item 1
    execute as @s[scores={time.click_item=0..},predicate=zz.player_input:click] run scoreboard players set @s time.click_item -1

## tickの終了
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.click_item
    execute unless predicate zz.player_input:interval_time store success score #pliH.player pliS.time run scoreboard players set @s pliS.time.click_item 2147483647