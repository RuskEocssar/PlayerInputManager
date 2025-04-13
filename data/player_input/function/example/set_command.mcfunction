data modify storage player_input: in set value {\
    name:"command_1",\
    everyone:true,\
    commands:[{command:"say うおおおおお",exclude_key:["sprint"],exclude_hold:true,list:[\
        {key:"forward",time:{min:0,max:10}},\
        {key:"forward",time:{min:0,max:10}},\
        {key:"backward",time:{min:0,max:10}},\
        {key:"backward",time:{min:0,max:10}},\
        {key:"left",time:{min:0,max:10}},\
        {key:"right",time:{min:0,max:10}},\
        {key:"left",time:{min:0,max:10}},\
        {key:"right",time:{min:0,max:10}},\
        {key:"jump",time:{min:0,max:10}},\
        {key:"sneak",time:{min:0,max:10}},\
    ]}],\
}

function player_input:key/set_event