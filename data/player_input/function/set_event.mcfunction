say player_input:set_event
# 入力の取得を開始する
# @public
# @input
#   player_input: in{
#       name -> クエリの名前
#       replace -> (true) クエリの名前
#       everyone -> (false) 全員に適応するかどうか
#       forward : { -> 前進キーの取得設定
#           every_input -> ("") キーを押しているとき毎tick
#           single_input -> ("") キーを一回押したとき
#           double_input -> ("") キーを素早く二回押したとき
#           hold -> ("") キーを長押ししているとき
#           hold_init -> ("") キーの長押しがを開始したとき
#           hold_end -> ("") キーの長押しを終了したとき
#           other -> ("") ダブルタップまたは長押しがされていないとき毎tick
#       }
#       backward : 同上
#       right : 同上
#       left : 同上
#       jump : 同上
#       sneak : 同上
#       sprint : 同上
#   }

## 入力を取得
    data modify storage player_input:zz in set value {name:"",everyone:false,replace:true,forward:{},backward:{},right:{},left:{},jump:{},sneak:{},sprint:{}}
    data modify storage player_input:zz in merge from storage player_input: key_input
    data modify storage player_input:zz in merge from storage player_input: in
    # マクロ用入力
    data modify storage player_input:zz arg set value {name:"",mode:"set"}
    data modify storage player_input:zz arg.name set from storage player_input:zz in.name
    execute if data storage player_input:zz in{replace:false} run data modify storage player_input:zz arg.mode set value "merge"

## everyone:trueかどうかで処理を分岐
    execute if data storage player_input:zz in{everyone:false} as @s run function zz.player_input:key/event/set_one
    execute if data storage player_input:zz in{everyone:true} run function zz.player_input:key/event/set_public with storage player_input:zz arg