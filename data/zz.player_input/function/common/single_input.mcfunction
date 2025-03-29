#> zz.player_input:common/tap
# シングルタップ時実行
# @within
#   function zz.player_input:**

## 履歴に記録
    data modify storage player_input: history append value {key:"",action:"input",action_type:"input",time:0}
    data modify storage player_input: history[-1].key set from storage player_input:zz key_type
    data modify storage player_input: history[-1].time set from storage player_input:zz gametime
    data remove storage player_input: history[0]

## 個別処理
    # スコア処理
    scoreboard players set #pliH.mode.temp pliS.time 0
    # イベント実行
    data modify storage player_input:zz macro.list append from storage player_input:zz events[].every_input
    data modify storage player_input:zz macro.list append from storage player_input:zz events[].single_input
    function zz.player_input:common/event