#> player_input:command/check
# コマンド入力の判定をする
# @public
# in:
#   delay:<int>, -> (5) 現在から何tick前の入力まで判定するか
#   commands:[  -> コマンドのリスト
#     {
#       command:<string>, -> コマンド入力が成功したときに実行されるコマンド
#       exclude_key:<list>, -> 判定しないキー このキーをおしてもコマンド判定は中断されない
#       exclude_hold:<boolen>, -> ホールドを判定するかしないか
#       cancel_command:<boolen>, -> (false) コマンド成功時に他のコマンドの判定を中断するかどうか
#       list:[
#         {
#           key:<string>, -> キーの名前
#           action:<string>, -> ("input") 動作の名前 "input", "hold_init", "hold_end"
#           time:{      -> 前回の入力から何tickで判定するか
#             min:<int>, -> (0) 下限
#             max:<int>, -> (5) 上限
#           }
#         },
#         ...,
#       ],
#     },
#     ...,
#   ]

## キー入力履歴の取得
    function player_input:key/get_history

## コマンド入力の判定
    # 現在時刻の取得
    data modify storage player_input:zz _ set value {gametime:0,time:{min:0,max:5}}
    execute if data storage player_input: in.delay run data modify storage player_input:zz _.time.max set from storage player_input: in.delay
    execute store result storage player_input:zz _.gametime int 1 run time query gametime
    # データを設定
    data modify storage player_input:zz commands set from storage player_input: in.commands
    data modify storage player_input:zz history set from storage player_input: history
    data modify storage player_input:zz commands[].latest_input set from storage player_input:zz _
    # ループを実行
    function zz.player_input:command/later/loop_history