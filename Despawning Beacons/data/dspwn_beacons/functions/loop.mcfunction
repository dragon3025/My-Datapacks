scoreboard players add dummy dspwn_beacn_tick 1

execute if score dummy dspwn_beacn_tick matches 5.. run function dspwn_beacons:loop_timed
execute if score dummy dspwn_beacn_tick matches 5.. run scoreboard players set dummy dspwn_beacn_tick 0

execute as @e[scores={dspwn_beacn_beam=0..},tag=!despawning_beacon_blocker] at @s run particle dust 1 1 1 20 ~ ~ ~ 0.1 384 0.1 1 25 force
execute as @e[scores={dspwn_beacn_beam=0..},tag=!despawning_beacon_blocker] at @s run particle dust 0.5 1 1 20 ~ ~ ~ 0.1 384 0.1 1 25 force

execute as @e[scores={dspwn_beacn_beam=0..},tag=despawning_beacon_blocker] at @s run particle dust 1 0 0 20 ~ ~ ~ 0.1 384 0.1 1 50 force

scoreboard players add @e[scores={dspwn_beacn_beam=0..}] dspwn_beacn_beam 1
scoreboard players reset @e[scores={dspwn_beacn_beam=200..}] dspwn_beacn_beam

# Enable Trigger Objectives
scoreboard players enable @a dspn_beacon_set
scoreboard players enable @a dspn_beacn_unset
scoreboard players enable @a d_beac_blckr_set
scoreboard players enable @a d_bc_blckr_unset
scoreboard players enable @a dspn_beac_detect
scoreboard players enable @a dspn_beac_gui

# Despawn Gui
execute as @e[tag=despawning_beacon] at @s positioned ~-50.5 ~-0.5 ~-50.5 run tag @a[tag=despawn_beacon_gui, dx=100, dy=20, dz=100] add despawn_beacon_gui_true
execute as @e[tag=despawning_beacon_blocker] at @s positioned ~-8.5 ~-0.5 ~-8.5 run tag @a[tag=despawn_beacon_gui, dx=16, dy=16, dz=16] add despawn_beacon_blocker_gui_true
title @a[tag=despawn_beacon_gui, tag=despawn_beacon_gui_true, tag=despawn_beacon_blocker_gui_true] actionbar {"text": "In despawn range, but blocked", "color": "red"}
title @a[tag=despawn_beacon_gui, tag=despawn_beacon_gui_true, tag=!despawn_beacon_blocker_gui_true] actionbar {"text": "In despawn range", "color": "green"}
title @a[tag=despawn_beacon_gui, tag=!despawn_beacon_gui_true] actionbar {"text": "Out of despawn range", "color": "red"}

tag @a remove despawn_beacon_gui_true
tag @a remove despawn_beacon_blocker_gui_true
