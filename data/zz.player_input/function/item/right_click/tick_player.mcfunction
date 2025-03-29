#> zz.player_input:item/right_click/tick_player
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**
    
## 常時実行
    # スコアの取得
    scoreboard players operation #pliH.time pliS.time = @s time.click_item
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.click_item
    scoreboard players operation #pliH.mode pliS.time = @s mode.click_item
    # 共通処理
    function zz.player_input:common/tick

## スコアの反映
    scoreboard players operation @s time.click_item = #pliH.time pliS.time
    scoreboard players operation @s pliS.time.click_item = #pliH.interval pliS.time
    scoreboard players operation @s mode.click_item = #pliH.mode pliS.time