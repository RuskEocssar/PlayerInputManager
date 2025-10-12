#> zz.player_input:key/set_one_root
# イベントの設定　プレイヤー別
# @within
#   function player_input:start

## データを取得
    scoreboard players set #pinH.check_player pinS. 1
    $data modify entity @s data.query[{name:"$(name)"}] merge from storage player_input:zz in
    $execute unless data storage player_input:zz in{replace:false} run data modify entity @s data.query[{name:"$(name)"}] set from storage player_input:zz in