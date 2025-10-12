#> zz.player_input:key/left/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## 常時実行
    # スコアの取得
    scoreboard players operation #pinH.time pinS.time = @s time.left
    scoreboard players operation #pinH.interval pinS.time = @s pinS.time.left
    scoreboard players operation #pinH.mode pinS.time = @s mode.left
    # 共通処理
    function zz.player_input:common/tick

## スコアの反映
    scoreboard players operation @s time.left = #pinH.time pinS.time
    scoreboard players operation @s pinS.time.left = #pinH.interval pinS.time
    scoreboard players operation @s mode.left = #pinH.mode pinS.time