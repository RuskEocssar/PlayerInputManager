#> zz.player_input:key/event/check_remain
# アイテムのオーナーを確認
# @within
#   function zz.player_input:**

## アイテムのNBTをセット
    execute on passengers if data entity @s data.query[] run return 1