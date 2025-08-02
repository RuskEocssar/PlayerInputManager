#> player_input:key/start_recird
# 入力の履歴取得を開始する
# @public
# @input

## 常時実行を開始
    scoreboard players set #pliH.key pliS. 1
    schedule function zz.player_input:key/tick 1t replace
    advancement revoke @s only zz.player_input:key_input

## everyone:trueかどうかで処理を分岐
    execute unless data storage player_input: query[{record_history:true}] run data modify storage player_input: query append value {record_history:true}