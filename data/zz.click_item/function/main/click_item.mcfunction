#> zz.click_item:main/click_item
# アイテムをクリックしたときに実行されるファンクション
# @within
#   advancement zz.click_item:click_item

## アイテムデータを反映
    tag @s add _player
    # アイテムデータを初期化
    data modify storage click_item: item set value {components:{"minecraft:custom_data":{click_event:{click:"",double_click:"",hold:"",hold_init:"",hold_end:""}}}}
    data modify storage click_item: item.components."minecraft:custom_data".click_event.click_interval set from storage click_item: click_interval
    data modify storage click_item: item.components."minecraft:custom_data".click_event.hold_threshold set from storage click_item: hold_threshold
    data modify storage click_item: item.components."minecraft:custom_data".click_event.double_click_range set from storage click_item: double_click_range
    # クリックのモードを取得
    execute if entity @s[advancements={zz.click_item:click_item={useing_item_mainhand=true}}] run scoreboard players set #cliH.player cliS. 0
    execute if entity @s[advancements={zz.click_item:click_item={useing_item_offhand=true}}] run scoreboard players set #cliH.player cliS. 1
    execute if entity @s[advancements={zz.click_item:click_item={consume_item_offhand=true}}] run scoreboard players set #cliH.player cliS. 2
    execute if entity @s[advancements={zz.click_item:click_item={consume_item_mainhand=true}}] run scoreboard players set #cliH.player cliS. 3
    # クリックを開始したとき
    execute unless score @s cliS.time.click matches 0..2147483646 run schedule function zz.click_item:main/tick 1t replace
    # 紐づけされたアイテムエンティティを検索
        scoreboard players set #cliH. cliS. 0
        execute as 4fe002bb-0-2-0-a00000001 on passengers if function zz.click_item:main/item/check_origin run function zz.click_item:main/item/set_item
        # 見つからない場合は新たに召喚
        execute if score #cliH. cliS. matches 0 run function zz.click_item:main/init_click
    # 後処理
    tag @s remove _player

## クリックの判定
    # 長押しによるイベントがない場合
    execute if data storage click_item: item.components."minecraft:custom_data".click_event{hold:"",hold_init:"",hold_end:""} run function zz.click_item:main/event_wohold
    # ある場合
    execute unless data storage click_item: item.components."minecraft:custom_data".click_event{hold:"",hold_init:"",hold_end:""} run function zz.click_item:main/event_whold
    # クリック判定用時間のリセット
    scoreboard players set @s cliS.time.click 0
    execute unless score @s player.click.time matches 0.. run scoreboard players set @s player.click.time 0

## 後処理
    advancement revoke @s only zz.click_item:click_item