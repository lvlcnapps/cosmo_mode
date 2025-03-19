execute if score sc_arrive anim_timers matches 206.. run return run none
# execute as @a[x=308, y=263, z=5, dx=10, dy=4, dz=16] at @s run tp ~ ~ ~1
scoreboard players add sc_arrive anim_timers 1

execute in cosmo:map if score sc_arrive anim_timers matches 1..104 run execute as @e[tag=test_as] at @s run tp @s ~ ~-0.25724787771376323 ~
execute in cosmo:map if score sc_arrive anim_timers matches 1..104 run execute as @e[tag=test_as] at @s run tp @s ~ ~ ~-0.42874646285627205
execute in cosmo:map if score sc_arrive anim_timers matches 105..193 run execute as @e[tag=test_as] at @s run tp @s ~ ~ ~0.5
execute in cosmo:map if score sc_arrive anim_timers matches 205.. run kill @e[tag=test_as]
execute in cosmo:map if score sc_arrive anim_timers matches 205.. run kill @e[tag=test_disp]
execute in cosmo:map if score sc_arrive anim_timers matches 205.. run place template minecraft:spacecraft_stoped 308 263 2