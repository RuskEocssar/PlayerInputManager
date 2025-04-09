#> zz.player_input:item/slot/change_hotbar
# アイテムがホットバーに移動したときに実行されるファンクション
# @within
#   advancement zz.player_input:change_slot

## データをセット
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.0":{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.0":{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.player_input:item/slot/0
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.1":{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.1":{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.player_input:item/slot/1
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.2":{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.2":{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.player_input:item/slot/2
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.3":{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.3":{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.player_input:item/slot/3
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.4":{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.4":{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.player_input:item/slot/4
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.5":{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.5":{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.player_input:item/slot/5
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.6":{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.6":{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.player_input:item/slot/6
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.7":{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.7":{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.player_input:item/slot/7
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.8":{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.8":{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.player_input:item/slot/8

## 後処理
    advancement revoke @s only zz.player_input:item/change_hotbar