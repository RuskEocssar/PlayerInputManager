#> zz.player_input:key/delete_one
# イベントの設定　プレイヤー別
# @within
#   function player_input:start

## アイテムデータを反映
    tag @s add _player
    # 紐づけされたアイテムエンティティを検索
        scoreboard players set #pliH. pliS. 0
        execute as 4fe002bb-0-2-0-a00000001 on passengers if function zz.player_input:root/check_origin run function zz.player_input:key/event/delete_one_root with storage player_input:zz in
        # 見つからない場合は新たに召喚
        execute if score #pliH. pliS. matches 0 as 4fe002bb-0-2-0-a00000001 if function zz.player_input:root/summon on passengers if function zz.player_input:root/check_origin run function zz.player_input:key/event/delete_one_root with storage player_input:zz in
    # 後処理
    tag @s remove _player