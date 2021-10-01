schedule function spawn_blockers:5_ticks 5t

#Menu
execute as @a[scores={spawn_block_menu=1}] run function spawn_blockers:spawn_blocker_menu
scoreboard players set @a[scores={spawn_block_menu=2}] spwn_blcker_set 1
scoreboard players set @a[scores={spawn_block_menu=3}] anti_s_blckr_set 1
scoreboard players set @a[scores={spawn_block_menu=4}] spwn_blcker_find 40
scoreboard players set @a[scores={spawn_block_menu=5}] spwn_blckr_gui 1
scoreboard players enable @a spawn_block_menu

#Create Spawn Blocker
execute as @a[scores={spwn_blcker_set=1..}] at @s run function spawn_blockers:spawn_blocker/try_to_create
scoreboard players reset @a spwn_blcker_set

#Create Anti Spawn Blocker
execute as @a[scores={anti_s_blckr_set=1..}] at @s run function spawn_blockers:anti_spawn_blocker/try_to_create
scoreboard players reset @a anti_s_blckr_set

#Make Raiders Safe From Spawn Blocker
execute as @e[type=#raiders] store result score @s raider_wave_num run data get entity @s Wave 1
tag @e[scores={raider_wave_num=1..}] add safe_from_spawn_blocker

#Anti Spawn Blocker
execute as @e[tag=anti_spawn_blocker] at @s run function spawn_blockers:anti_spawn_blocker/main

#Spawn Blocker
execute as @e[tag=spawn_blocker] at @s run function spawn_blockers:spawn_blocker/main

#Despawn Gui Toggle
execute as @a[scores={spwn_blckr_gui=1}, tag=!spawn_blocker_gui] run tag @s add spawn_blocker_gui_on
execute as @a[scores={spwn_blckr_gui=1}, tag=spawn_blocker_gui] run tag @s add spawn_blocker_gui_off
tag @a[tag=spawn_blocker_gui_on] add spawn_blocker_gui
tag @a[tag=spawn_blocker_gui_off] remove spawn_blocker_gui
scoreboard players reset @a spwn_blckr_gui


#Detect Beacons
execute as @a[scores={spwn_blcker_find=40}, tag=spawn_blocker_detected] run tellraw @s {"text": "You're within the range of a Spawn Blocker (now emitting beam for 10 seconds).", "color": "green"}
execute as @a[scores={spwn_blcker_find=40}, tag=spawn_blocker_detected, tag=anti_spawn_blocker_detected] run tellraw @s {"text": "You're also within the range of a Anti Spawn Blocker.", "color": "red"}
execute as @a[scores={spwn_blcker_find=40}, tag=!spawn_blocker_detected] run tellraw @s {"text": "You're not within the range of a despawning beacon.", "color": "red"}
scoreboard players remove @a[scores={spwn_blcker_find=1..}] spwn_blcker_find 1
scoreboard players reset @a[scores={spwn_blcker_find=..0}] spwn_blcker_find

#Remove tags
tag @a remove anti_spawn_blocker_detected
tag @a remove spawn_blocker_detected
tag @a remove spawn_blocker_gui_on
tag @a remove spawn_blocker_gui_off

#Make mobs that spawned outside this range, safe.
tag @e[type=#spawn_blockers:hostile] add safe_from_spawn_blocker
