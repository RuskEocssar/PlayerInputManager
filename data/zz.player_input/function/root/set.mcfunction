#> zz.player_input:main/dummy/set
# アイテムエンティティのデータを設定
# @within
#   function zz.player_input:**

## アイテムのNBTをセット
    tag @s remove _temp
    data modify entity @s Thrower set from entity @p[tag=_player] UUID

## ルートエンティティにライド
    ride @s mount 4fe002bb-0-2-0-a00000001

## イベント実行
    # スコアが0のときはアイテムの設定
    execute if score #pliH. pliS. matches 0 run function zz.player_input:item/right_click/set_item
    # スコアが-1のときはキー入力
    execute if score #pliH. pliS. matches -1 run function zz.player_input:key/main_root