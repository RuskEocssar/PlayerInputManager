#> zz.player_input:key/event/every_tap
# すべてのタップ時実行
# @within
#   function zz.player_input:**
    
## 個別処理
    data modify storage player_input:zz macro.list append from storage player_input:zz key_event[].every_tap
    # 共通処理
    function zz.player_input:key/event/common