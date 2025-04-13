#> zz.player_input:command/later/success
# キーの判定が成功した場合
# @within
#   function zz.player_input:**

## キーの判定が成功した場合
    data modify storage player_input:zz _ set value {gametime:0}
    data modify storage player_input:zz _.gametime set from storage player_input:zz _input.time
    # 反映
    data modify storage player_input:zz _com.latest_input set from storage player_input:zz _