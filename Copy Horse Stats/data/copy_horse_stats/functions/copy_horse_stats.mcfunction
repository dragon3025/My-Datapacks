data modify entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base set from entity @e[type=minecraft:horse, nbt={Tame:1b}, limit=1, sort=nearest, scores={c_horse_stat_sec=..60}] Attributes[{Name:"minecraft:generic.max_health"}].Base
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from entity @e[type=minecraft:horse, nbt={Tame:1b}, limit=1, sort=nearest, scores={c_horse_stat_sec=..60}] Attributes[{Name:"minecraft:generic.movement_speed"}].Base
data modify entity @s Attributes[{Name:"minecraft:horse.jump_strength"}].Base set from entity @e[type=minecraft:horse, nbt={Tame:1b}, limit=1, sort=nearest, scores={c_horse_stat_sec=..60}] Attributes[{Name:"minecraft:horse.jump_strength"}].Base

tellraw @p {"text": "Copied Horse Stats", "color": "yellow"}
