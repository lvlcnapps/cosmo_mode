team join specs @a[scores={death_handler = 1..}]
gamemode spectator @a[scores={death_handler = 1..}]
scoreboard players set @a[scores={death_handler = 1..}] death_handler 0

execute as @a[tag=alien_hunter] at @s if entity @a[tag=!alien_hunter, distance=..20, team=!specs] run effect give @s minecraft:saturation 2

execute unless score p2_count cosmo_counter matches -1 run scoreboard players remove p2_count cosmo_counter 1
execute store result bossbar minecraft:bb1 value run scoreboard players get p2_count cosmo_counter

execute as @a[scores={toggle_dash=1..}] run scoreboard players set @s t_dash 1
execute as @a[scores={toggle_dash=1..}] run schedule function cosmo:gameplay/end_dash 15t replace
execute as @a[scores={toggle_dash=1..}] run scoreboard players set time cd_dash 100
execute as @a[scores={toggle_dash=1..}] run scoreboard players set @a toggle_dash 0

execute as @a[scores={t_dash=1..}] run function cosmo:gameplay/dash

execute unless score time cd_dash matches -1 run scoreboard players remove time cd_dash 1
execute if score time cd_dash matches 0 run give @a[tag=alien_hunter] minecraft:netherite_axe[minecraft:food={nutrition:0, saturation:0, can_always_eat:true, eat_seconds:0.1},minecraft:custom_name='[{"text":"Супер-Культяпка","italic":false}]']

scoreboard players set dead cosmo_counter 0
execute as @a[team=specs,tag=!alien_hunter] run scoreboard players add dead cosmo_counter 1
scoreboard players operation dead cosmo_counter -= count_gnomes cosmo_counter
execute if score end cosmo_counter matches 0 if score dead cosmo_counter matches 0 run function cosmo:gameplay/nobody_win

# animations
execute if score siren_delay cosmo_counter > false cosmo_counter if score siren cosmo_counter matches 56.. run execute in cosmo:map positioned 313 262 14 as @a[distance=..15] run playsound minecraft:item.goat_horn.sound.3 master @s ~ ~ ~ 3 1.5
execute if score siren_delay cosmo_counter > false cosmo_counter if score siren cosmo_counter matches 56.. run scoreboard players set siren cosmo_counter 0
execute if score siren_delay cosmo_counter > false cosmo_counter run scoreboard players add siren cosmo_counter 1
execute if score siren_delay cosmo_counter > false cosmo_counter run scoreboard players remove siren_delay cosmo_counter 1

execute in cosmo:map if score siren_delay cosmo_counter matches 1 run fill 308 262 5 318 269 21 air
execute in cosmo:map if score siren_delay cosmo_counter matches 1 run execute in cosmo:map positioned 307.0 261.0 4.0 run function cosmo:boxes_summon
execute in cosmo:map if score siren_delay cosmo_counter matches 1 run scoreboard players set floor_delay cosmo_counter 60
execute if score floor_delay cosmo_counter > false cosmo_counter run scoreboard players remove floor_delay cosmo_counter 1
execute in cosmo:map if score floor_delay cosmo_counter matches 1 run fill 308 262 5 318 262 21 iron_block
execute in cosmo:map if score floor_delay cosmo_counter matches 1 run kill @e[tag=boxes_stands]
execute in cosmo:map if score floor_delay cosmo_counter matches 1 run kill @e[tag=boxes_disp]
execute in cosmo:map if score floor_delay cosmo_counter matches 1 run function cosmo:start_anim_arrive
execute in cosmo:map if score floor_delay cosmo_counter matches 0 run function cosmo:anim_arrive

execute if score p2_count cosmo_counter matches 0 run function cosmo:gameplay/end_game

# execute at @a[tag=alien_hunter] if entity @p[tag=!alien_hunter,distance=..1] run say lol