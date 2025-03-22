#> zz.player_input:key/event/hold_init
# ホールド開始時実行
# @within
#   function zz.player_input:**

## 履歴に記録
    data modify storage player_input: history append value {key:"",action:"hold_init",action_type:"hold",time:0}
    data modify storage player_input: history[-1].key set from storage player_input:zz key_type
    data modify storage player_input: history[-1].time set from storage player_input:zz gametime
    data remove storage player_input: history[0]

## 個別処理
    data modify storage player_input:zz macro.list append from storage player_input:zz key_event[].hold_init
    # 共通処理
    function zz.player_input:key/event/common