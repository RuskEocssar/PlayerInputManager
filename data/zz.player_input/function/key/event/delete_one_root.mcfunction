#> zz.player_input:key/delete_one_root
# イベントの設定　プレイヤー別
# @within
#   function player_input:start

## データを取得
    $data remove entity @s data.query[{name:"$(name)"}]
    scoreboard players set #pliH. pliS. 1