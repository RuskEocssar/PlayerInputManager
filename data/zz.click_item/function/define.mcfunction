 #> zz.click_item:define
# スコアボード等の定義のみ
# *VSCodeの拡張機能"Data-pack Helper Plus"を
# @within
#   function click_item:load

## Scoreboard objective
    #> Puclic
    # @public
        scoreboard objectives add player.click dummy "クリック"
        scoreboard objectives add player.click.time dummy "クリック時間"
        scoreboard objectives add player.active dummy "プレイヤーが見ているディスプレイの数"
    #> Local (core)
    # @within click_item:**
        scoreboard objectives add cliS. dummy "汎用"
        scoreboard objectives add cliS.time.click dummy "クリックの間隔"
        scoreboard objectives add cliS.mode dummy "クリックの状態"

## Score Holder
    #> Local
    # @within click_item:**
        #define score_holder #cliH. 汎用

## Tags
    #> Local
    # @within click_item:**
        #define tag cliT. display_ui用エンティティ全員
        #define tag cliT.marker display_ui用マーカー

## Storage
    #> Core
    # @within click_item:**
        #define storage click_item:zz

## Entity
    #> Local
    # @within click_item:**
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