#> zz.player_input:command/later/check_key
# キーを確認する
# @within
#   function zz.player_input:**

## キーを確認する
    execute unless data storage player_input:zz _com{exclude_key:["forward"]} if data storage player_input:zz _input{key:"forward"} run return run execute if data storage player_input:zz _key{key:"forward"}
    execute unless data storage player_input:zz _com{exclude_key:["backward"]} if data storage player_input:zz _input{key:"backward"} run return run execute if data storage player_input:zz _key{key:"backward"}
    execute unless data storage player_input:zz _com{exclude_key:["right"]} if data storage player_input:zz _input{key:"right"} run return run execute if data storage player_input:zz _key{key:"right"}
    execute unless data storage player_input:zz _com{exclude_key:["left"]} if data storage player_input:zz _input{key:"left"} run return run execute if data storage player_input:zz _key{key:"left"}
    execute unless data storage player_input:zz _com{exclude_key:["jump"]} if data storage player_input:zz _input{key:"jump"} run return run execute if data storage player_input:zz _key{key:"jump"}
    execute unless data storage player_input:zz _com{exclude_key:["sneak"]} if data storage player_input:zz _input{key:"sneak"} run return run execute if data storage player_input:zz _key{key:"sneak"}
    execute unless data storage player_input:zz _com{exclude_key:["sprint"]} if data storage player_input:zz _input{key:"sprint"} run return run execute if data storage player_input:zz _key{key:"sprint"}
    # 一致しない場合
    return 2