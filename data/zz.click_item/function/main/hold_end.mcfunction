#> zz.click_item:main/hold_end
# ホールドの終了
# @within
#   function zz.click_item:**

## イベントの実行
    execute unless data storage click_item: item.components."minecraft:custom_data".click_event{hold_end:""} run function zz.click_item:event/hold_end with storage click_item: item.components."minecraft:custom_data".click_event

## スコアの調整
    scoreboard players operation @s cliS.time.click += @s player.click.time