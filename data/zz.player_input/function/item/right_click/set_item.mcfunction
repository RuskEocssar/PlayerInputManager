#> zz.player_input:main/dummy/set_item
# アイテムをタップしたときに実行されるファンクション
# @within
#   function zz.player_input:**

## アイテムのNBTをセット
    # スコア
    scoreboard players set @s pinS.time.right_click 1
    # NBTを取得
    execute unless score #pinH.player pinS. matches 1..2 on origin run item replace entity 4fe002bb-0-6-0-a00000001 container.0 from entity @s weapon.mainhand
    execute if score #pinH.player pinS. matches 1..2 on origin run item replace entity 4fe002bb-0-6-0-a00000001 container.0 from entity @s weapon.offhand
    data modify storage player_input: item merge from entity 4fe002bb-0-6-0-a00000001 Item
    # アイテムを反映
    item replace entity @s container.0 from entity 4fe002bb-0-6-0-a00000001 container.0
    # アイテムの再セットが必要な場合
    execute if score #pinH.player pinS. matches 2..3 if data storage player_input: item.components."minecraft:custom_data".right_click{no_consume:true} run tag @s add pinT.item.reset

## 正否を返す
    scoreboard players set #pinH.check_player pinS. 1