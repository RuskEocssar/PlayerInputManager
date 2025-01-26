#> zz.click_item:slot/change_offhand
# アイテムをクリックしたときに実行されるファンクション
# @within
#   advancement zz.click_item:change_slot

## アイテムの編集
    # 取得
    item replace entity 4fe002bb-0-6-0-a00000001 container.0 from entity @s weapon.offhand
    # 編集
        # 初期設定
        execute unless data entity 4fe002bb-0-6-0-a00000001 Item.components."minecraft:custom_data".slot run function zz.click_item:slot/set_init
        # スロット情報
        item modify entity 4fe002bb-0-6-0-a00000001 container.0 {function:"set_custom_data",tag:{slot:"offhand"}}
    # 反映
    item replace entity @s weapon.offhand from entity 4fe002bb-0-6-0-a00000001 container.0

## 後処理
    advancement revoke @s only zz.click_item:change_offhand