#> zz.player_input:command/later/loop_command
# コマンド設定ごとに実行
# @within
#   function zz.player_input:**

## データの取得
    data modify storage player_input:zz _key set value {key:"",action:"input"}
    data modify storage player_input:zz _com set from storage player_input:zz commands[-1]
    data modify storage player_input:zz _key merge from storage player_input:zz _com.list[-1]
    data remove storage player_input:zz commands[-1]

## コマンド入力ごとに確認
    # 入力が一致するかどうかを判定
    execute store result score #pliH.check_command pliS. run function zz.player_input:command/check_key
    execute if score #pliH.check_command pliS. matches 1 store result score #pliH.check_command pliS. run function zz.player_input:command/check_action
    execute if score #pliH.check_command pliS. matches 1 store result score #pliH.check_command pliS. run function zz.player_input:command/later/check_time
    # 判定が成功した場合
        # まだコマンド判定が残っている場合
        execute if score #pliH.check_command pliS. matches 1 run data remove storage player_input:zz _com.list[-1]
        execute if score #pliH.check_command pliS. matches 1 if data storage player_input:zz _com.list[-1] run function zz.player_input:command/later/success
        # 最後まで成功した場合
        execute if score #pliH.check_command pliS. matches 1 unless data storage player_input:zz _com.list[-1] run function zz.player_input:command/success_last with storage player_input:zz _com
    # 入力の判定を継続する
    execute if score #pliH.check_command pliS. matches 1.. if data storage player_input:zz _com.list[-1] run data modify storage player_input:zz _commands append from storage player_input:zz _com

## 次のコマンド設定へ
    execute if data storage player_input:zz commands[-1] run function zz.player_input:command/later/loop_command