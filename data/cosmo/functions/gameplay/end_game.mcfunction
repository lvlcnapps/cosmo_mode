execute if score test_mode cosmo_counter matches 0 run function cosmo:logging {win_selector:"@a[tag=!alien_hunter,gamemode=adventure,x=311,y=265,z=7,dx=4,dy=3,dz=13]"}
title @a title {"text":"Победа гномов!","color":"green"}

execute in cosmo:map if score Спасшихся: display_ph_2 >= true cosmo_counter run tellraw @a ["",{"text":"\n\n\n\n\n\n\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435\u043b\u0438: "},{"selector":"@a[tag=!alien_hunter,gamemode=adventure,x=311,y=265,z=7,dx=4,dy=3,dz=13]"}]
execute in cosmo:map if score Спасшихся: display_ph_2 matches 0 run tellraw @a ["",{"text":"\n\n\n\n\n\n\u041d\u0438\u043a\u0442\u043e \u043d\u0435 \u0441\u043f\u0430\u0441\u0441\u044f!"}]

schedule function cosmo:gameplay/start_animation 3s