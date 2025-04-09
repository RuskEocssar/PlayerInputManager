#> zz.player_input:item/slot/change_offhand
# アイテムがオフハンドに移動したときに実行されるファンクション
# @within
#   advancement zz.player_input:change_slot

## アイテムの編集
    # 取得
    item replace entity 4fe002bb-0-6-0-a00000001 container.0 from entity @s weapon.offhand
    # 編集
        # 初期設定
        execute unless data entity 4fe002bb-0-6-0-a00000001 Item.components."minecraft:custom_data"._slot run function zz.player_input:item/slot/set_init
        # スロット情報
        item modify entity 4fe002bb-0-6-0-a00000001 container.0 {function:"set_custom_data",tag:{_slot:"offhand"}}
    # 反映
    item replace entity @s weapon.offhand from entity 4fe002bb-0-6-0-a00000001 container.0

## 後処理
    advancement revoke @s only zz.player_input:item/change_offhand