#> zz.click_item:slot/change_hotbar
# アイテムをホットバーに置いた時に実行されるファンクション
# @within
#   advancement zz.click_item:change_slot

## データをセット
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.0:{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.0:{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.click_item:slot/0
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.1:{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.1:{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.click_item:slot/1
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.2:{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.2:{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.click_item:slot/2
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.3:{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.3:{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.click_item:slot/3
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.4:{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.4:{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.click_item:slot/4
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.5:{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.5:{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.click_item:slot/5
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.6:{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.6:{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.click_item:slot/6
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.7:{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.7:{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.click_item:slot/7
    execute if predicate [{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.8:{predicates:{custom_data:{click_event:{}}}}}}},{condition:"inverted",term:{condition:"entity_properties",entity:"this",predicate:{slots:{hotbar.8:{predicates:{custom_data:{_slot:"mainhand"}}}}}}}] run function zz.click_item:slot/8

## 後処理
    advancement revoke @s only zz.click_item:change_hotbar