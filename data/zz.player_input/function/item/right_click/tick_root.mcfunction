#> zz.player_input:item/right_click/tick_root
# タップ判定用のスコア加算
# @within
#   function zz.player_input:**

## データを取得
    # ストレージの設定
    data modify storage player_input:zz events set value []
    data modify storage player_input:zz macro.list set value []
    data modify storage player_input:zz settings set from storage player_input: click_item
    # アイテムデータの取得
    item replace entity 4fe002bb-0-6-0-a00000001 container.0 from entity @s container.0
    data modify storage player_input: item set from entity 4fe002bb-0-6-0-a00000001 Item
    data modify storage player_input:zz settings merge from storage player_input: item.components."minecraft:custom_data".click_event
    data modify storage player_input:zz events append from storage player_input: item.components."minecraft:custom_data".click_event

## アイテムの再設定が必要な場合
    execute if entity @s[tag=pliT.item.reset] run function zz.player_input:item/right_click/reset

## プレイヤーから実行
    scoreboard players set #pliH.player pliS. 0
    execute on origin run function zz.player_input:item/right_click/tick_player
    
## ホールドが終了したら削除
    execute if score #pliH.player pliS. matches 1 run scoreboard players reset @s pliS.time.click_item