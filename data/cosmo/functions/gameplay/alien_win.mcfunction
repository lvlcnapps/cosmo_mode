scoreboard players set end cosmo_counter 1

execute if score test_mode cosmo_counter matches 0 run function cosmo:logging {win_selector:"@p[tag=alien_hunter]"}
title @a title {"text":"Победа Ксеноморфа!","color":"red"}

schedule function cosmo:gameplay/refresh 5s