#> zz.player_input:main/hold_end
# ホールドの終了
# @within
#   function zz.player_input:**

## イベントの実行
    execute unless data storage player_input:zz settings{hold_end:""} run function zz.player_input:item/event/hold_end with storage player_input:zz settings

## 設定
    # スコア
    tag @s remove pliT.hold.click_item
    scoreboard players operation @s pliS.time.click_item += @s time.click_item
    # タグ
    tag @s remove pliT.hold.forward