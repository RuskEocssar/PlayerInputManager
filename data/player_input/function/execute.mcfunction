#> player_input:execute
# マクロを用いて入力と実行を1ラインで実行するためのファンクション
# @public
# in:
#   in -> ファンクションの入力
#   func -> 実行するplayer_inputのファンクション player_input:以降の文字列

## 入力の反映とコマンドの実行
    $data modify storage player_input: in set value $(in)
    $function player_input:$(func)