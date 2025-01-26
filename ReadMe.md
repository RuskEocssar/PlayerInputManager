# Click Item Manager

アイテムを右クリックしたときの処理を簡単に設定できるようにするためのデータパックです。  
対応バージョン：25w04a

### 主な機能
- シングルクリック、ダブルクリック、長押し、長押しの開始および終了のそれぞれに個別のコマンドを設定する
- 消費アイテムについて、消費後に自動でアイテムを手元に戻す　クールダウン付きのアイテムの作成
- 利用頻度が高い`consume_seconds`が0または非常に大きいパターンのコンポーネント記述の省略
- ダブルクリックや長押しの判定用のパラメータの個別設定


# 使い方
　アイテムの`minecraft:custom_data`コンポーネントに以下のフォーマットでクリック時のコマンドを設定することで利用ができる。
これとは別に、バニラで用意されている`minecraft:use_cooldown`や`minecraft:consumable`、`minecraft:blocks_attacks`などを併用することができます。

## アイテムフォーマット 
```html
* <>内はデータ型 ()内は初期値

minecraft:custom_data : {
    click_event : {
        click : <string>,           | ("") シングルクリックのときに実行するコマンド。
        double_click : <string>,    | ("") ダブルクリックのときに実行するコマンド。設定されていない場合は、clickに設定したコマンドが実行される。
        hold : <string>,            | ("") 長押し中に実行するコマンド。
        hold_init : <string>,       | ("") 長押しを開始したときに実行するコマンド。
        hold_end : <string>,        | ("") 長押しを終了したときに実行するコマンド。
        
        click_interval : <int>,     | (1) 1回のクリックから、次のクリックまで何tickの間隔が空いた場合に断続的なクリックとするかの設定。
        hold_threshold : <int>,     | (4) クリックが何tickの間連続ししたら長押しとするかの設定。
        double_click_range : {      | ダブルクリックの判定についてのパラメーター。
            min : <int>,                | (2) 最小値。
            max : <int>,                | (5) 最大値。
        }

        no_consume : <boolen>       | (true) 消費アイテムを消費した際に、アイテムを復元するかどうかの設定。trueの場合、アイテムを復元する。
    }
}
```

### ストレージフォーマット
　`click_interval` `hold_threshold` `double_click_range`については共通設定としてストレージ`click_item:`から設定することもできる。  
アイテムにこれらのパラメーターが設定されていた場合は、アイテムのパラメーターが優先される。

```html
* <>内はデータ型 ()内は初期値

click_item: {
    click_interval : <int>,     | (1) 1回のクリックから、次のクリックまで何tickの間隔が空いた場合に断続的なクリックとするかの設定。
    hold_threshold : <int>,     | (4) クリックが何tickの間連続ししたら長押しとするかの設定。
    double_click_range : {      | ダブルクリックの判定についてのパラメーター。
        min : <int>,                | (2) 最小値。
        max : <int>,                | (5) 最大値。
    }
}
```

### 使用例
```mcfunction

# ストレージからの設定変更 (長押し時に4tick間隔になるアイテムは下記のようにするといい)
data modify storage click_item: click_interval set value 4
data modify storage click_item: hold_threshold set value 5
data modify storage click_item: double_click_range set value {min:3,max:7}
```