execute in cosmo:map as @a[tag=!alien_hunter,gamemode=adventure,x=311,y=265,z=7,dx=4,dy=3,dz=13] run scoreboard players add win_count cosmo_counter 1
scoreboard players add Спасшихся: display_ph_2 1

scoreboard players operation Спасшихся: display_ph_2 = win_count cosmo_counter
execute if score win_count cosmo_counter matches 1 run scoreboard players display numberformat Спасшихся: display_ph_2 styled {"color":"green"}
execute if score win_count cosmo_counter matches 0 run scoreboard players display numberformat Спасшихся: display_ph_2 styled {"color":"red"}

execute if score win_count cosmo_counter matches 0 run scoreboard objectives modify display_ph_2 displayname [{"text":"\u0421","color":"red"},{"text":"\u043a","color":"#f33434"},{"text":"\u043e","color":"#e82a2a"},{"text":"\u0440","color":"#de1f1f"},{"text":"\u0435","color":"#d31515"},{"text":"\u0435","color":"#c80a0a"},{"text":"!","color":"dark_red"}]
execute if score win_count cosmo_counter matches 1 run scoreboard objectives modify display_ph_2 displayname [{"text":"\u041f","color":"green"},{"text":"\u043e","color":"#39f839"},{"text":"\u0431","color":"#33f233"},{"text":"\u0435","color":"#2dec2d"},{"text":"\u0434","color":"#28e628"},{"text":"\u0430 ","color":"#22e022"},{"text":"\u0431","color":"#1cdb1c"},{"text":"\u043b","color":"#16d516"},{"text":"\u0438","color":"#11cf11"},{"text":"\u0437","color":"#0bc90b"},{"text":"\u043a","color":"#05c305"},{"text":"\u0430","color":"dark_green"}]

scoreboard players set win_count cosmo_counter 0