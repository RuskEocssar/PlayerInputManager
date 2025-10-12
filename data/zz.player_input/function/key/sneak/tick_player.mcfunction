#> zz.player_input:key/sneak/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## 常時実行
    # スコアの取得
    scoreboard players operation #pinH.time pinS.time = @s time.sneak
    scoreboard players operation #pinH.interval pinS.time = @s pinS.time.sneak
    scoreboard players operation #pinH.mode pinS.time = @s mode.sneak
    # 共通処理
    function zz.player_input:common/tick

## スコアの反映
    scoreboard players operation @s time.sneak = #pinH.time pinS.time
    scoreboard players operation @s pinS.time.sneak = #pinH.interval pinS.time
    scoreboard players operation @s mode.sneak = #pinH.mode pinS.time