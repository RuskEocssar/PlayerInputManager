#> player_input:start
# 入力の取得を開始する
# @public
# @input
#   player_input: in{
#       name <string> -> クエリの名前
#       everyone -> (false) 全員に適応するかどうか
#       forward : { -> 前進キーの取得設定
#           log -> (true) 入力履歴に記録するかどうか
#           tap -> ("") キーを一回押したとき
#           double_tap -> ("") キーを素早く二回押したとき
#           hold -> ("") キーを長押ししているとき
#           hold_init -> ("") キーの長押しがを開始したとき
#           hold_end -> ("") キーの長押しを終了したとき
#           every_tap -> ("") キーを押しているとき毎tick
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
    data modify storage player_input:zz in set value {\
        name:"",everyone:false,\
        forward :{tap:"",double_tap:"",hold:"",hold_init:"",hold_end:"",every_tap:"",other:""},\
        backward    :{tap:"",double_tap:"",hold:"",hold_init:"",hold_end:"",every_tap:"",other:""},\
        right   :{tap:"",double_tap:"",hold:"",hold_init:"",hold_end:"",every_tap:"",other:""},\
        left    :{tap:"",double_tap:"",hold:"",hold_init:"",hold_end:"",every_tap:"",other:""},\
        jump    :{tap:"",double_tap:"",hold:"",hold_init:"",hold_end:"",every_tap:"",other:""},\
        sneak   :{tap:"",double_tap:"",hold:"",hold_init:"",hold_end:"",every_tap:"",other:""},\
        sprint  :{tap:"",double_tap:"",hold:"",hold_init:"",hold_end:"",every_tap:"",other:""}\
    }
    data modify storage player_input:zz in merge from storage player_input: key_input
    data modify storage player_input:zz in merge from storage player_input: in

## evenyone:trueかどうかで処理を分岐
    execute if data storage player_input:zz in{evenyone:false} run function zz.player_input:common/set_one
    execute if data storage player_input:zz in{evenyone:true} run function zz.player_input:common/set_public