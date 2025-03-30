#> player_input:delete_event
# クエリを削除する
# @public
# @input
#   player_input: in{
#       name -> クエリの名前
#       everyone -> (false) 全員に適応するかどうか
#   }

## 入力を取得
    # マクロ用入力
    data modify storage player_input:zz arg set value {name:"",everyone:false}
    data modify storage player_input:zz arg.name set from storage player_input:zz in.name

## everyone:trueかどうかで処理を分岐
    execute if data storage player_input:zz in{everyone:false} run function zz.player_input:key/event/delete_one
    execute if data storage player_input:zz in{everyone:true} run function zz.player_input:key/event/delete_public with storage player_input:zz arg