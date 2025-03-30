# Player Input Manager <!-- omit from toc -->

プレイヤーの前後左右移動やジャンプ、スニーク、右クリックや攻撃などの入力において、シングルクリック、ダブルクリック、長押しなどに応じたコマンドの実行を簡単に設定できるようにするためのデータパックです。

対応バージョン：1.21.5

<img src="/doc/player_input.gif" alt="player input gif" width="500">

## 主な機能
- 前後左右移動(WASD)、ジャンプ(space)、スニーク(shift)、ダッシュ(ctrl)、アイテムの右クリックの操作に対応
- シングルクリック、ダブルクリック、長押し、長押しの開始および終了のそれぞれに個別のコマンドを設定する
- アイテムは、アイテムごとにコマンドを設定できる
- 消費アイテムについて、消費後に自動でアイテムを手元に戻す（クールダウン付きの非消費アイテムが作成できる）
- 利用頻度が高い`consume_seconds`が0または非常に大きいパターンなどのコンポーネント記述の省略・簡略化
- ダブルクリックや長押しの判定用のパラメータの個別設定
- 入力の履歴を参照し、コマンド入力などの判定ができる

## 目次
- [使い方](#使い方)
  - [キー入力のイベント設定](#キー入力のイベント設定)
  - [アイテム右クリックのイベント設定](#アイテム右クリックのイベント設定)
  - [共通設定](#共通設定)
  - [その他ファンクション](#その他ファンクション)
- [スコアボード](#スコアボード)
- [使用例](#使用例)


# 使い方
プレイヤーのキー入力にイベントを設定する場合と、アイテムの右クリックにイベントを設定する場合で方法が異なります。

## キー入力のイベント設定
ファンクションからプレイヤー個別、またはプレイヤー全員に適用されるイベントを設定することができます。

### `player_input:key/set_event`
イベントを設定するファンクション。名前(`name`)によって個別に設定することが可能です。  
ストレージの`player_input: in`に`/data`コマンドを用いて入力内容をセットした後にファンクションを実行します。

**入力フォーマット**
```html
* <>内はデータ型 ()内は初期値

player_input: in {
    name : <string>,            | ("") イベントグループの名前
    replace : <boolen>,         | (true) 設定を完全に上書きするかマージするか trueの場合完全に上書きし、falseの場合マージをする。
    everyone : <boolen>,        | (false) 全員に適用するかどうか　falseの場合、実行者となるプレイヤーに個別設定を適用する。
    forward : {                 | 前進キーの設定
        every_input : <string>,     | ("") キーを一回押したときと素早く二回押したときに実行されるコマンド
        single_input : <string>,    | ("") キーを一回押したときに実行されるコマンド
        double_input : <string>,    | ("") キーを素早く二回押したときに実行されるコマンド
        hold : <string>,            | ("") キーを長押ししているときに実行されるコマンド
        hold_init : <string>,       | ("") キーの長押しがを開始したときに実行されるコマンド
        hold_end : <string>,        | ("") キーの長押しを終了したときに実行されるコマンド
    },
    backward : {                | 後退キーを押したときのコマンドの設定
        ...,                        | forwardと同じフォーマット
    },
    right : {                   | 右移動キーを押したときのコマンドの設定
        ...,                        | forwardと同じフォーマット
    },
    left : {                    | 左移動キーを押したときのコマンドの設定
        ...,                        | forwardと同じフォーマット
    },
    jump : {                    | ジャンプキーを押したときのコマンドの設定
        ...,                        | forwardと同じフォーマット
    },
    sneak : {                   | スニークキーを押したときのコマンドの設定
        ...,                        | forwardと同じフォーマット
    },
    sprint : {                  | ダッシュキーを押したときのコマンドの設定
        ...,                        | forwardと同じフォーマット
    },
}
```

### `player_input:key/delete_event`
イベントの設定を削除するファンクション。名前(`name`)を指定して削除します。  
`everyone:true`の場合は共通設定の削除、`everyone:false`の場合は実行者となるプレイヤーの個別設定のみ削除します。

**入力フォーマット**
```html
* <>内はデータ型 ()内は初期値

player_input: in {
    name : <string>,            | ("") クエリの名前
    everyone : <boolen>,        | (false) 共通設定を削除するか個別設定を削除するか
}
```


## アイテム右クリックのイベント設定
アイテムの`minecraft:custom_data`コンポーネントに以下のフォーマットでクリック時のコマンドを設定することで利用ができます。  
これとは別に、バニラで用意されている`minecraft:use_cooldown`や`minecraft:consumable`、`minecraft:blocks_attacks`などを併用することができます。

**データフォーマット**
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

## 共通設定
`input_interval` `hold_threshold` `double_input_range`については共通設定としてストレージ`player_input:`から設定することもできます。  
アイテムに個別パラメーターが設定されていた場合は、アイテムの個別パラメーターが優先されます。

**データフォーマット**
```html
* <>内はデータ型 ()内は初期値

player_input: {                 
    key_input : {               | キー入力の設定
        input_interval : <int>,     | (1) 1回のクリックから、次のクリックまで何tickの間隔が空いた場合に断続的なクリックとするかの設定。
        hold_threshold : <int>,     | (4) クリックが何tickの間連続ししたら長押しとするかの設定。
        double_input_range : {      | ダブルクリックの判定についてのパラメーター。
            min : <int>,                | (2) 最小値。
            max : <int>,                | (5) 最大値。
        }
    },
    click_item : {              | アイテム右クリックの設定
        input_interval : <int>,     | (1) 1回のクリックから、次のクリックまで何tickの間隔が空いた場合に断続的なクリックとするかの設定。
        hold_threshold : <int>,     | (4) クリックが何tickの間連続ししたら長押しとするかの設定。
        double_input_range : {      | ダブルクリックの判定についてのパラメーター。
            min : <int>,                | (2) 最小値。
            max : <int>,                | (5) 最大値。
        }
    }
}
```

## その他ファンクション


# スコアボード


# 使用例
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