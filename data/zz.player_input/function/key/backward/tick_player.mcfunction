#> zz.player_input:key/backward/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## 常時実行
    # スコアの取得
    scoreboard players operation #pliH.time pliS.time = @s time.backward
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.backward
    scoreboard players operation #pliH.mode pliS.time = @s mode.backward
    # 共通処理
    function zz.player_input:common/tick

## スコアの反映
    scoreboard players operation @s time.backward = #pliH.time pliS.time
    scoreboard players operation @s pliS.time.backward = #pliH.interval pliS.time
    scoreboard players operation @s mode.backward = #pliH.mode pliS.time