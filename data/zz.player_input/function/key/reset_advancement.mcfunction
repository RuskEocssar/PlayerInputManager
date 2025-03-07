#> zz.player_input:key/reset_advancement
# プレイヤーの進捗を解除
# @within
#   function zz.player_input:**

## 進捗を解除
    advancement revoke @s from zz.player_input:key_input
    # スコアリセット
    scoreboard players reset @s pliS.logout