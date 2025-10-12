#> zz.player_input:common/main
# キー入力 共通処理
# @within
#   function zz.player_input:**

## クリックの判定
    scoreboard players set #pinH.input pinS. 0
    # スコアをコピー
    scoreboard players operation #pinH.mode.temp pinS.time = #pinH.mode pinS.time
    # イベントの実行
    execute if predicate zz.player_input:single_input unless predicate zz.player_input:hold run function zz.player_input:common/single_input
    execute if predicate zz.player_input:double_input unless predicate zz.player_input:hold run function zz.player_input:common/double_input
    execute unless score #pinH.mode.temp pinS.time matches 2 if predicate zz.player_input:hold run function zz.player_input:common/hold_init
    execute if predicate zz.player_input:hold run function zz.player_input:common/hold
    # クリック判定用時間のリセット
    scoreboard players set #pinH.interval pinS.time 0
    execute unless score #pinH.time pinS.time matches 0.. run scoreboard players set #pinH.time pinS.time 0
    scoreboard players operation #pinH.mode pinS.time = #pinH.mode.temp pinS.time
    
## コマンド入力の判定
    execute if score #pinH.input pinS. matches 1 run function zz.player_input:command/key/main