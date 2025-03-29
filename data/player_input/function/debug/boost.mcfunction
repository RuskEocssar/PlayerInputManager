tp @s ~ 10000 ~
tp @s ~ ~ ~

effect give @s levitation 1 125
tag @s add boost
schedule function player_input:debug/clear_boost 1t

say a