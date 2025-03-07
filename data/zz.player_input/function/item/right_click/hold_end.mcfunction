#> zz.player_input:main/hold_end
# ホールドの終了
# @within
#   function zz.player_input:**

## イベントの実行
    execute unless data storage player_input:zz data{hold_end:""} run function zz.player_input:item/event/hold_end with storage player_input:zz data

## スコアの設定
    tag @s remove pliT.hold.click_item
    scoreboard players operation @s pliS.time.click_item += @s time.click_item