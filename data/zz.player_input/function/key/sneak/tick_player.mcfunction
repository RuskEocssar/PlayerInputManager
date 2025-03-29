#> zz.player_input:key/sneak/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## 常時実行
    # スコアの取得
    scoreboard players operation #pliH.time pliS.time = @s time.sneak
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.sneak
    scoreboard players operation #pliH.mode pliS.time = @s mode.sneak
    # 共通処理
    function zz.player_input:common/tick

## スコアの反映
    scoreboard players operation @s time.sneak = #pliH.time pliS.time
    scoreboard players operation @s pliS.time.sneak = #pliH.interval pliS.time
    scoreboard players operation @s mode.sneak = #pliH.mode pliS.time