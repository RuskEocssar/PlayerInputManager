#> zz.player_input:root/check_origin
# アイテムのオーナーを確認
# @within
#   function zz.player_input:**

## アイテムのNBTをセット
    execute on origin if entity @s[tag=_player] run return 1