#> zz.player_input:event/hold_end
# イベントの実行
# @within
#   function zz.player_input:**

$$(hold_end)

## スコアの設定
    tag @s remove pliT.hold.click_item
    scoreboard players operation @s pliS.time.click_item += @s time.click_item