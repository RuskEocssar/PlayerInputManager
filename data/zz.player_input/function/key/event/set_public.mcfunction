#> zz.player_input:key/event/set_public
# イベントの設定　共通
# @within
#   function player_input:start

## データを取得
    $data modify storage player_input: query[{name:"$(name)"}] merge from storage player_input:zz in
    $execute unless data storage player_input:zz in{replace:false} run data modify storage player_input: query[{name:"$(name)"}] set from storage player_input:zz in