#> player_input:key/start_recird
# 入力の履歴取得を開始する
# @public
# @input

## フラグを削除する
    data remove storage player_input: query[{record_history:true}]

## 常時実行を終了する
    execute unless data storage player_input: query[] as 4fe002bb-0-2-0-a00000001 unless function zz.player_input:key/event/check_remain run scoreboard players reset #pliH.key pliS.