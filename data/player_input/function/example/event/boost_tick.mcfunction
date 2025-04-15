
execute as @a[tag=boost] run function player_input:example/event/boost_clear
execute if entity @a[tag=boost] run schedule function player_input:example/event/boost_tick 1t