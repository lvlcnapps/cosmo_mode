function cosmo:gameplay/count_chorus

team join specs @a[scores={death_handler = 1..}]
gamemode spectator @a[scores={death_handler = 1..}]
scoreboard players set @a[scores={death_handler = 1..}] death_handler 0

execute as @a[tag=alien_hunter] at @s if entity @a[tag=!alien_hunter, distance=..20, team=!specs] run effect give @s minecraft:saturation 2

effect give @a[scores={check_fake = 1..}] minecraft:glowing 2 1
scoreboard players set @a[scores={check_fake = 1..}] check_fake 0

effect give @a[scores={check_shulker = 1..}] minecraft:glowing 2 1
scoreboard players set @a[scores={check_shulker = 1..}] check_shulker 0

scoreboard players set dead cosmo_counter 0
execute as @a[team=specs,tag=!alien_hunter] run scoreboard players add dead cosmo_counter 1
scoreboard players operation dead cosmo_counter -= count_gnomes cosmo_counter
execute if score end cosmo_counter matches 0 if score dead cosmo_counter matches 0 run function cosmo:gameplay/alien_win