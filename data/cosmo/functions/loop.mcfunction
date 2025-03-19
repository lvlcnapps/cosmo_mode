scoreboard players add game_time cosmo_counter 1

function cosmo:gameplay/count_winners

execute if score phase cosmo_counter matches 1 run function cosmo:gameplay/main_game
execute if score phase cosmo_counter matches 2 run function cosmo:gameplay/phase_two

execute as @e[tag=cookies_room_door] on target run execute as @s[nbt={SelectedItem:{id:"minecraft:blue_carpet"}}] run function cosmo:cookies_door/open_cookies_door
execute as @e[tag=cookies_room_door] on target run execute as @s[nbt={SelectedItem:{id:"minecraft:purple_carpet"}}] run function cosmo:cookies_door/open_cookies_door
execute as @e[tag=cookies_room_door] run data remove entity @s interaction

execute as @e[tag=open_vault_heart] on target run execute as @s[nbt={SelectedItem:{id:"minecraft:blue_carpet"}}] run function cosmo:vault_heart/open_vault_heart
execute as @e[tag=open_vault_heart] on target run execute as @s[nbt={SelectedItem:{id:"minecraft:purple_carpet"}}] run function cosmo:vault_heart/open_vault_heart
execute as @e[tag=open_vault_heart] run data remove entity @s interaction

execute as @e[tag=open_room_door] on target run execute as @s[nbt={SelectedItem:{id:"minecraft:blue_carpet"}}] run function cosmo:room_door/open_room_door
execute as @e[tag=open_room_door] on target run execute as @s[nbt={SelectedItem:{id:"minecraft:purple_carpet"}}] run function cosmo:room_door/open_room_door
execute as @e[tag=open_room_door] run data remove entity @s interaction

execute as @e[tag=sisadm_card] on target run execute as @s[nbt={SelectedItem:{id:"minecraft:purple_carpet"}}] run function cosmo:doors_open_sisadm
execute as @e[tag=sisadm_card] run data remove entity @s interaction

execute as @e[tag=mushrooms_room_door] on target run execute as @s[nbt={SelectedItem:{id:"minecraft:purple_carpet"}}] run function cosmo:mushrooms_door/open_mushrooms_door
execute as @e[tag=mushrooms_room_door] run data remove entity @s interaction

execute as @e[tag=upgrade_card] on target run execute as @s[nbt={SelectedItem:{id:"minecraft:blue_carpet"}}] run function cosmo:upgrade_card
execute as @e[tag=upgrade_card] run data remove entity @s interaction

execute as @e[tag=add_target] on target run execute as @s run scoreboard players add act_target cosmo_counter 1
execute as @e[tag=add_target] run data remove entity @s interaction

execute as @e[tag=remove_target] on target run execute as @s run scoreboard players remove act_target cosmo_counter 1
execute as @e[tag=remove_target] run data remove entity @s interaction

execute if score door_sisadm timer_door_test > 0 timer_door_test run scoreboard players remove door_sisadm timer_door_test 1
execute if score door_sisadm timer_door_test matches 1 in cosmo:map run fill 302 264 87 302 266 87 minecraft:redstone_block
execute if score door_sisadm timer_door_test matches 1 in cosmo:map run fill 302 264 94 302 266 94 minecraft:redstone_block

execute as @e[tag=get_ticket] on target run give @s minecraft:name_tag[minecraft:custom_name='{"text":"Билетик"}']
execute as @e[tag=get_ticket] run data remove entity @s interaction

execute as @e[tag=buy_blue] on target run execute in cosmo:map if block 340 273 65 air run tellraw @s "Блять, Васёк, не видно нихуя, съеби уже или свет вруби"
execute as @e[tag=buy_blue] on target run execute in cosmo:map if block 340 273 65 minecraft:redstone_block if data entity @s Inventory[{id:"minecraft:blue_carpet"}] run tellraw @s "Че, ебнутый, купил - вали отсюда"
execute as @e[tag=buy_blue] on target run execute in cosmo:map if block 340 273 65 minecraft:redstone_block unless data entity @s Inventory[{id:"minecraft:blue_carpet"}] run give @s minecraft:blue_carpet[minecraft:custom_name='{"text":"Blue Pass"}']
execute as @e[tag=buy_blue] run data remove entity @s interaction

execute as @e[tag=buy_blue_2] on target run execute in cosmo:map unless items entity @s container.* minecraft:name_tag run tellraw @s "ИЗВИНИТЕ! ТУТ ВООБЩЕ-ТО ОЧЕРЕДЬ! ВОЗЬМИТЕ ТАЛОН!"
execute as @e[tag=buy_blue_2] on target run execute in cosmo:map if items entity @s container.* minecraft:name_tag if data entity @s Inventory[{id:"minecraft:blue_carpet"}] run tellraw @s "Ну вы же уже взяли карту, не занимайте очередь!"
execute as @e[tag=buy_blue_2] on target run execute in cosmo:map if items entity @s container.* minecraft:name_tag unless data entity @s Inventory[{id:"minecraft:blue_carpet"}] run give @s minecraft:blue_carpet[minecraft:custom_name='{"text":"Blue Pass"}']
execute as @e[tag=buy_blue_2] run data remove entity @s interaction

execute as @a if items entity @s container.* minecraft:blue_carpet unless items entity @s container.* minecraft:blue_carpet[minecraft:count=1] run clear @s minecraft:blue_carpet 1
execute as @a if items entity @s weapon.* minecraft:blue_carpet unless items entity @s weapon.* minecraft:blue_carpet[minecraft:count=1] run clear @s minecraft:blue_carpet 1

execute as @a store result score @s player_y run data get entity @s Pos[1] 1
execute as @a[scores={player_y=650..}] run function cosmo:astro/throw_back
kill @e[type=item,nbt={Item:{id:"minecraft:minecart"}}]

execute in cosmo:map run data modify block 313 284 75 front_text.messages set value ['{"text":"Количество"}', '{"text":"хорусов для"}', '{"text":"победы:"}', '{"score":{"name":"act_target","objective":"cosmo_counter"}}']
execute in cosmo:map if score test_mode cosmo_counter matches 1 run data modify block 304 285 60 front_text.messages set value ['{"text":""}', '{"text":"РЕЖИМ"}', '{"text":"ТЕСТИРОВАНИЯ:"}', '{"text":"ON", "color":"green"}']
execute in cosmo:map if score test_mode cosmo_counter matches 0 run data modify block 304 285 60 front_text.messages set value ['{"text":""}', '{"text":"РЕЖИМ"}', '{"text":"ТЕСТИРОВАНИЯ:"}', '{"text":"OFF", "color":"red"}']