#> zz.player_input:key/right/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## 常時実行
    # スコアの取得
    scoreboard players operation #pinH.time pinS.time = @s time.right
    scoreboard players operation #pinH.interval pinS.time = @s pinS.time.right
    scoreboard players operation #pinH.mode pinS.time = @s mode.right
    # 共通処理
    function zz.player_input:common/tick

## スコアの反映
    scoreboard players operation @s time.right = #pinH.time pinS.time
    scoreboard players operation @s pinS.time.right = #pinH.interval pinS.time
    scoreboard players operation @s mode.right = #pinH.mode pinS.time