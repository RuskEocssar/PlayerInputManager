#> zz.player_input:item/right_click/main
# アイテムをクリックしたときに実行されるファンクション
# @within
#   advancement zz.player_input:click_item

## アイテムデータを反映
    tag @s add _player
    # アイテムデータを初期化
    data modify storage player_input: item set value {components:{"minecraft:custom_data":{click_event:{click:"",double_click:"",hold:"",hold_init:"",hold_end:""}}}}
    # クリックのモードを取得
    execute if entity @s[advancements={zz.player_input:item/right_click={useing_item_mainhand=true}}] run scoreboard players set #pliH.player pliS. 0
    execute if entity @s[advancements={zz.player_input:item/right_click={useing_item_offhand=true}}] run scoreboard players set #pliH.player pliS. 1
    execute if entity @s[advancements={zz.player_input:item/right_click={consume_item_offhand=true}}] run scoreboard players set #pliH.player pliS. 2
    execute if entity @s[advancements={zz.player_input:item/right_click={consume_item_mainhand=true}}] run scoreboard players set #pliH.player pliS. 3
    # クリックを開始したとき
    execute unless score @s pliS.time.click_item matches 1..2147483646 run scoreboard players set @s pliS.time.click_item 2147483647
    execute unless score @s pliS.time.click_item matches 0..2147483646 run schedule function zz.player_input:item/right_click/tick 1t replace
    # 紐づけされたアイテムエンティティを検索
        scoreboard players set #pliH. pliS. 0
        execute as 4fe002bb-0-2-0-a00000001 on passengers if function zz.player_input:root/check_origin run function zz.player_input:item/right_click/set_item
        # 見つからない場合は新たに召喚
        execute if score #pliH. pliS. matches 0 at 4fe002bb-0-2-0-a00000001 run function zz.player_input:root/summon
    # 後処理
    tag @s remove _player

## クリックの判定
    scoreboard players operation #pliH.time pliS.time = @s time.click_item
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.click_item
    data modify storage player_input:zz settings set from storage player_input: click_item
    data modify storage player_input:zz settings merge from storage player_input: item.components."minecraft:custom_data".click_event
    # 長押しによるイベントがない場合
    execute if data storage player_input:zz settings{hold:"",hold_init:"",hold_end:""} run function zz.player_input:item/right_click/event_wohold
    # ある場合
    execute unless data storage player_input:zz settings{hold:"",hold_init:"",hold_end:""} run function zz.player_input:item/right_click/event_whold
    # クリック判定用時間のリセット
    scoreboard players set @s pliS.time.click_item 0
    execute unless score @s time.click_item matches 0.. run scoreboard players set @s time.click_item 0

## 後処理
    advancement revoke @s only zz.player_input:item/right_click