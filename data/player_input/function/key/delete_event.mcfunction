#> player_input:key/delete_event
# クエリを削除する
# @public
# @input
#   player_input: in{
#       name -> クエリの名前
#       everyone -> (false) 全員に適応するかどうか
#   }

## 入力を取得
    data modify storage player_input:zz in set value {name:"",everyone:false}
    data modify storage player_input:zz in merge from storage player_input: in

## everyone:trueかどうかで処理を分岐
    execute if data storage player_input:zz in{everyone:false} run function zz.player_input:key/event/delete_one
    execute if data storage player_input:zz in{everyone:true} run function zz.player_input:key/event/delete_public with storage player_input:zz in

## 常時実行を終了する
    execute unless data storage player_input: query[] as 4fe002bb-0-2-0-a00000001 unless function zz.player_input:key/event/check_remain run scoreboard players reset #pliH.key pliS.