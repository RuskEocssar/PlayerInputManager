#> zz.player_input:item/right_click/main
# アイテムをクリックしたときに実行されるファンクション
# @within
#   advancement zz.player_input:input_item

## アイテムデータを反映
    tag @s add _player
    # アイテムデータを初期化
    data modify storage player_input: item set value {components:{"minecraft:custom_data":{click_event:{click:"",double_click:"",hold:"",hold_init:"",hold_end:""}}}}
    # クリックのモードを取得
    execute if entity @s[advancements={zz.player_input:item/right_click={useing_item_mainhand=true}}] run scoreboard players set #pliH.player pliS. 0
    execute if entity @s[advancements={zz.player_input:item/right_click={useing_item_offhand=true}}] run scoreboard players set #pliH.player pliS. 1
    execute if entity @s[advancements={zz.player_input:item/right_click={consume_item_offhand=true}}] run scoreboard players set #pliH.player pliS. 2
    execute if entity @s[advancements={zz.player_input:item/right_click={consume_item_mainhand=true}}] run scoreboard players set #pliH.player pliS. 3
    # 紐づけされたアイテムエンティティを検索
        scoreboard players set #pliH. pliS. 0
        execute as 4fe002bb-0-2-0-a00000001 on passengers if function zz.player_input:root/check_origin run function zz.player_input:item/right_click/set_item
        # 見つからない場合は新たに召喚
        execute if score #pliH. pliS. matches 0 at 4fe002bb-0-2-0-a00000001 if function zz.player_input:root/summon on passengers if function zz.player_input:root/check_origin run function zz.player_input:item/right_click/set_item
    # 後処理
    tag @s remove _player

## イベントの実行
    # クリックの判定
        # ストレージの設定
        data modify storage player_input:zz events set value []
        data modify storage player_input:zz macro.list set value []
        data modify storage player_input:zz settings set from storage player_input: click_item
        data modify storage player_input:zz settings merge from storage player_input: item.components."minecraft:custom_data".click_event
        data modify storage player_input:zz events append from storage player_input: item.components."minecraft:custom_data".click_event
        # スコアの設定
        scoreboard players operation #pliH.time pliS.time = @s time.click_item
        scoreboard players operation #pliH.interval pliS.time = @s pliS.time.click_item
        scoreboard players operation #pliH.mode pliS.time = @s mode.click_item
        # 共通処理
        function zz.player_input:common/main
    # スコアの反映
    scoreboard players operation @s time.click_item = #pliH.time pliS.time
    scoreboard players operation @s pliS.time.click_item = #pliH.interval pliS.time
    scoreboard players operation @s mode.click_item = #pliH.mode pliS.time

## 常時実行の開始
    schedule function zz.player_input:item/right_click/tick 1t replace

## 後処理
    advancement revoke @s only zz.player_input:item/right_click