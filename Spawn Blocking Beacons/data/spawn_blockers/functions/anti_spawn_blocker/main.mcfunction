execute positioned ~-8.5 ~-0.5 ~-8.5 run tag @e[type=#spawn_blockers:hostile, dx=16, dy=16, dz=16] add safe_from_spawn_blocker
data merge entity @s {Duration:1000000000}
execute unless block ~ ~ ~ #spawn_blockers:air_or_water run tellraw @p {"text": "Anti Spawn Blocker Removed", "color": "yellow"}
execute unless block ~ ~ ~ #spawn_blockers:air_or_water run kill @s

execute positioned ~-8.5 ~-0.5 ~-8.5 run tag @a[scores={spwn_blcker_find=40}, dx=16, dy=16, dz=16] add anti_spawn_blocker_detected

execute if entity @a[scores={spwn_blcker_find=1..}] run particle dust 1 0 0 20 ~ ~ ~ 0.1 384 0.1 1 50 force
execute if entity @a[scores={spwn_blcker_find=1..}] run particle dust 0 0 0 20 ~ ~ ~ 0.1 0.1 0.1 1 2 force
