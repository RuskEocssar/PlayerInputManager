#> zz.click_item:main/dummy/reset
# アイテムも再セット
# @within
#   function zz.click_item:**

## アイテムのNBTをセット
    execute on origin run tag @s add _player
    execute if data storage click_item: item.components."minecraft:custom_data"{slot:"mainhand"} run item replace entity @p[tag=_player] weapon.mainhand from entity @s container.0
    execute if data storage click_item: item.components."minecraft:custom_data"{slot:"offhand"} run item replace entity @p[tag=_player] weapon.offhand from entity @s container.0
    execute on origin run tag @s remove _player
    # タグ消去
    tag @s remove cliT.item.reset