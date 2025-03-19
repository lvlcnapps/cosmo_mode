function cosmo:room_door/move_room_door {dx:-0.01,dy:0,dz:0}
function cosmo:room_door/move_room_door {dx:0,dy:0,dz:1}

execute in cosmo:map run fill 311 269 82 311 270 82 minecraft:air

schedule function cosmo:room_door/clean_room_door 10t append