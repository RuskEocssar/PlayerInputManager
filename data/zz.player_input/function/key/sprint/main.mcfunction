#> zz.player_input:key/sprint/main
# 前進キーを入力したとき
# @within
#   function zz.player_input:**

## クリックの判定
    # 初期化
    data modify storage player_input:zz key_event set value []
    data modify storage player_input:zz macro.list set value []
    # データの取得
    scoreboard players operation #pliH.time pliS.time = @s time.sprint
    scoreboard players operation #pliH.interval pliS.time = @s pliS.time.sprint
    data modify storage player_input:zz key_type set value "sprint"
    data modify storage player_input:zz settings set from storage player_input: key_input
    data modify storage player_input:zz key_event append from storage player_input:zz query[].sprint
    # イベントの実行
    execute if predicate zz.player_input:single_click unless predicate zz.player_input:hold run function zz.player_input:key/event/tap
    execute if predicate zz.player_input:double_click unless predicate zz.player_input:hold run function zz.player_input:key/event/double_tap
    execute unless entity @s[tag=pliT.hold.sprint] if predicate zz.player_input:hold run function zz.player_input:key/event/hold_init
    execute unless entity @s[tag=pliT.hold.sprint] if predicate zz.player_input:hold run tag @s add pliT.hold.sprint
    execute if predicate zz.player_input:hold run function zz.player_input:key/event/hold
    # クリック判定用時間のリセット
    scoreboard players set @s pliS.time.sprint 0
    execute unless score @s time.sprint matches 0.. run scoreboard players set @s time.sprint 0
    # 終了処理
    return 1