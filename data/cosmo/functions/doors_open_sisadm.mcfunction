scoreboard players add nobody timer_door_test 1
scoreboard players set door_sisadm timer_door_test 60
execute in cosmo:map if block 302 264 87 minecraft:redstone_block run fill 302 264 87 302 266 87 minecraft:air
execute in cosmo:map if block 302 264 94 minecraft:redstone_block run fill 302 264 94 302 266 94 minecraft:air