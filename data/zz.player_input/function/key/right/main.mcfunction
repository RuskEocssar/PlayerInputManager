#> zz.player_input:key/right/main
# 前進キーを入力したとき
# @within
#   function zz.player_input:**

## クリックの判定
    # 初期化
    data modify storage player_input:zz events set value []
    data modify storage player_input:zz macro.list set value []
    # データの取得
    scoreboard players operation #pinH.time pinS.time = @s time.right
    scoreboard players operation #pinH.interval pinS.time = @s pinS.time.right
    scoreboard players operation #pinH.mode pinS.time = @s mode.right
    data modify storage player_input:zz key_type set value "right"
    data modify storage player_input:zz settings set from storage player_input: key_input
    data modify storage player_input:zz events append from storage player_input:zz query[].right
    # 共通処理
    function zz.player_input:common/main

## データの反映
    scoreboard players operation @s time.right = #pinH.time pinS.time
    scoreboard players operation @s pinS.time.right = #pinH.interval pinS.time
    scoreboard players operation @s mode.right = #pinH.mode pinS.time

## 終了処理
    return 1