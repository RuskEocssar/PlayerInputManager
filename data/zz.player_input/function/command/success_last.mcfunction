#> zz.player_input:command/later/success_last
# キーの判定が成功した場合
# @within
#   function zz.player_input:**

## コマンドの実行
    # 履歴の削除
    execute if data storage player_input:zz _com{cancel_command:true} run data modify storage player_input:zz commands set value []
    execute if data storage player_input:zz _com{cancel_command:true} run data modify storage player_input:zz _commands set value []
    # コマンドの実行
    $$(command)