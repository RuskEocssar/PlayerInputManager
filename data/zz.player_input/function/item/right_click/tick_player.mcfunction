#> zz.player_input:item/right_click/tick_player
# タップ判定用のスコア加算
# @within
#   function zz.player_input:**
    
## 常時実行
    # スコアの取得
    scoreboard players operation #pinH.time pinS.time = @s time.right_click
    scoreboard players operation #pinH.interval pinS.time = @s pinS.time.right_click
    scoreboard players operation #pinH.mode pinS.time = @s mode.right_click
    # 共通処理
    function zz.player_input:common/tick

## スコアの反映
    scoreboard players operation @s time.right_click = #pinH.time pinS.time
    scoreboard players operation @s pinS.time.right_click = #pinH.interval pinS.time
    scoreboard players operation @s mode.right_click = #pinH.mode pinS.time