#> player_input:key/get_history
# 入力履歴を取得する
# @public

## 入力を取得
    data modify storage player_input: history set value []
    tag @s add _player
    execute as 4fe002bb-0-2-0-a00000001 on passengers if function zz.player_input:root/check_origin run data modify storage player_input: history set from entity @s data.history
    tag @s remove _player