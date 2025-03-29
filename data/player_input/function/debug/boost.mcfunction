scoreboard objectives add boost_jump dummy

execute if score @s boost_jump matches 3.. run return fail
scoreboard players add @s boost_jump 1

tp @s ~ 10000 ~
tp @s ~ ~ ~

effect give @s levitation 1 125 true
tag @s add boost
tag @s add effect
schedule function player_input:debug/boost_tick 1t

particle cloud ~ ~ ~ 0.2 0 0.2 0 10
playsound entity.breeze.jump ambient @a ~ ~ ~ 1 1