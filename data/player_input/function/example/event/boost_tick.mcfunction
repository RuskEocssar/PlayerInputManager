
execute as @a[tag=boost] run function player_input:example/boost_clear
execute if entity @a[tag=boost] run schedule function player_input:example/boost_tick 1t