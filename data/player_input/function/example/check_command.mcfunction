data modify storage player_input: in set value {\
    commands:[{command:"say success",exclude_key:["jump","sprint","sneak"],exclude_hold:true,list:[\
        {key:"left",time:{min:1,max:10}},\
        {key:"backward",time:{min:1,max:10}},\
        {key:"right",time:{min:1,max:10}},\
    ]}],\
}

function player_input:command/check