#> zz.player_input:root/summon
# アイテムをクリックしたときに実行されるファンクション
# @within
#   function zz.player_input:**

## アイテムエンティティを召喚
    summon item 0.0 1000.0 0.0 {Thrower:[I;0,0,0,0],Tags:["pliT.dummy","_temp"],Item:{id:"stick",components:{"minecraft:max_stack_size":1}},PickupDelay:32767s,Age:-32767s,NoGravity:true,Invulnerable:true,data:{history:[{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}]}}
    execute positioned 0.0 1000.0 0.0 as @n[type=item,tag=_temp,distance=..0.01] run function zz.player_input:root/set