#> zz.player_input:key/sprint/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## 常時実行
    # スコアの取得
    scoreboard players operation #pliH.time pliS.time = @s time.sprint
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.sprint
    scoreboard players operation #pliH.mode pliS.time = @s mode.sprint
    # 共通処理
    function zz.player_input:common/tick

## スコアの反映
    scoreboard players operation @s time.sprint = #pliH.time pliS.time
    scoreboard players operation @s pliS.time.sprint = #pliH.interval pliS.time
    scoreboard players operation @s mode.sprint = #pliH.mode pliS.time