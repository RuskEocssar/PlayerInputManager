#> zz.player_input:main/dummy/set_item
# アイテムをタップしたときに実行されるファンクション
# @within
#   function zz.player_input:**

## アイテムのNBTをセット
    # スコア
    scoreboard players set @s pliS.time.click_item 1
    # NBTを取得
    execute unless score #pliH.player pliS. matches 1..2 run item replace entity @s container.0 from entity @p[tag=_player] weapon.mainhand
    execute if score #pliH.player pliS. matches 1..2 run item replace entity @s container.0 from entity @p[tag=_player] weapon.offhand
    item replace entity 4fe002bb-0-6-0-a00000001 container.0 from entity @s container.0
    data modify storage player_input: item merge from entity 4fe002bb-0-6-0-a00000001 Item
    # アイテムの再セットが必要な場合
    execute if score #pliH.player pliS. matches 2..3 if data storage player_input: item.components."minecraft:custom_data".click_event{no_consume:true} run tag @s add pliT.item.reset

## 正否を返す
    scoreboard players set #pliH.check_player pliS. 1