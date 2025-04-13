#> zz.player_input:command/key/main
# キー入力を判定
# @within
#   function zz.player_input:**

## データの取得
    data modify storage player_input:zz commands set value []
    data modify storage player_input:zz _commands set value []
    data modify storage player_input:zz _input set from storage player_input: history[-1]

## キューに追加されたコマンドを判定
    data modify storage player_input:zz commands append from entity @s data.command_que[]
    execute if data storage player_input:zz commands[-1] on origin run function zz.player_input:command/key/loop_command

## コマンドの最初の入力を満たすものをキューに追加
    data modify storage player_input:zz commands append from storage player_input:zz query[].commands[]
    execute if data storage player_input:zz commands[-1] on origin run function zz.player_input:command/key/loop_query

## データの反映
    data modify entity @s data.command_que set from storage player_input:zz _commands