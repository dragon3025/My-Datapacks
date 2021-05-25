scoreboard players add dummy spwn_blcker_tick 1

execute if score dummy spwn_blcker_tick matches 5.. run function spawn_blockers:loop_timed
execute if score dummy spwn_blcker_tick matches 5.. run scoreboard players set dummy spwn_blcker_tick 0

execute as @e[scores={spwn_blcker_beam=0..},tag=!anti_spawn_blocker] at @s run particle dust 1 1 1 20 ~ ~ ~ 0.1 384 0.1 1 25 force
execute as @e[scores={spwn_blcker_beam=0..},tag=!anti_spawn_blocker] at @s run particle dust 0.5 1 1 20 ~ ~ ~ 0.1 384 0.1 1 25 force

execute as @e[scores={spwn_blcker_beam=0..},tag=anti_spawn_blocker] at @s run particle dust 1 0 0 20 ~ ~ ~ 0.1 384 0.1 1 50 force

scoreboard players add @e[scores={spwn_blcker_beam=0..}] spwn_blcker_beam 1
scoreboard players reset @e[scores={spwn_blcker_beam=200..}] spwn_blcker_beam

# Enable Trigger Objectives
scoreboard players enable @a spawn_block_menu

# Despawn Gui
execute as @e[tag=spawn_blocker] at @s positioned ~-50.5 ~-50.5 ~-50.5 run tag @a[tag=spawn_blocker_gui, dx=100, dy=384, dz=100] add spawn_blocker_gui_true
execute as @e[tag=anti_spawn_blocker] at @s positioned ~-8.5 ~-0.5 ~-8.5 run tag @a[tag=spawn_blocker_gui, dx=16, dy=16, dz=16] add anti_spawn_blocker_gui_true
title @a[tag=spawn_blocker_gui, tag=spawn_blocker_gui_true, tag=anti_spawn_blocker_gui_true] actionbar {"text": "In spawn blocking range, but inside anti spawn blocking range", "color": "red"}
title @a[tag=spawn_blocker_gui, tag=spawn_blocker_gui_true, tag=!anti_spawn_blocker_gui_true] actionbar {"text": "In spawn blocking range", "color": "green"}
title @a[tag=spawn_blocker_gui, tag=!spawn_blocker_gui_true] actionbar {"text": "Out of despawn range", "color": "red"}

tag @a remove spawn_blocker_gui_true
tag @a remove anti_spawn_blocker_gui_true
