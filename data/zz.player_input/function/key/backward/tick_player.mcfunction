#> zz.player_input:key/backward/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## 常時実行
    # スコアの取得
    scoreboard players operation #pinH.time pinS.time = @s time.backward
    scoreboard players operation #pinH.interval pinS.time = @s pinS.time.backward
    scoreboard players operation #pinH.mode pinS.time = @s mode.backward
    # 共通処理
    function zz.player_input:common/tick

## スコアの反映
    scoreboard players operation @s time.backward = #pinH.time pinS.time
    scoreboard players operation @s pinS.time.backward = #pinH.interval pinS.time
    scoreboard players operation @s mode.backward = #pinH.mode pinS.time