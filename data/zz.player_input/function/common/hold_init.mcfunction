#> zz.player_input:common/hold_init
# ホールド開始時実行
# @within
#   function zz.player_input:**

## 履歴に記録
    data modify storage player_input: history append value {key:"",action:"hold_init",action_type:"hold_init",time:0}
    data modify storage player_input: history[-1].key set from storage player_input:zz key_type
    data modify storage player_input: history[-1].time set from storage player_input:zz gametime
    data remove storage player_input: history[0]

## 個別処理
    # スコア処理
    scoreboard players set #pliH.input pliS. 1
    scoreboard players set #pliH.mode.temp pliS.time 2
    # イベント実行
    data modify storage player_input:zz macro.list append from storage player_input:zz events[].hold_init
    function zz.player_input:common/event