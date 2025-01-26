#> zz.click_item:main/slot/4
# スロットの処理
# @within
#   function zz.click_item:**

## アイテムの編集
    # 取得
    item replace entity 4fe002bb-0-6-0-a00000001 container.0 from entity @s hotbar.4
    # 編集
        # 初期設定
        execute unless data entity 4fe002bb-0-6-0-a00000001 Item.components."minecraft:custom_data".slot run function zz.click_item:slot/set_init
        # スロット情報
        item modify entity 4fe002bb-0-6-0-a00000001 container.0 {function:"set_custom_data",tag:{slot:"mainhand"}}
    # 反映
    item replace entity @s hotbar.4 from entity 4fe002bb-0-6-0-a00000001 container.0