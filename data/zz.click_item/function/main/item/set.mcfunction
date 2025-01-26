#> zz.click_item:main/dummy/set
# アイテムエンティティのデータを設定
# @within
#   function zz.click_item:**

## アイテムのNBTをセット
    tag @s remove _temp
    data modify entity @s Thrower set from entity @p[tag=_player] UUID

## ルートエンティティにライド
    ride @s mount 4fe002bb-0-2-0-a00000001

## アイテムのセット
    function zz.click_item:main/item/set_item