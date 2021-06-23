# Light Level Overlay
execute as @a[scores={light_lv_toggle=1..}] at @s align xyz run function light_lv:light_level_display/toggle_display
scoreboard players set @a light_lv_toggle 0

execute as @a[tag=display_light_lv] at @s align xyz run function light_lv:light_level_display/main_x

execute as @e[tag=light_lv] at @s run function light_lv:light_level_display/marker

#Spawn Blocker Compatiblity
execute as @e[tag=anti_spawn_blocker] at @s positioned ~-8.5 ~-0.5 ~-8.5 run tag @e[tag=light_lv, dx=16, dy=16, dz=16] add safe_from_spawn_blocker
execute as @e[tag=spawn_blocker] at @s positioned ~-50.5 ~-50.5 ~-50.5 as @e[tag=light_lv, tag=!safe_from_spawn_blocker, dx=100, dy=384, dz=100] run kill @s
tag @e[tag=light_lv, tag=safe_from_spawn_blocker] remove safe_from_spawn_blocker
