# Light Level Overlay
execute as @a[scores={light_lv_toggle=1..}] at @s align xyz run function light_lv:light_level_display/toggle_display
scoreboard players set @a light_lv_toggle 0

#THE BOTTOM IS TEMPORARILY ALTERED, FOR DEBUGGING

# execute as @a[tag=display_light_lv] at @s align xyz run function light_lv:light_level_display/main_x
# execute as @a[tag=display_light_lv] at @s align xyz run execute positioned ~3 ~ ~ run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Duration:2, Tags:["light_lv"]}
# execute as @a[tag=display_light_lv] at @s align xyz run execute positioned ~3 ~1 ~ run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Duration:2, Tags:["light_lv"]}
execute as @a[tag=display_light_lv] at @s align xyz run execute positioned ~3 ~2 ~ run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Duration:2, Tags:["light_lv"]}

execute as @e[tag=light_lv] at @s run function light_lv:light_level_display/marker
