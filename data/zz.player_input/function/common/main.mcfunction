#> zz.player_input:common/main
# キー入力 共通処理
# @within
#   function zz.player_input:**

## クリックの判定
    # スコアをコピー
    scoreboard players operation #pliH.mode.temp pliS.time = #pliH.mode pliS.time
    # イベントの実行
    execute if predicate zz.player_input:single_input unless predicate zz.player_input:hold run function zz.player_input:common/single_input
    execute if predicate zz.player_input:double_input unless predicate zz.player_input:hold run function zz.player_input:common/double_input
    execute unless score #pliH.mode.temp pliS.time matches 2 if predicate zz.player_input:hold run function zz.player_input:common/hold_init
    execute if predicate zz.player_input:hold run function zz.player_input:common/hold
    # クリック判定用時間のリセット
    scoreboard players set #pliH.interval pliS.time 0
    execute unless score #pliH.time pliS.time matches 0.. run scoreboard players set #pliH.time pliS.time 0
    scoreboard players operation #pliH.mode pliS.time = #pliH.mode.temp pliS.time
    
## コマンド入力の判定
    execute if score #pliH.input pliS. matches 1 run function zz.player_input:command/key/main