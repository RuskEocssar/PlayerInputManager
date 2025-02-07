#> zz.player_input:forward/main
# アイテムをクリックしたときに実行されるファンクション
# @within
#   advancement zz.player_input:forward

execute if entity @s[tag=!pliT.query.forward] run return fail

advancement revoke @s only zz.player_input:forward