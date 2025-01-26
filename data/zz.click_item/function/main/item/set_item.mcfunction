#> zz.click_item:main/dummy/set_item
# アイテムをクリックしたときに実行されるファンクション
# @within
#   function zz.click_item:**

## アイテムのNBTをセット
    tag @s add cliT.dummy.active
    execute unless score #cliH.player cliS. matches 1..2 run item replace entity @s container.0 from entity @p[tag=_player] weapon.mainhand
    execute if score #cliH.player cliS. matches 1..2 run item replace entity @s container.0 from entity @p[tag=_player] weapon.offhand
    data modify storage click_item: item merge from entity @s Item
    # アイテムの再セットが必要な場合
    execute if score #cliH.player cliS. matches 2..3 if data storage click_item: item.components."minecraft:custom_data".click_event{no_consume:true} run tag @s add cliT.item.reset

## 正否を返す
    scoreboard players set #cliH. cliS. 1