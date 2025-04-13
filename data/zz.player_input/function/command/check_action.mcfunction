#> zz.player_input:command/later/check_action
# 入力モードを確認する
# @within
#   function zz.player_input:**

## 入力モードを確認する
    execute if data storage player_input:zz _input{action_type:"input"} run return run execute if data storage player_input:zz _key{action:"input"}
    execute unless data storage player_input:zz _com{exclude_hold:true} if data storage player_input:zz _input{action_type:"hold_init"} run return run execute if data storage player_input:zz _key{action:"hold_init"}
    execute unless data storage player_input:zz _com{exclude_hold:true} if data storage player_input:zz _input{action_type:"hold_end"} run return run execute if data storage player_input:zz _key{action:"hold_end"}
    # 一致しない場合
    return 2