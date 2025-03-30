say zz.player_input:key/set_one_root
# イベントの設定　プレイヤー別
# @within
#   function player_input:start

## データを取得
    $data modify entity @s data.query[{name:"$(name)"}] $(mode) from storage player_input:zz in