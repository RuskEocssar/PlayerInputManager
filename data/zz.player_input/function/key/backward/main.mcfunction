#> zz.player_input:key/backward/main
# 後退キーを入力したとき
# @within
#   function zz.player_input:**

## クリックの判定
    # 初期化
    data modify storage player_input:zz key_event set value []
    data modify storage player_input:zz macro.list set value []
    # データの取得
    scoreboard players operation #pliH.time pliS.time = @s time.backward
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.backward
    data modify storage player_input:zz key_type set value "backward"
    data modify storage player_input:zz settings set from storage player_input: key_input
    data modify storage player_input:zz key_event append from storage player_input:zz query[].backward
    # イベントの実行
    execute if predicate zz.player_input:single_click unless predicate zz.player_input:hold run function zz.player_input:key/event/tap
    execute if predicate zz.player_input:double_click unless predicate zz.player_input:hold run function zz.player_input:key/event/double_tap
    execute unless entity @s[tag=pliT.hold.backward] if predicate zz.player_input:hold run function zz.player_input:key/event/hold_init
    execute unless entity @s[tag=pliT.hold.backward] if predicate zz.player_input:hold run tag @s add pliT.hold.backward
    execute if predicate zz.player_input:hold run function zz.player_input:key/event/hold
    # クリック判定用時間のリセット
    scoreboard players set @s pliS.time.backward 0
    execute unless score @s time.backward matches 0.. run scoreboard players set @s time.backward 0
    # 終了処理
    return 1