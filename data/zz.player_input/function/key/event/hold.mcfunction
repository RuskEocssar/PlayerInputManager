#> zz.player_input:key/event/hold
# ホールド中実行
# @within
#   function zz.player_input:**

## 個別処理
    data modify storage player_input:zz data.history append value {key:"forward",action:"hold",time:0}
    data modify storage player_input:zz macro.list append from storage player_input:zz key_event[].hold
    # 共通処理
    function zz.player_input:key/event/common