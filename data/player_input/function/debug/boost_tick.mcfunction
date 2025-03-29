
execute as @a[tag=boost] run function player_input:debug/boost_clear
execute if entity @a[tag=boost] run schedule function player_input:debug/boost_tick 1t