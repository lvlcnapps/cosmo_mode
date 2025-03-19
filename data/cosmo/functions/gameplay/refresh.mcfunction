team join boots @a
execute as @a run attribute @s minecraft:generic.scale base set 1
tag @a remove alien_hunter
effect clear @a
clear @a
execute in cosmo:map run tp @a 313 283 65
gamemode adventure @a
tag @a remove alien_jump
execute in cosmo:map run spawnpoint @a 313 283 65

scoreboard players set data cosmo_counter 0
scoreboard players set phase cosmo_counter 1
scoreboard players set player_count cosmo_counter 1
scoreboard players display numberformat Спасшихся: display_ph_2 styled {"color":"red"}
scoreboard objectives setdisplay sidebar dsds
data modify storage minecraft:data array set value [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
scoreboard players set p2_count cosmo_counter -1


bossbar set minecraft:bb1 max 20
bossbar set minecraft:bb1 style notched_20
bossbar set minecraft:bb1 name "До разъеба станции:"
bossbar set minecraft:bb1 color green

function cosmo:gameplay/update_map