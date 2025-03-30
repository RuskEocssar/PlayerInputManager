#> zz.player_input:key/event/delete_public
# イベントの設定　共通
# @within
#   function player_input:start

## データを取得
    $data remove storage player_input: query[{name:"$(name)"}]