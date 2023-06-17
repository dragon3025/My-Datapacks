schedule function light_block_craft_and_find:10_ticks 10t

tag @a[gamemode=!creative, nbt={SelectedItem:{id:"minecraft:light"}}] add find_light_blocks
tag @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:light"}]}] add find_light_blocks
execute as @a[tag=find_light_blocks] at @s positioned ^ ^ ^8 align xyz positioned ~0.5 ~0.5 ~0.5 run function light_block_craft_and_find:find_light_blocks/main_x
tag @a remove find_light_blocks
