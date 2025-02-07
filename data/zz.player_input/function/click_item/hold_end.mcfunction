#> zz.player_input:main/hold_end
# ホールドの終了
# @within
#   function zz.player_input:**

## イベントの実行
    execute unless data storage player_input: item.components."minecraft:custom_data".click_event{hold_end:""} run function zz.player_input:event/hold_end with storage player_input: item.components."minecraft:custom_data".click_event

## スコアの設定
    tag @s[tag=pliT.click_item.hold] remove pliT.click_item.hold
    scoreboard players operation @s pliS.time.click += @s player.click.time