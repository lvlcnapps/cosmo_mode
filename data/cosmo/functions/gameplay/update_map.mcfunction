# РУБКА
execute in cosmo:map run setblock 318 282 77 minecraft:redstone_block destroy

# ПРАВОЕ КРЫЛО - СТОЛОВАЯ И АКВАРИУМ
execute in cosmo:map run setblock 289 251 34 minecraft:redstone_block destroy

# ЛЕВОЕ КРЫЛО - ЦЕРКОВЬ
execute in cosmo:map run setblock 347 263 36 minecraft:redstone_block destroy

# ЗАДНЯЯ ЧАСТЬ - АНГАР
execute in cosmo:map run setblock 325 262 -3 minecraft:redstone_block destroy

# /give @p minecraft:chorus_fruit[minecraft:food={nutrition:0,saturation:0,can_always_eat:false}]

# Комната эдгара в кишке
execute in cosmo:map run setblock 300 252 95 minecraft:redstone_block destroy
execute in cosmo:map run setblock 297 257 87 minecraft:redstone_block

# Меха двери
function cosmo:room_door/restore_room_door
function cosmo:vault_heart/restore_vault_heart
function cosmo:cookies_door/restore_cookies_door

# Пыточная
execute in cosmo:map run setblock 321 264 39 minecraft:skeleton_skull[rotation=7]

# Змейка
execute in cosmo:map run setblock 319 260 25 minecraft:air
execute in cosmo:map run setblock 307 260 1 minecraft:air

# Пол в ангаре
execute in cosmo:map run fill 308 262 5 318 262 21 iron_block

# Чистка вагонеток в цирке и бадаже
kill @e[type=minecraft:minecart]