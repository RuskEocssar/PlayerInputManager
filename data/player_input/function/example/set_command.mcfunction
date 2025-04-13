data modify storage player_input: in set value {\
    name:"command_1",\
    everyone:true,\
    commands:[{command:"function player_input:example/dush",exclude_key:["jump","forward"],exclude_hold:true,list:[\
        {key:"sprint",time:{min:1,max:5}},\
        {key:"left",time:{min:1,max:5}},\
        {key:"backward",time:{min:1,max:5}},\
        {key:"right",time:{min:1,max:5}},\
    ]}],\
}

function player_input:key/set_event