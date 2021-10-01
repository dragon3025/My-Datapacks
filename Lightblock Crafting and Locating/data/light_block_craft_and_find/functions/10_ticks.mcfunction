schedule function light_block_craft_and_find:10_ticks 10t

execute as @a[gamemode=!creative, nbt={SelectedItem:{id:"minecraft:light"}}] at @s positioned ^ ^ ^8 align xyz run function light_block_craft_and_find:find_light_blocks/main_x
execute as @e[tag=light_block] at @s run particle light ~ ~ ~ 0.1 0.1 0.1 1 1
