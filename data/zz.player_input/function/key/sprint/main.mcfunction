#> zz.player_input:key/sprint/main
# 前進キーを入力したとき
# @within
#   function zz.player_input:**

## クリックの判定
    # 初期化
    data modify storage player_input:zz events set value []
    data modify storage player_input:zz macro.list set value []
    # データの取得
    scoreboard players operation #pliH.time pliS.time = @s time.sprint
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.sprint
    scoreboard players operation #pliH.mode pliS.time = @s mode.sprint
    data modify storage player_input:zz key_type set value "sprint"
    data modify storage player_input:zz settings set from storage player_input: key_input
    data modify storage player_input:zz events append from storage player_input:zz query[].sprint
    # 共通処理
    function zz.player_input:common/main

## データの反映
    scoreboard players operation @s time.sprint = #pliH.time pliS.time
    scoreboard players operation @s pliS.time.sprint = #pliH.interval pliS.time
    scoreboard players operation @s mode.sprint = #pliH.mode pliS.time

## 終了処理
    return 1