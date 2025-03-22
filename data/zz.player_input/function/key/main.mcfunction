#> zz.player_input:key/main
# 前進キーを入力したとき
# @within
#   advancement zz.player_input:key_input

## アイテムデータを反映
    tag @s add _player
    # クリックを開始したとき
    execute unless score @s pliS.time.forward matches 1..2147483646 run scoreboard players set @s pliS.time.forward 2147483647
    # 紐づけされたアイテムエンティティを検索
        scoreboard players set #pliH. pliS. -1
        execute as 4fe002bb-0-2-0-a00000001 on passengers if function zz.player_input:root/check_origin run function zz.player_input:key/main_root
        # 見つからない場合は新たに召喚
        execute if score #pliH. pliS. matches -1 at 4fe002bb-0-2-0-a00000001 run function zz.player_input:root/summon
    # 後処理
    tag @s remove _player

## 後処理
    advancement revoke @s only zz.player_input:key_input