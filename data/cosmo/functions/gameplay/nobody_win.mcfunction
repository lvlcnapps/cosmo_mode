scoreboard players set end cosmo_counter 1
scoreboard players set p2_count cosmo_counter -1

execute if score test_mode cosmo_counter matches 0 run function cosmo:logging {win_selector:""}
title @a title {"text":"Никто не победил!","color":"red"}

schedule function cosmo:gameplay/refresh 5s