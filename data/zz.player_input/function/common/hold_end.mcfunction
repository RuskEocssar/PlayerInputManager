#> zz.player_input:common/hold_end
# ホールド終了時実行
# @within
#   function zz.player_input:**
    
## 履歴に記録
    data modify storage player_input: history append value {key:"",action:"hold_end",action_type:"hold",time:0}
    data modify storage player_input: history[-1].key set from storage player_input:zz key_type
    data modify storage player_input: history[-1].time set from storage player_input:zz gametime
    data remove storage player_input: history[0]

## 個別処理
    # スコア処理
    scoreboard players set #pliH.mode pliS.time 3
    # イベント実行
    data modify storage player_input:zz macro.list append from storage player_input:zz events[].hold_end
    function zz.player_input:common/event