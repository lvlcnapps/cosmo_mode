function cosmo:room_door/clean_room_door

execute in cosmo:map run summon armor_stand 311 269 82 {NoGravity:true,Tags: ["base_room_door"], Invisible:true,Marker:1,Passengers:[{id:"falling_block",Time:-2147483648,NoGravity:true,Tags:["room_block_del"],BlockState:{Name:"minecraft:iron_block"}}]}
execute in cosmo:map run summon armor_stand 311 270 82 {NoGravity:true,Tags: ["base_room_door"], Invisible:true,Marker:1,Passengers:[{id:"falling_block",Time:-2147483648,NoGravity:true,Tags:["room_block_del"],BlockState:{Name:"minecraft:iron_block"}}]}

execute in cosmo:map run fill 311 269 82 311 270 82 minecraft:barrier
