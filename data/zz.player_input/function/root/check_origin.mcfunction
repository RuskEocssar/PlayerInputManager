#> zz.player_input:main/item/check_origin
# アイテムのオーナーを確認
# @within
#   function zz.player_input:**

## アイテムのNBTをセット
    execute on origin if entity @s[tag=_player] run return 1