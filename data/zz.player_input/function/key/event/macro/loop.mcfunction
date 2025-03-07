#> zz.player_input:event/click
# イベントの実行
# @within
#   function zz.player_input:**

$$(command)

    # リストがない場合終了
    execute unless data storage player_input:zz macro.list[-1] run return 0
    # ループする
    data modify storage player_input:zz macro.command set from storage player_input:zz list[-1]
    data remove storage player_input:zz macro.list[-1]
    function zz.player_input:key/event/macro/loop with storage player_input:zz macro