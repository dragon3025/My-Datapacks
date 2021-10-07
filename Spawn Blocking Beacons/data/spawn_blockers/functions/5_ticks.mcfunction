schedule function spawn_blockers:5_ticks 5t

#Menu
execute as @a[scores={spawn_blocker_menu=1}] run function spawn_blockers:spawn_blocker_menu
scoreboard players set @a[scores={spawn_blocker_menu=2}] spawn_blocker_set 1
scoreboard players set @a[scores={spawn_blocker_menu=3}] anti_spawn_blocker_set 1
scoreboard players set @a[scores={spawn_blocker_menu=4}] spawn_blocker_detect 40
scoreboard players set @a[scores={spawn_blocker_menu=5}] spawn_blocker_gui 1
scoreboard players enable @a spawn_blocker_menu

#Create Spawn Blocker
execute as @a[scores={spawn_blocker_set=1..}] at @s run function spawn_blockers:spawn_blocker/try_to_create
scoreboard players reset @a spawn_blocker_set

#Create Anti Spawn Blocker
execute as @a[scores={anti_spawn_blocker_set=1..}] at @s run function spawn_blockers:anti_spawn_blocker/try_to_create
scoreboard players reset @a anti_spawn_blocker_set

#Make Raiders Safe From Spawn Blocker
execute as @e[type=#raiders] store result score @s raider_wave_number run data get entity @s Wave 1
tag @e[scores={raider_wave_number=1..}] add safe_from_spawn_blocker

#Anti Spawn Blocker
execute as @e[tag=anti_spawn_blocker] at @s run function spawn_blockers:anti_spawn_blocker/main

#Spawn Blocker
execute as @e[tag=spawn_blocker] at @s run function spawn_blockers:spawn_blocker/main

#Despawn Gui Toggle
execute as @a[scores={spawn_blocker_gui=1}, tag=!spawn_blocker_gui] run tag @s add spawn_blocker_gui_on
execute as @a[scores={spawn_blocker_gui=1}, tag=spawn_blocker_gui] run tag @s add spawn_blocker_gui_off
tag @a[tag=spawn_blocker_gui_on] add spawn_blocker_gui
tag @a[tag=spawn_blocker_gui_off] remove spawn_blocker_gui
scoreboard players reset @a spawn_blocker_gui


#Detect Beacons
execute as @a[scores={spawn_blocker_detect=40}, tag=spawn_blocker_detected] run tellraw @s {"text": "You're within the range of a Spawn Blocker (now emitting beam for 10 seconds).", "color": "green"}
execute as @a[scores={spawn_blocker_detect=40}, tag=spawn_blocker_detected, tag=anti_spawn_blocker_detected] run tellraw @s {"text": "You're also within the range of a Anti Spawn Blocker.", "color": "red"}
execute as @a[scores={spawn_blocker_detect=40}, tag=!spawn_blocker_detected] run tellraw @s {"text": "You're not within the range of a despawning beacon.", "color": "red"}
scoreboard players remove @a[scores={spawn_blocker_detect=1..}] spawn_blocker_detect 1
scoreboard players reset @a[scores={spawn_blocker_detect=..0}] spawn_blocker_detect

#Remove tags
tag @a remove anti_spawn_blocker_detected
tag @a remove spawn_blocker_detected
tag @a remove spawn_blocker_gui_on
tag @a remove spawn_blocker_gui_off

#Make mobs that spawned outside this range, safe.
tag @e[type=#spawn_blockers:hostile] add safe_from_spawn_blocker
