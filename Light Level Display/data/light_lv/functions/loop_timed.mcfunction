# Light Level Overlay
execute as @a[scores={light_lv_toggle=1..}] at @s align xyz run function light_lv:light_level_display/toggle_display
scoreboard players set @a light_lv_toggle 0

execute as @a[tag=display_light_lv] at @s align xyz run function light_lv:light_level_display/main_x

execute as @e[tag=light_lv] at @s run function light_lv:light_level_display/marker
