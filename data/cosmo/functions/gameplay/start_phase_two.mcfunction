scoreboard players set phase cosmo_counter 2
scoreboard objectives setdisplay sidebar display_ph_2

title @a title {"text":"\u0421\u0420\u041e\u0427\u041d\u041e \u0412 \u0411\u0423\u0420\u0410\u041d","bold":true,"color":"red"}
title @a subtitle {"text":"\u043f\u0440\u043e\u0441\u043b\u0435\u0434\u0443\u0439\u0442\u0435 \u0432 \u0448\u043b\u044e\u043f\u043a\u0443 \u0432 \u0430\u043d\u0433\u0430\u0440\u0435","color":"light_purple"}

execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 1

bossbar set minecraft:bb1 style progress
bossbar set minecraft:bb1 name "До отправления Бурана:"
bossbar set minecraft:bb1 max 1600
bossbar set minecraft:bb1 color red

scoreboard players set p2_count cosmo_counter 1600

clear @a[tag=alien_hunter] minecraft:netherite_hoe 
item replace entity @a[tag=alien_hunter] weapon.offhand with minecraft:netherite_axe[minecraft:custom_name='[{"text":"Супер-Культяпка","italic":false}]'] 1
item replace entity @a[tag=alien_hunter] weapon.mainhand with minecraft:netherite_axe[minecraft:food={nutrition:0, saturation:0, can_always_eat:true, eat_seconds:0.1},minecraft:custom_name='[{"text":"Супер-Культяпка","italic":false}]'] 1

scoreboard players set siren_delay cosmo_counter 140
setblock 319 260 25 minecraft:redstone_block
setblock 307 260 1 minecraft:redstone_block