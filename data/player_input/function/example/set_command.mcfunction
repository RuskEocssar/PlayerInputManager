function player_input:execute {func:"key/set_event",in:{\
    name:"command_1",\
    everyone:true,\
    commands:[{command:"function player_input:example/event/boost",exclude_key:["sprint","forward","backward","right","left"],exclude_hold:true,list:[\
        {key:"sneak",time:{min:0,max:10}},\
        {key:"sneak",time:{min:0,max:10}},\
        {key:"jump",time:{min:0,max:10}},\
    ]}],\
}}

function player_input:execute {func:"key/set_event",in:{\
    name:"command_2",\
    everyone:true,\
    commands:[{command:"function player_input:example/event/dush",cancel_command:true,exclude_key:["sprint"],exclude_hold:true,list:[\
        {key:"right",time:{min:0,max:10}},\
        {key:"forward",time:{min:0,max:10}},\
        {key:"left",time:{min:0,max:10}},\
        {key:"backward",time:{min:0,max:10}},\
        {key:"forward",time:{min:0,max:10}},\
    ]}],\
}}