#> zz.player_input:main/dummy/reset
# アイテムも再セット
# @within
#   function zz.player_input:**

## アイテムのNBTをセット
    execute on origin run tag @s add _player
    execute if data storage player_input: item.components."minecraft:custom_data"{_slot:"mainhand"} run item replace entity @p[tag=_player] weapon.mainhand from entity @s container.0
    execute if data storage player_input: item.components."minecraft:custom_data"{slot:"offhand"} run item replace entity @p[tag=_player] weapon.offhand from entity @s container.0
    execute on origin run tag @s remove _player
    # タグ消去
    tag @s remove pliT.item.reset