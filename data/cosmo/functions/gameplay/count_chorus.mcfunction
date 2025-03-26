# АНГАР КОМНАТА
execute in cosmo:map if data block 305 263 2 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# АНГАР БАЛКОН
execute in cosmo:map if data block 324 268 20 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# ЖЕРТВА
execute in cosmo:map if data block 321 263 39 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# КАЗАРМЫ
execute in cosmo:map if data block 306 265 41 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1
execute in cosmo:map if data block 305 263 47 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# МЕДПУНКТ
execute in cosmo:map if data block 287 266 49 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# АКВАРИУМ
execute in cosmo:map if data block 291 269 37 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# ОФИС
execute in cosmo:map if data block 297 274 70 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# ЦЕРКОВЬ
execute in cosmo:map if data block 327 269 46 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# БАДАЖ
execute in cosmo:map if data block 341 269 75 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# КАЮТА С КНИГАМИ
execute in cosmo:map if data block 316 270 79 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# КАЮТА ЗАКРЫТАЯ
execute in cosmo:map if data block 305 270 75 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# КАЮТА МУЗЫКАЛЬНАЯ
execute in cosmo:map if data block 304 269 94 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# КАННАБИСНАЯ
execute in cosmo:map if data block 324 263 75 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# БОЛЬШАЯ СТОЛОВАЯ
execute in cosmo:map if data block 302 263 58 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# КУХНЯ
execute in cosmo:map if data block 294 264 77 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# СКЛЕП
execute in cosmo:map if data block 293 263 80 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# ЛЕКЦИОННАЯ
execute in cosmo:map if data block 313 264 78 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# СИСАДМИН
execute in cosmo:map if data block 299 263 94 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# ПИВНУХА
execute in cosmo:map if data block 313 264 87 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# РУБКА
execute in cosmo:map if data block 318 264 108 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# ЛАБОРАТОРИЯ
execute in cosmo:map if data block 335 264 87 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# ТУАЛЕТ
execute in cosmo:map if data block 332 264 82 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# КОМНАТА ЭДГАРА
execute in cosmo:map if data block 296 254 100 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# СЕРДЦЕ
execute in cosmo:map if data block 313 258 85 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# ПОД АКВАРИУМОМ
execute in cosmo:map if data block 292 267 43 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# ЦИРК
execute in cosmo:map if data block 301 261 46 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# ПЕЧЕНЬЯ
execute in cosmo:map if data block 338 263 39 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

# ГРИБОЧКИ))))
execute in cosmo:map if data block 344 264 65 Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add data cosmo_counter 1

scoreboard players operation count_chorus cosmo_counter = max cosmo_counter
scoreboard players operation count_chorus cosmo_counter -= data cosmo_counter
scoreboard players operation data cosmo_counter -= target cosmo_counter
execute store result bossbar minecraft:bb1 value run scoreboard players get data cosmo_counter

execute if score data cosmo_counter = false cosmo_counter run function cosmo:gameplay/start_phase_two
scoreboard players set data cosmo_counter 0