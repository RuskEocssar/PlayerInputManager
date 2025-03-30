#> zz.player_input:key/main
# キーを入力したとき
# @within
#   advancement zz.player_input:key_input

## 必要ないときは中断
    execute unless score #pliH.key pliS. matches 1.. run return fail

## アイテムデータを反映
    tag @s add _player
    # 紐づけされたアイテムエンティティを検索
        scoreboard players set #pliH. pliS. 0
        execute as 4fe002bb-0-2-0-a00000001 on passengers if function zz.player_input:root/check_origin run function zz.player_input:key/main_root
        # 見つからない場合は新たに召喚
        execute if score #pliH. pliS. matches 0 at 4fe002bb-0-2-0-a00000001 if function zz.player_input:root/summon on passengers if function zz.player_input:root/check_origin run function zz.player_input:key/main_root
    # 後処理
    tag @s remove _player

## 後処理
    advancement revoke @s only zz.player_input:key_input