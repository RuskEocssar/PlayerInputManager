# Player Input Manager <!-- omit from toc -->

プレイヤーの前後左右移動やジャンプ、スニーク、右クリックや攻撃などの入力において、シングルクリック、ダブルクリック、長押しなどに応じたコマンドの実行を簡単に設定できるようにするためのデータパックです。

対応バージョン：25w04a

<img src="/doc/player_input.gif" alt="player input gif" width="500">

### 主な機能
- 前後左右移動(WASD)、ジャンプ(space)、スニーク(shift)、ダッシュ(ctrl)、アイテムに右クリック、アイテムによるエンティティへの攻撃(ヒット時のみ)の操作に対応
- シングルクリック、ダブルクリック、長押し、長押しの開始および終了のそれぞれに個別のコマンドを設定する
- アイテムは、アイテムごとにコマンドを設定できる
- 消費アイテムについて、消費後に自動でアイテムを手元に戻す（クールダウン付きの非消費アイテムが作成できる）
- 利用頻度が高い`consume_seconds`が0または非常に大きいパターンなどのコンポーネント記述の省略・簡略化
- ダブルクリックや長押しの判定用のパラメータの個別設定
- 入力の履歴を参照し、コマンド入力などの判定ができる

### 目次
- [使い方](#使い方)
  - [アイテムフォーマット](#アイテムフォーマット)
  - [ストレージフォーマット](#ストレージフォーマット)
  - [スコアボード](#スコアボード)
  - [使用例](#使用例)

# 使い方
　　
アイテムの`minecraft:custom_data`コンポーネントに以下のフォーマットでクリック時のコマンドを設定することで利用ができます。
これとは別に、バニラで用意されている`minecraft:use_cooldown`や`minecraft:consumable`、`minecraft:blocks_attacks`などを併用することができます。

## アイテムフォーマット 
```html
* <>内はデータ型 ()内は初期値

"minecraft:custom_data" : {
    click_event : {
        single_input : <string>,    | ("") シングルクリックのときに実行するコマンド。
        double_input : <string>,    | ("") ダブルクリックのときに実行するコマンド。設定されていない場合は、clickに設定したコマンドが実行される。
        hold : <string>,            | ("") 長押し中に実行するコマンド。長押し中はclick、double_clickは実行されない。
        hold_init : <string>,       | ("") 長押しを開始したときに実行するコマンド。
        hold_end : <string>,        | ("") 長押しを終了したときに実行するコマンド。
        
        input_interval : <int>,     | (1) 1回のクリックから、次のクリックまで何tickの間隔が空いた場合に断続的なクリックとするかの設定。
        hold_threshold : <int>,     | (4) クリックが何tickの間連続ししたら長押しとするかの設定。
        double_input_range : {       | ダブルクリックの判定についてのパラメーター。
            min : <int>,                | (2) 最小値。
            max : <int>,                | (5) 最大値。
        }

        no_consume : <boolen>       | (true) 消費アイテムを消費した際に、アイテムを復元するかどうかの設定。trueの場合、アイテムを復元する。
        4t_hold : <boolen>          | (false) アイテムを長押しした際、4tick間隔でクリックされるようにするかどうかの設定。trueの場合、4tick間隔になる。
                                              ニンジン付き棒などの挙動と同じになる。use_cooldownを占有するため、use_cooldownは使用不可となる。
    }
}
```

## ストレージフォーマット
　`input_interval` `hold_threshold` `double_input_range`については共通設定としてストレージ`player_input:`から設定することもできます。  
アイテムにこれらのパラメーターが設定されていた場合は、アイテムのパラメーターが優先されます。

```html
* <>内はデータ型 ()内は初期値

player_input: {
    input_interval : <int>,     | (1) 1回のクリックから、次のクリックまで何tickの間隔が空いた場合に断続的なクリックとするかの設定。
    hold_threshold : <int>,     | (4) クリックが何tickの間連続ししたら長押しとするかの設定。
    double_input_range : {       | ダブルクリックの判定についてのパラメーター。
        min : <int>,                | (2) 最小値。
        max : <int>,                | (5) 最大値。
    }
}
```

## スコアボード

## 使用例
```mcfunction
# アイテム 長押し時 毎tick判定
give @s recovery_compass[custom_data={click_event:{click:"#> click", double_click:"#> double click", hold:"#> hold", hold_init:"#> hold init", hold_end:"#> hold end"}}]

# アイテム 長押し時 4tick毎判定
give @s recovery_compass[custom_data={click_event:{4t_hold:true, click:"#> click", double_click:"#> double click", hold:"#> hold", hold_init:"#> hold init", hold_end:"#> hold end"}}]

# アイテム クールダウン付き
give @s recovery_compass[custom_data={click_event:{click:"#> click"}},use_cooldown={seconds:3f,cooldown_group:"a"}]

# ストレージからの設定変更 (0秒で消費されるアイテムなど、長押し時に4tick間隔になるアイテムは下記のようにすると綺麗な挙動になる)
data modify storage player_input: input_interval set value 4
data modify storage player_input: hold_threshold set value 4
data modify storage player_input: double_input_range set value {min:1,max:3}
```

player_input:zz query{
    history:[{time:2124124,key:"forward"},{time:1241241,key:"forward"}],
    fu
}