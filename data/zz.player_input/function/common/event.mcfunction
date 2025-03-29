#> zz.player_input:common/execute
# イベント実行
# @within
#   function zz.player_input:**

## イベントを実行
    # リストがない場合終了
    execute unless data storage player_input:zz macro.list[-1] run return 0
    # ループして実行
    data modify storage player_input:zz macro.command set from storage player_input:zz macro.list[-1]
    data remove storage player_input:zz macro.list[-1]
    function zz.player_input:common/macro/loop with storage player_input:zz macro