data modify storage debug: list set value []
data modify storage debug: list append from storage player_input: history[{action_type:"input"}]
execute if data storage debug: list[{key:"forward"}] run data modify storage debug: list[{key:"forward"}].key set value {text:"\u23F6"}
execute if data storage debug: list[{key:"backward"}] run data modify storage debug: list[{key:"backward"}].key set value {text:"\u23F7"}
execute if data storage debug: list[{key:"right"}] run data modify storage debug: list[{key:"right"}].key set value {text:"\u23F5"}
execute if data storage debug: list[{key:"left"}] run data modify storage debug: list[{key:"left"}].key set value {text:"\u23F4"}
execute if data storage debug: list[{key:"jump"}] run data modify storage debug: list[{key:"jump"}].key set value {text:"\u2BAD"}
execute if data storage debug: list[{key:"sprint"}] run data modify storage debug: list[{key:"sprint"}].key set value {text:"\u23E9"}
execute if data storage debug: list[{key:"sneak"}] run data modify storage debug: list[{key:"sneak"}].key set value {text:"\u2BAF"}

title @s times 0 10 1
title @s subtitle [{text:" > ",color:"gray"},{nbt:"list[-5].key",storage:"debug:",interpret:true,color:"gold"},{text:" > ",color:"gray"},{nbt:"list[-4].key",storage:"debug:",interpret:true,color:"gold"},{text:" > ",color:"gray"},{nbt:"list[-3].key",storage:"debug:",interpret:true,color:"gold"},{text:" > ",color:"gray"},{nbt:"list[-2].key",storage:"debug:",interpret:true,color:"gold"},{text:" > ",color:"gray"},{nbt:"list[-1].key",storage:"debug:",interpret:true,color:"gold"}]
title @s title ""