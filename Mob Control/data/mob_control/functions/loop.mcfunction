scoreboard players add dummy mob_control_tick 1
execute if score dummy mob_control_tick matches 20.. run function mob_control:loop_seconds
execute if score dummy mob_control_tick matches 20.. run scoreboard players set dummy mob_control_tick 0

# Enable Trigger Objectives
execute if score admin mob_ctrl_copy_ho matches 1.. run scoreboard players enable @a copy_horse_stats

# Despawn reinforcements that break normal spawning rules
execute as @e[type=zombie,tag=!reinforcement_safe] at @s if entity @p[distance=..128, gamemode=!survival] run tag @s add reinforcement_safe
execute if score admin mob_ctrl_zomb_re matches 1.. as @e[type=zombie,tag=!reinforcement_safe] at @s run function mob_control:reinforcement_check
