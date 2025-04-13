#> player_input:key/set_event
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
#       }
#       backward : 同上
#       right : 同上
#       left : 同上
#       jump : 同上
#       sneak : 同上
#       sprint : 同上
#       commands:[  -> コマンドのリスト
#         {
#           command:<string>, -> コマンド入力が成功したときに実行されるコマンド
#           exclude_key:<list>, -> 判定しないキー このキーをおしてもコマンド判定は中断されない
#           exclude_hold:<boolen>, -> ホールドを判定するかしないか
#           list:[
#             {
#               key:<string>, -> キーの名前
#               action:<string>, -> ("input") 動作の名前 "input", "hold_init", "hold_end"
#               time:{      -> 前回の入力から何tickで判定するか
#                 min:<int>, -> (0) 下限
#                 max:<int>, -> (5) 上限
#               }
#             },
#             ...,
#           ],
#         },
#         ...,
#       ]
#   }

## 入力を取得
    data modify storage player_input:zz in set value {name:"",everyone:false,replace:true,forward:{},backward:{},right:{},left:{},jump:{},sneak:{},sprint:{}}
    data modify storage player_input:zz in merge from storage player_input: key_input
    data modify storage player_input:zz in merge from storage player_input: in

## 常時実行を開始
    scoreboard players set #pliH.key pliS. 1
    schedule function zz.player_input:key/tick 1t replace
    advancement revoke @s only zz.player_input:key_input

## everyone:trueかどうかで処理を分岐
    execute if data storage player_input:zz in{everyone:false} as @s run function zz.player_input:key/event/set_one
    execute if data storage player_input:zz in{everyone:true} run function zz.player_input:key/event/set_public with storage player_input:zz in