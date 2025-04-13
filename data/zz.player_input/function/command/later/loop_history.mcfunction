#> zz.player_input:command/later/loop_history
# 履歴ごとに実行
# @within
#   function zz.player_input:**

## データの取得・設定
    data modify storage player_input:zz _commands set value []
    data modify storage player_input:zz _input set from storage player_input:zz history[-1]
    data remove storage player_input:zz history[-1]

## コマンド入力ごとに確認
    function zz.player_input:command/later/loop_command

## ループ
    # 判定するコマンドや入力がない場合
    execute unless data storage player_input:zz _commands[0] run return fail
    execute unless data storage player_input:zz history[0] run return fail
    # ループを実行
    data modify storage player_input:zz commands set from storage player_input:zz _commands
    function zz.player_input:command/later/loop_history