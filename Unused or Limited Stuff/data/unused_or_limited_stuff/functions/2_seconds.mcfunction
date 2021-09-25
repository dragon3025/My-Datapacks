schedule function unused_or_limited_stuff:2_seconds 2s

execute as @a[nbt={SelectedItem:{id:"minecraft:light"}}] at @s align xyz run function unused_or_limited_stuff:find_light_blocks/main_x
execute as @e[tag=light_block] at @s run particle light ~ ~ ~ 0.1 0.1 0.1 1 1
