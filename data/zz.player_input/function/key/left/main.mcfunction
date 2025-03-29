#> zz.player_input:key/left/main
# 前進キーを入力したとき
# @within
#   function zz.player_input:**

## クリックの判定
    # 初期化
    data modify storage player_input:zz events set value []
    data modify storage player_input:zz macro.list set value []
    # データの取得
    scoreboard players operation #pliH.time pliS.time = @s time.left
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.left
    scoreboard players operation #pliH.mode pliS.time = @s mode.left
    data modify storage player_input:zz key_type set value "left"
    data modify storage player_input:zz settings set from storage player_input: key_input
    data modify storage player_input:zz events append from storage player_input:zz query[].left
    # 共通処理
    function zz.player_input:common/main

## データの反映
    scoreboard players operation @s time.left = #pliH.time pliS.time
    scoreboard players operation @s pliS.time.left = #pliH.interval pliS.time
    scoreboard players operation @s mode.left = #pliH.mode pliS.time

## 終了処理
    return 1