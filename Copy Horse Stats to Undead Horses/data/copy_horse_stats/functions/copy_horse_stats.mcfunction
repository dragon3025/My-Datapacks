data modify entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base set from entity @e[type=minecraft:horse, nbt={Tame:1b}, limit=1, sort=nearest, scores={copy_horse_stats_timer=..60}] Attributes[{Name:"minecraft:generic.max_health"}].Base
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from entity @e[type=minecraft:horse, nbt={Tame:1b}, limit=1, sort=nearest, scores={copy_horse_stats_timer=..60}] Attributes[{Name:"minecraft:generic.movement_speed"}].Base
data modify entity @s Attributes[{Name:"minecraft:horse.jump_strength"}].Base set from entity @e[type=minecraft:horse, nbt={Tame:1b}, limit=1, sort=nearest, scores={copy_horse_stats_timer=..60}] Attributes[{Name:"minecraft:horse.jump_strength"}].Base

tellraw @p {"text": "Copied Horse Stats", "color": "yellow"}
