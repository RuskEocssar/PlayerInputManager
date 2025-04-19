effect give @s speed 1 10 true
playsound minecraft:entity.breeze.shoot ambient @a ~ ~ ~ 1 2
particle cloud ~ ~ ~ 0.2 0 0.2 0 10

execute rotated ~ ~5 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~10 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~15 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~20 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~25 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~30 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~35 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~40 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~45 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~50 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~55 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5

execute rotated ~ ~-5 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~-10 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~-15 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~-20 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~-25 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~-30 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~-35 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~-40 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~-45 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~-50 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~ ~-55 run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5

execute rotated ~5 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~10 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~15 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~20 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~25 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~30 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~35 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~40 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~45 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~50 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~55 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5

execute rotated ~-5 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~-10 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~-15 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~-20 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~-25 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~-30 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~-35 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~-40 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~-45 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~-50 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5
execute rotated ~-55 ~ run particle cloud ^ ^ ^4 0.2 0.2 0.2 0 5

execute positioned ^ ^ ^4.1 as @e[distance=..4] run damage @s 20
execute positioned ^ ^ ^-4.1 as @e[distance=..4] run damage @s 20

title @s times 0 15 2
title @s subtitle {text:"\u23F6 > \u23F4 > \u23F7 > \u23F5 > \u23F6：居合十文字切り\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020",color:"gold"}
title @s title {text:""}