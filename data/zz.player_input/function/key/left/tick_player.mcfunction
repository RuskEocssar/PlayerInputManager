#> zz.player_input:key/left/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## 常時実行
    # スコアの取得
    scoreboard players operation #pliH.time pliS.time = @s time.left
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.left
    scoreboard players operation #pliH.mode pliS.time = @s mode.left
    # 共通処理
    function zz.player_input:common/tick

## スコアの反映
    scoreboard players operation @s time.left = #pliH.time pliS.time
    scoreboard players operation @s pliS.time.left = #pliH.interval pliS.time
    scoreboard players operation @s mode.left = #pliH.mode pliS.time