#> zz.player_input:key/forward/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## 常時実行
    # スコアの取得
    scoreboard players operation #pinH.time pinS.time = @s time.forward
    scoreboard players operation #pinH.interval pinS.time = @s pinS.time.forward
    scoreboard players operation #pinH.mode pinS.time = @s mode.forward
    # 共通処理
    function zz.player_input:common/tick

## スコアの反映
    scoreboard players operation @s time.forward = #pinH.time pinS.time
    scoreboard players operation @s pinS.time.forward = #pinH.interval pinS.time
    scoreboard players operation @s mode.forward = #pinH.mode pinS.time