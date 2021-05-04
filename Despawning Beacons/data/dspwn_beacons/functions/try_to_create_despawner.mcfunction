#Create Win/Fail Tags
execute if block ~ ~-1 ~ beacon if block ~ ~-2 ~ coal_block run tag @s add dspn_beacon_blocks_pass
execute positioned ~-50.5 ~-0.5 ~-50.5 if entity @e[type=#dspwn_beacons:hostile, type=!zombified_piglin, dx=100, dy=20, dz=100, nbt=!{PersistenceRequired:1b}] run tag @s add dspn_beacon_mob_in_range
execute if entity @e[tag=despawning_beacon, distance=..1] run tag @s add dspn_beacon_already_there
#Give fail messages
execute as @s[tag=!dspn_beacon_blocks_pass] run tellraw @s {"text": "Failed: you must use this command while standing on a beacon with a block of coal under it.", "color": "red"}
execute as @s[tag=dspn_beacon_blocks_pass, tag=dspn_beacon_mob_in_range] run tellraw @s {"text": "Failed: there's a nameless hostile mob in the range.", "color": "red"}
execute as @s[tag=dspn_beacon_blocks_pass, tag=dspn_beacon_already_there] run tellraw @s {"text": "Failed: this beacon already despawns.", "color": "red"}
#If win, then create despawner
execute as @s[tag=!dspn_beacon_mob_in_range, tag=!dspn_beacon_already_there, tag=dspn_beacon_blocks_pass] run tellraw @p {"text": "Despawner set", "color": "yellow"}
execute as @s[tag=!dspn_beacon_mob_in_range, tag=!dspn_beacon_already_there, tag=dspn_beacon_blocks_pass] at @s align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Duration:1000000000, Invulnerable:true, Tags:[despawning_beacon]}
#Give Nearest Preventing Hostile Glowing
execute as @s[tag=dspn_beacon_mob_in_range,tag=dspn_beacon_blocks_pass] positioned ~-50.5 ~-0.5 ~-50.5 run tag @e[type=#dspwn_beacons:hostile, type=!zombified_piglin, dx=100, dy=20, dz=100, nbt=!{PersistenceRequired:1b}, limit=1, sort=nearest] add dspn_beacon_blocking_mob
execute as @s[tag=dspn_beacon_mob_in_range,tag=dspn_beacon_blocks_pass] run effect give @e[tag=dspn_beacon_blocking_mob] glowing 10
execute as @s[tag=dspn_beacon_mob_in_range,tag=dspn_beacon_blocks_pass] facing entity @e[tag=dspn_beacon_blocking_mob, limit=1, sort=nearest] eyes run tp @s ~ ~ ~ ~ ~
#Remove Win/Fail Tags
tag @a remove dspn_beacon_mob_in_range
tag @a remove dspn_beacon_already_there
tag @a remove dspn_beacon_blocks_pass
