effect clear @s[tag=effect] levitation
tag @s[tag=effect] remove effect

execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:true}}} run scoreboard players reset @s boost_jump
execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:true}}} run tag @s remove boost