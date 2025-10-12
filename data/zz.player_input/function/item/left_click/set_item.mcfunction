#> zz.player_input:item/left_click/set_item
# アイテムをタップしたときに実行されるファンクション
# @within
#   function zz.player_input:**

## アイテムのNBTをセット
    # スコア
    scoreboard players set @s pinS.time.left_click 1
    # NBTを取得
    execute on origin run item replace entity 4fe002bb-0-6-0-a00000001 container.0 from entity @s weapon.mainhand
    data modify storage player_input: item merge from entity 4fe002bb-0-6-0-a00000001 Item
    # アイテムを反映
    item replace entity @s container.0 from entity 4fe002bb-0-6-0-a00000001 container.0

## 正否を返す
    scoreboard players set #pinH.check_player pinS. 1