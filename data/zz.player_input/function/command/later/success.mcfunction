#> zz.player_input:command/later/success
# キーの判定が成功した場合
# @within
#   function zz.player_input:**

## キーの判定が成功した場合
    data modify storage player_input:zz _ set value {gametime:0,time:{min:0,max:5}}
    data modify storage player_input:zz _.gametime set from storage player_input:zz _input.time
    data modify storage player_input:zz _.time merge from storage player_input:zz _key.time
    # 反映
    data modify storage player_input:zz _com.latest_input set from storage player_input:zz _