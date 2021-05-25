#Remove Despawner if Beacon Removed
execute unless block ~ ~-1 ~ beacon run tag @s add dspn_beac_block_removed
execute unless block ~ ~-2 ~ coal_block run tag @s add dspn_beac_block_removed
execute as @s[tag=dspn_beac_block_removed] run tellraw @p {"text": "Despawner Removed", "color": "red"}
execute as @s[tag=dspn_beac_block_removed] run kill @s
execute run data merge entity @s {Duration:1000000000}

#Despawn Mobs
    #General Hostile
execute positioned ~-50.5 ~-0.5 ~-50.5 as @e[type=#spawn_blockers:hostile, tag=!safe_from_dspwn_beacon, dx=100, dy=20, dz=100] at @s if entity @s[y=-64, dy=384] run playsound entity.player.hurt hostile @a ~ ~ ~
execute positioned ~-50.5 ~-0.5 ~-50.5 as @e[type=#spawn_blockers:hostile, tag=!safe_from_dspwn_beacon, dx=100, dy=20, dz=100] at @s if entity @s[y=-64, dy=384] run tp @s ~ -256 ~
    #Airborn
execute positioned ~-50.5 ~-0.5 ~-50.5 as @e[type=#spawn_blockers:hostile_airborn, tag=!safe_from_dspwn_beacon, dx=100, dy=384, dz=100] at @s if entity @s[y=-64, dy=384] run playsound entity.player.hurt hostile @a ~ ~ ~
execute positioned ~-50.5 ~-0.5 ~-50.5 as @e[type=#spawn_blockers:hostile_airborn, tag=!safe_from_dspwn_beacon, dx=100, dy=384, dz=100] at @s if entity @s[y=-64, dy=384] run tp @s ~ -256 ~

#Figure if beacon detected
execute positioned ~-50.5 ~-0.5 ~-50.5 run tag @a[scores={dspn_beac_detect=1}, dx=100, dy=20, dz=100] add despawn_beacon_detected
execute positioned ~-50.5 ~-0.5 ~-50.5 run tag @a[scores={dspn_beac_detect=1}, dx=100, dy=384, dz=100] add despawn_beacon_air_detected
