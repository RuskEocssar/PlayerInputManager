#> zz.player_input:item/right_click/tick
# 常時実行
# @within
#   function zz.player_input:**

## アイテムから常時実行
    execute as 4fe002bb-0-2-0-a00000001 on passengers if entity @s[tag=pliT.active.click_item] run function zz.player_input:item/right_click/tick_root
    execute at 4fe002bb-0-2-0-a00000001 if entity @e[tag=pliT.active.click_item,distance=..1,limit=1,type=item] run schedule function zz.player_input:item/right_click/tick 1t