#> zz.player_input:key/tick
# 常時実行
# @within
#   function zz.player_input:**

## 常時実行
    # アイテムから実行
    execute as 4fe002bb-0-2-0-a00000001 on passengers if entity @s[scores={pinS.=1..}] run function zz.player_input:key/tick_root
    # リログインしたプレイヤーの進捗をリセット
    execute as @a[scores={pinS.logout=1..}] run function zz.player_input:key/reset_advancement
    # ループ
    execute if score #pinH.key pinS. matches 1.. run schedule function zz.player_input:key/tick 1t replace