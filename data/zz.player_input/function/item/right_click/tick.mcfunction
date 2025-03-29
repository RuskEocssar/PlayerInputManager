#> zz.player_input:item/right_click/tick
# 常時実行
# @within
#   function zz.player_input:**

## 常時実行
    # アイテムから実行
    execute as 4fe002bb-0-2-0-a00000001 on passengers if entity @s[scores={pliS.time.click_item=1..}] run function zz.player_input:item/right_click/tick_root
    # ループ
    execute at 4fe002bb-0-2-0-a00000001 if entity @e[scores={pliS.time.click_item=1..},distance=..1,limit=1,type=item] run schedule function zz.player_input:item/right_click/tick 1t