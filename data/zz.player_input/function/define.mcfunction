#> zz.player_input:define
# スコアボード等の定義のみ
# *VSCodeの拡張機能"Data-pack Helper Plus"を
# @within
#   function player_input:load

## Scoreboard objective
    #> Puclic
    # @public
        # クリックの保持時間
            scoreboard objectives add time.click_item dummy "クリックの保持時間"
            scoreboard objectives add time.forward dummy "前進の保持時間"
            scoreboard objectives add time.backward dummy "後退の保持時間"
            scoreboard objectives add time.right dummy "右移動の保持時間"
            scoreboard objectives add time.left dummy "左移動の保持時間"
            scoreboard objectives add time.jump dummy "ジャンプの保持時間"
            scoreboard objectives add time.sneak dummy "スニークの保持時間"
            scoreboard objectives add time.sprint dummy "ダッシュの保持時間"
        # クリックの状態 0->デフォルト, 1->ダブルクリック後, 2->ホールド中
            scoreboard objectives add mode.click_item dummy "クリックの状態"
            scoreboard objectives add mode.forward dummy "前進の状態"
            scoreboard objectives add mode.backward dummy "後退の状態"
            scoreboard objectives add mode.right dummy "右移動の状態"
            scoreboard objectives add mode.left dummy "左移動の状態"
            scoreboard objectives add mode.jump dummy "ジャンプの状態"
            scoreboard objectives add mode.sneak dummy "スニークの状態"
            scoreboard objectives add mode.sprint dummy "ダッシュの状態"
    #> Local (core)
    # @within player_input:**
        scoreboard objectives add pliS. dummy "汎用"
        scoreboard objectives add pliS.logout minecraft.custom:leave_game "ゲーム退出回数"
        scoreboard objectives add pliS.time dummy "時間共通"
        scoreboard objectives add pliS.time.2 dummy "時間共通"
        # 内部判定用の時間
            scoreboard objectives add pliS.time.click_item dummy "クリックの間隔"
            scoreboard objectives add pliS.time.forward dummy "前進の間隔"
            scoreboard objectives add pliS.time.backward dummy "後退の間隔"
            scoreboard objectives add pliS.time.right dummy "右移動の間隔"
            scoreboard objectives add pliS.time.left dummy "左移動の間隔"
            scoreboard objectives add pliS.time.jump dummy "ジャンプの間隔"
            scoreboard objectives add pliS.time.sneak dummy "スニークの間隔"
            scoreboard objectives add pliS.time.sprint dummy "ダッシュの間隔"

## Score Holder
    #> Local
    # @within player_input:**
        #define score_holder #pliH. 汎用

## Tags
    #> Local
    # @within player_input:**
        #define tag pliT. エンティティ全員
        # アクティブ
        #define tag pliT.active
            #define tag pliT.active.click_item
            #define tag pliT.active.forward
            #define tag pliT.active.backward
            #define tag pliT.active.right
            #define tag pliT.active.left
            #define tag pliT.active.jump
            #define tag pliT.active.sneak
            #define tag pliT.active.sprint
        # クエリ
            #define tag pliT.query.forward
            #define tag pliT.query.backward
            #define tag pliT.query.right
            #define tag pliT.query.left
            #define tag pliT.query.jump
            #define tag pliT.query.sneak
            #define tag pliT.query.sprint
        # ホールド
            #define tag pliT.hold.click_item
            #define tag pliT.hold.forward
            #define tag pliT.hold.backward
            #define tag pliT.hold.right
            #define tag pliT.hold.left
            #define tag pliT.hold.jump
            #define tag pliT.hold.sneak
            #define tag pliT.hold.sprint

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