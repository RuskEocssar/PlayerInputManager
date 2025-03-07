#> zz.player_input:item/right_click/tick_root
# クリック判定用のスコア加算
# @within
#   function zz.player_input:**

## アイテムから常時実行
    # アイテムデータを取得
    item replace entity 4fe002bb-0-6-0-a00000001 container.0 from entity @s container.0
    data modify storage player_input: item set value {components:{"minecraft:custom_data":{click_event:{click:"",double_click:"",hold:"",hold_init:"",hold_end:""}}}}
    data modify storage player_input: item.components."minecraft:custom_data".click_event merge from storage player_input: click_item
    data modify storage player_input: item merge from entity 4fe002bb-0-6-0-a00000001 Item
    # アイテムの再設定が必要な場合
    execute if entity @s[tag=pliT.item.reset] run function zz.player_input:item/right_click/reset
    # プレイヤーから実行
    scoreboard players set #pliH.player pliS.time 0
    execute on origin run function zz.player_input:item/right_click/tick_player

## ホールドが終了したら削除
    execute if score #pliH.player pliS.time matches 1 run tag @s remove pliT.active.click_item