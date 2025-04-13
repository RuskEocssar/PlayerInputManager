#> zz.player_input:command/later/check_time
# 入力タイミングの判定
# @within
#   function zz.player_input:**

## 入力タイミングの判定
    # 時間の情報を取得
    execute store result score #pliH.1 pliS.time run data get storage player_input:zz _input.time
    execute store result score #pliH.2 pliS.time run data get storage player_input:zz _com.latest_input.gametime
    execute store result score #pliH.min pliS.time run data get storage player_input:zz _com.latest_input.time.min
    execute store result score #pliH.max pliS.time run data get storage player_input:zz _com.latest_input.time.max
    # 判定
    scoreboard players operation #pliH.2 pliS.time -= #pliH.1 pliS.time
    execute if score #pliH.2 pliS.time < #pliH.max pliS.time if score #pliH.2 pliS.time >= #pliH.min pliS.time run return 1
    # 一致しない場合
    return 2