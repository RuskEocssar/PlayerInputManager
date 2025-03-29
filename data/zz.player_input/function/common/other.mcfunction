#> zz.player_input:common/other
# そのほかタップ時実行
# @within
#   function zz.player_input:**

## 個別処理
    data modify storage player_input:zz macro.list append from storage player_input:zz events[].other
    # 共通処理
    function zz.player_input:common/event