#> zz.click_item:main/tick
# 常時実行
# @within
#   function zz.click_item:**

## 常時実行
    execute as 4fe002bb-0-2-0-a00000001 on passengers if entity @s[tag=cliT.dummy.active] run function zz.click_item:main/tick_item
    execute as 4fe002bb-0-2-0-a00000001 if predicate {condition:"entity_properties",entity:"this",predicate:{passenger:{}}} run schedule function zz.click_item:main/tick 1t replace