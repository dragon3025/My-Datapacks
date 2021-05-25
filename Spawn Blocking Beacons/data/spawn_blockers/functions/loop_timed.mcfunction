#Create Despawner
execute as @a[scores={dspn_beacon_set=1..}] at @s run function spawn_blockers:try_to_create_despawner

#Create Despawn Blocker
execute as @a[scores={d_beac_blckr_set=1..}] at @s run function spawn_blockers:try_to_create_despawn_blocker

#Remove Despawner
execute as @a[scores={dspn_beacn_unset=1}] at @s run tellraw @s {"text": "As a saftey measure, use '/trigger dspn_beacn_unset set 2'", "color": "red"}
execute as @a[scores={dspn_beacn_unset=2}] at @s unless entity @e[tag=despawning_beacon, distance=..1, sort=nearest, limit=1] run tellraw @s {"text": "You must stand on a Despawning Beacon to remove it", "color": "red"}
execute as @a[scores={dspn_beacn_unset=2}] at @s run execute as @e[tag=despawning_beacon, distance=..1, sort=nearest, limit=1] run tellraw @p {"text": "Despawner Removed", "color": "red"}
execute as @a[scores={dspn_beacn_unset=2}] at @s run execute as @e[tag=despawning_beacon, distance=..1, sort=nearest, limit=1] run kill @s

#Remove Despawn Blocker
execute as @a[scores={d_bc_blckr_unset=1}] at @s run tellraw @s {"text": "As a saftey measure, use '/trigger d_bc_blckr_unset set 2'", "color": "red"}
execute as @a[scores={d_bc_blckr_unset=2}] at @s unless entity @e[tag=despawning_beacon_blocker, distance=..1] run tellraw @s {"text": "You must stand on a Despawning Beacon Blocker to remove it", "color": "red"}
execute as @a[scores={d_bc_blckr_unset=2}] at @s run execute as @e[tag=despawning_beacon_blocker, distance=..1, sort=nearest, limit=1] run tellraw @p {"text": "Despawn Blocker Removed", "color": "yellow"}
execute as @a[scores={d_bc_blckr_unset=2}] at @s run execute as @e[tag=despawning_beacon_blocker, distance=..1, sort=nearest, limit=1] run kill @s

#Make Raiders Safe From Despawn Beacons
execute as @e[type=#raiders] store result score @s raider_wave_num run data get entity @s Wave 1
tag @e[scores={raider_wave_num=1..}] add safe_from_dspwn_beacon

#Despawn Beaocn Blocker
execute as @e[tag=despawning_beacon_blocker] at @s positioned ~-8.5 ~-0.5 ~-8.5 run tag @e[type=#spawn_blockers:hostile,dx=16,dy=16,dz=16] add safe_from_dspwn_beacon
execute as @e[tag=despawning_beacon_blocker] run data merge entity @s {Duration:1000000000}
execute as @e[tag=despawning_beacon_blocker] at @s unless block ~ ~-1 ~ warped_wart_block run tellraw @p {"text": "Despawn Blocker Removed", "color": "yellow"}
execute as @e[tag=despawning_beacon_blocker] at @s unless block ~ ~-1 ~ warped_wart_block run kill @s

#Despawn Beacon
execute as @e[tag=despawning_beacon] at @s run function spawn_blockers:despawn_beacon

#Despawn Gui Toggle
execute as @a[scores={dspn_beac_gui=1}, tag=!despawn_beacon_gui] run tag @s add despawn_beacon_gui_on
execute as @a[scores={dspn_beac_gui=1}, tag=despawn_beacon_gui] run tag @s add despawn_beacon_gui_off
tag @a[tag=despawn_beacon_gui_on] add despawn_beacon_gui
tag @a[tag=despawn_beacon_gui_off] remove despawn_beacon_gui


#Detect Beacons
    #Give detection status message
execute as @a[scores={dspn_beac_detect=1}, tag=despawn_beacon_detected] run tellraw @s {"text": "You're within the range of a despawning beacon (now emitting beam for 10 seconds).", "color": "green"}
execute as @a[scores={dspn_beac_detect=1}, tag=!despawn_beacon_detected, tag=despawn_beacon_air_detected] run tellraw @s {"text": "You're above range of a despawning beacon (now emitting beam for 10 seconds).", "color": "yellow"}
execute as @a[scores={dspn_beac_detect=1}, tag=!despawn_beacon_detected, tag=!despawn_beacon_air_detected] run tellraw @s {"text": "You're not within the range of a despawning beacon.", "color": "red"}
    #Temporary Beam
execute as @a[scores={dspn_beac_detect=1}, tag=despawn_beacon_detected] at @s run scoreboard players set @e[tag=despawning_beacon, distance=..128] dspwn_beacn_beam 0
execute as @a[scores={dspn_beac_detect=1}, tag=despawn_beacon_detected] at @s run scoreboard players set @e[tag=despawning_beacon_blocker, distance=..128] dspwn_beacn_beam 0
execute as @a[scores={dspn_beac_detect=1}, tag=despawn_beacon_air_detected] at @s run scoreboard players set @e[tag=despawning_beacon, distance=..128] dspwn_beacn_beam 0
execute as @a[scores={dspn_beac_detect=1}, tag=despawn_beacon_air_detected] at @s run scoreboard players set @e[tag=despawning_beacon_blocker, distance=..128] dspwn_beacn_beam 0

#Remove tags
tag @a remove despawn_beacon_detected
tag @a remove despawn_beacon_air_detected
tag @a remove despawn_beacon_gui_on
tag @a remove despawn_beacon_gui_off

#Make mobs that spawned outside this range, safe.
tag @e[type=#spawn_blockers:hostile] add safe_from_dspwn_beacon

#Reset Trigger Scores
scoreboard players set @a dspn_beacn_unset 0
scoreboard players set @a dspn_beacon_set 0
scoreboard players set @a d_beac_blckr_set 0
scoreboard players set @a d_bc_blckr_unset 0
scoreboard players set @a dspn_beac_detect 0
scoreboard players set @a dspn_beac_gui 0
