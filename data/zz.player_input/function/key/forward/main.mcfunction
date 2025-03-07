#> zz.player_input:key/forward/main
# 前進キーを入力したとき
# @within
#   function zz.player_input:**

## クリックの判定
    # 初期化
    data modify storage player_input:zz key_event set value []
    data modify storage player_input:zz macro.list set value []
    # データの取得
    data modify storage player_input:zz key set value "forward"
    scoreboard players operation #pliH.time pliS.time = @s time.forward
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.forward
    data modify storage player_input:zz data set from storage player_input: key_input
    data modify storage player_input:zz key_event append from storage player_input:zz query[].forward
    # イベントの実行
    execute if predicate zz.player_input:single_click unless predicate zz.player_input:hold run function zz.player_input:key/event/tap
    execute if predicate zz.player_input:double_click unless predicate zz.player_input:hold run function zz.player_input:key/event/double_tap
    execute unless entity @s[tag=pliT.hold.forward] if predicate zz.player_input:hold run function zz.player_input:key/event/hold_init
    execute if predicate zz.player_input:hold run function zz.player_input:key/event/hold
    # クリック判定用時間のリセット
    scoreboard players set @s pliS.time.forward 0
    execute unless score @s time.forward matches 0.. run scoreboard players set @s time.forward 0