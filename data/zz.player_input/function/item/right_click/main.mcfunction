#> zz.player_input:item/right_click/main
# アイテムをタップしたときに実行されるファンクション
# @within
#   advancement zz.player_input:input_item

## アイテムデータを反映
    tag @s add _player
    # アイテムデータを初期化
    data modify storage player_input: item set value {}
    # タップのモードを取得
    execute if entity @s[advancements={zz.player_input:item/right_click={useing_item_mainhand=true}}] run scoreboard players set #pinH.player pinS. 0
    execute if entity @s[advancements={zz.player_input:item/right_click={useing_item_offhand=true}}] run scoreboard players set #pinH.player pinS. 1
    execute if entity @s[advancements={zz.player_input:item/right_click={consume_item_offhand=true}}] run scoreboard players set #pinH.player pinS. 2
    execute if entity @s[advancements={zz.player_input:item/right_click={consume_item_mainhand=true}}] run scoreboard players set #pinH.player pinS. 3
    # 紐づけされたアイテムエンティティを検索
        scoreboard players set #pinH.check_player pinS. 0
        execute as 4fe002bb-0-2-0-a00000001 on passengers if function zz.player_input:root/check_origin run function zz.player_input:item/right_click/set_item
        # 見つからない場合は新たに召喚
        execute if score #pinH.check_player pinS. matches 0 as 4fe002bb-0-2-0-a00000001 at @s run function zz.player_input:root/summon
        execute if score #pinH.check_player pinS. matches 0 as 4fe002bb-0-2-0-a00000001 on passengers if function zz.player_input:root/check_origin run function zz.player_input:item/right_click/set_item
    # 後処理
    tag @s remove _player

## イベントの実行
    # タップの判定
        # ストレージの設定
        data modify storage player_input:zz events set value []
        data modify storage player_input:zz macro.list set value []
        data modify storage player_input:zz settings set from storage player_input: click_item
        data modify storage player_input:zz settings merge from storage player_input: item.components."minecraft:custom_data".right_click
        data modify storage player_input:zz events append from storage player_input: item.components."minecraft:custom_data".right_click
        # スコアの設定
        scoreboard players operation #pinH.time pinS.time = @s time.right_click
        scoreboard players operation #pinH.interval pinS.time = @s pinS.time.right_click
        scoreboard players operation #pinH.mode pinS.time = @s mode.right_click
        # 共通処理
        function zz.player_input:common/main
    # スコアの反映
    scoreboard players operation @s time.right_click = #pinH.time pinS.time
    scoreboard players operation @s pinS.time.right_click = #pinH.interval pinS.time
    scoreboard players operation @s mode.right_click = #pinH.mode pinS.time

## 常時実行の開始
    schedule function zz.player_input:item/right_click/tick 1t replace

## 後処理
    advancement revoke @s only zz.player_input:item/right_click