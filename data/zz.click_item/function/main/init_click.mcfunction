#> zz.click_item:main/init_click
# アイテムをクリックしたときに実行されるファンクション
# @within
#   function zz.click_item:**

## アイテムエンティティを召喚
    summon item 0.0 1000.0 0.0 {Thrower:[I;0,0,0,0],Tags:["cliT.dummy","_temp"],Item:{id:"stick",components:{"minecraft:max_stack_size":1}},PickupDelay:32767s,Age:-32767s,NoGravity:true,Invulnerable:true}
    execute positioned 0.0 1000.0 0.0 as @n[type=item,tag=_temp,distance=..0.01] run function zz.click_item:main/item/set