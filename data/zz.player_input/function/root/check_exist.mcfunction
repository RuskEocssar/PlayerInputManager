#> zz.player_input:root/check_exist
# プレイヤーの存在を監視
# @within
#   function zz.player_input:**

## プレイヤーの存在を監視
    # アイテムから実行
    execute as 4fe002bb-0-2-0-a00000001 on passengers if function zz.player_input:root/check_player run kill @s
    # ループ
    execute if score #pliH.key pliS. matches 1.. run schedule function zz.player_input:root/check_exist 300s replace