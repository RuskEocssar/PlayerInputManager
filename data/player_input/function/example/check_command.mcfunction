function player_input:execute {func:"command/check",in:{\
    delay:8,\
    commands:[\
        {command:"execute at @s rotated ~ 0.0 anchored eyes positioned ^ ^ ^ run function player_input:example/event/slash_1",exclude_key:["jump","sprint","sneak"],exclude_hold:true,list:[\
            {key:"left",time:{min:1,max:10}},\
            {key:"right",time:{min:1,max:10}},\
            {key:"left",time:{min:1,max:10}},\
            {key:"right",time:{min:1,max:10}},\
        ]},\
        {command:"execute at @s rotated ~ 0.0 anchored eyes positioned ^ ^ ^ run function player_input:example/event/slash_2",exclude_key:["jump","sprint","sneak"],exclude_hold:true,list:[\
            {key:"forward",time:{min:1,max:10}},\
            {key:"forward",time:{min:1,max:10}},\
            {key:"forward",time:{min:1,max:10}},\
        ]},\
        {command:"execute at @s rotated ~ 0.0 anchored eyes positioned ^ ^ ^ run function player_input:example/event/slash_3",exclude_key:["jump","sprint","sneak"],exclude_hold:true,list:[\
            {key:"forward",time:{min:1,max:10}},\
            {key:"left",time:{min:1,max:10}},\
            {key:"backward",time:{min:1,max:10}},\
            {key:"right",time:{min:1,max:10}},\
            {key:"forward",time:{min:1,max:10}},\
        ]},\
    ],\
}}