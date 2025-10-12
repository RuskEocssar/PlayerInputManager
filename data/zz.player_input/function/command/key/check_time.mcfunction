#> zz.player_input:command/later/check_time
# 入力タイミングの判定
# @within
#   function zz.player_input:**

## 入力タイミングの判定
    # 時間の情報を取得
    execute store result score #pinH.1 pinS.time run data get storage player_input:zz _com.latest_input.gametime
    execute store result score #pinH.2 pinS.time run data get storage player_input:zz _input.time
    execute store result score #pinH.min pinS.time run data get storage player_input:zz _key.time.min
    execute store result score #pinH.max pinS.time run data get storage player_input:zz _key.time.max
    # 判定
    scoreboard players operation #pinH.2 pinS.time -= #pinH.1 pinS.time
    execute if score #pinH.2 pinS.time < #pinH.max pinS.time if score #pinH.2 pinS.time >= #pinH.min pinS.time run return 1
    # 一致しない場合
    return 0