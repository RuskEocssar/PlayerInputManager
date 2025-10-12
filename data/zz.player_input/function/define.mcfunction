#> zz.player_input:define
# スコアボード等の定義のみ
# *VSCodeの拡張機能"Data-pack Helper Plus"を
# @within
#   function player_input:load

## Scoreboard objective
    #> Puclic
    # @public
        # 入力の保持時間
            scoreboard objectives add time.left_click dummy "左クリックの保持時間"
            scoreboard objectives add time.right_click dummy "右クリックの保持時間"
            scoreboard objectives add time.forward dummy "前進の保持時間"
            scoreboard objectives add time.backward dummy "後退の保持時間"
            scoreboard objectives add time.right dummy "右移動の保持時間"
            scoreboard objectives add time.left dummy "左移動の保持時間"
            scoreboard objectives add time.jump dummy "ジャンプの保持時間"
            scoreboard objectives add time.sneak dummy "スニークの保持時間"
            scoreboard objectives add time.sprint dummy "ダッシュの保持時間"
        # 入力の状態 0->デフォルト, 1->ダブルタップ後, 2->ホールド中
            scoreboard objectives add mode.left_click dummy "左クリックの状態"
            scoreboard objectives add mode.right_click dummy "右クリックの状態"
            scoreboard objectives add mode.forward dummy "前進の状態"
            scoreboard objectives add mode.backward dummy "後退の状態"
            scoreboard objectives add mode.right dummy "右移動の状態"
            scoreboard objectives add mode.left dummy "左移動の状態"
            scoreboard objectives add mode.jump dummy "ジャンプの状態"
            scoreboard objectives add mode.sneak dummy "スニークの状態"
            scoreboard objectives add mode.sprint dummy "ダッシュの状態"
    #> Local (core)
    # @within player_input:**
        scoreboard objectives add _ dummy
        scoreboard objectives add pinS. dummy "汎用"
        scoreboard objectives add pinS.logout minecraft.custom:leave_game "ゲーム退出回数"
        scoreboard objectives add pinS.time dummy "時間共通"
        scoreboard objectives add pinS.time.2 dummy "時間共通"
        # 内部判定用の時間
            scoreboard objectives add pinS.time.left_click dummy "左クリックの間隔"
            scoreboard objectives add pinS.time.right_click dummy "右クリックの間隔"
            scoreboard objectives add pinS.time.forward dummy "前進の間隔"
            scoreboard objectives add pinS.time.backward dummy "後退の間隔"
            scoreboard objectives add pinS.time.right dummy "右移動の間隔"
            scoreboard objectives add pinS.time.left dummy "左移動の間隔"
            scoreboard objectives add pinS.time.jump dummy "ジャンプの間隔"
            scoreboard objectives add pinS.time.sneak dummy "スニークの間隔"
            scoreboard objectives add pinS.time.sprint dummy "ダッシュの間隔"

## Score Holder
    #> Local
    # @within player_input:**
        #define score_holder #pinH. 汎用

## Tags
    #> Local
    # @within player_input:**
        #define tag pinT. エンティティ全員

## Storage
    #> Core
    # @within player_input:**
        #define storage player_input:zz

## Entity
    #> Local
    # @within player_input:**
        # summon entity ~ ~ ~ {UUID:[I;1340080827,type,temp,index]}
        #define entity 4fe002bb-0-0-0-1 Marker1
        #define entity 4fe002bb-0-0-0-2 Marker2
        #define entity 4fe002bb-0-0-0-3 Marker3
        #define entity 4fe002bb-0-1-0-1 AEC1
        #define entity 4fe002bb-0-1-0-2 AEC2
        #define entity 4fe002bb-0-2-0-100000001 Interaction (temp)
        #define entity 4fe002bb-0-2-0-100000001 Interaction (temp)
        #define entity 4fe002bb-0-3-0-100000001 TextDisplay (temp)
        #define entity 4fe002bb-0-4-0-100000001 BlockDisplay (temp)
        #define entity 4fe002bb-0-5-0-100000001 ItemDisplay (temp)
        #define entity 4fe002bb-0-6-0-100000001 Item (temp)
        #define entity 4fe002bb-0-6-0-a00000001 Item (アイテム処理用)