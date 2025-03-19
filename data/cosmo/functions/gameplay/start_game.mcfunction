tag @s add alien_hunter
tag @a[tag=alien_hunter] add alien_jump
team join hunter @a[tag=alien_hunter]
spawnpoint @a 313 283 65
summon minecraft:minecart 296 264 45

schedule function cosmo:gameplay/spawn_hunter 3s replace
function cosmo:gameplay/spawn_gnomes

effect give @a[tag=alien_hunter] minecraft:strength infinite 50 true
effect give @a[tag=alien_hunter] minecraft:speed infinite 3 true
effect give @a[tag=alien_hunter] minecraft:dolphins_grace infinite 1 true
execute as @a[tag=!alien_hunter] run attribute @s minecraft:generic.scale base set 0.5

effect give @a minecraft:invisibility infinite 1 true
gamemode adventure @a

scoreboard players set target cosmo_counter 0
scoreboard players operation target cosmo_counter += max cosmo_counter
scoreboard players operation target cosmo_counter -= act_target cosmo_counter
scoreboard objectives setdisplay sidebar disp_goal
scoreboard players add game_id cosmo_counter 1
scoreboard players set count_gnomes cosmo_counter 0
execute as @a[tag=!alien_hunter] run scoreboard players add count_gnomes cosmo_counter 1
scoreboard players set @a stats_kills 0
scoreboard players set game_time cosmo_counter 0
scoreboard players set count_chorus cosmo_counter 0
scoreboard players set end cosmo_counter 0

execute as @a[tag=!alien_hunter] run function cosmo:gameplay/color_amogus

item replace entity @a[tag=alien_hunter] armor.chest with minecraft:leather_chestplate[minecraft:dyed_color=0]
item replace entity @a[tag=alien_hunter] armor.legs with minecraft:leather_leggings[minecraft:dyed_color=0]
item replace entity @a[tag=alien_hunter] armor.feet with minecraft:leather_boots[minecraft:dyed_color=0]
item replace entity @a[tag=alien_hunter] armor.head with minecraft:player_head[minecraft:custom_name='{"text":"Ксеноморф","color":"gold","underlined":true,"bold":true,"italic":false}',minecraft:lore=['{"text":"ID головы: 11937","color":"gray","italic":false}','{"text":"mcheads.ru","color":"blue","italic":false}'],profile={id:[I;2080793942,-524468218,-1541115779,1949756395],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2M2OWJjMjBkOGQ4MzU5MjMxZjM5NTQ2MmUwNjU5YmNiM2Q2MmFkMjBhMjhmN2I1ZDU1YWVlYzg5Yzc3MzY4In19fQ=="}]}] 1
item replace entity @a[tag=alien_hunter] weapon.mainhand with minecraft:netherite_hoe[minecraft:custom_name='[{"text":"Культяпка","italic":false}]'] 1
item replace entity @a[tag=alien_hunter] weapon.offhand with minecraft:netherite_hoe[minecraft:custom_name='[{"text":"Культяпка","italic":false}]'] 1

bossbar set minecraft:bb1 players sdsdcc2442
bossbar set minecraft:bb1 players @a