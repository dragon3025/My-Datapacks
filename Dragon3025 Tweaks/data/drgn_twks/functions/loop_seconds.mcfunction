# Melt large areas of obsidian
execute if score admin dt_melt_obsidian matches 1.. as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:blaze_powder", tag:{display:{Name:'{"text":"melt_obsidian"}'}}}}, predicate=!drgn_twks:location/the_end_center] at @s run fill ^-7 ^-7 ^-1 ^7 ^7 ^-15 minecraft:lava replace minecraft:obsidian
execute if score admin dt_melt_obsidian matches 1.. as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:blaze_powder", tag:{display:{Name:'{"text":"melt_obsidian"}'}}}}, predicate=!drgn_twks:location/the_end_center] run kill @s

# Melt large areas of snow
execute if score admin dt_melt_snow matches 1.. as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:blaze_powder", tag:{display:{Name:'{"text":"melt_snow"}'}}}}] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 minecraft:air replace minecraft:snow
execute if score admin dt_melt_snow matches 1.. as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:blaze_powder", tag:{display:{Name:'{"text":"melt_snow"}'}}}}] run kill @s

# Dry Farmland
execute if score admin dt_dry_farmland matches 1.. as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:blaze_powder", tag:{display:{Name:'{"text":"dry_farmland"}'}}}}] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 minecraft:dirt replace minecraft:farmland
execute if score admin dt_dry_farmland matches 1.. as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:blaze_powder", tag:{display:{Name:'{"text":"dry_farmland"}'}}}}] run kill @s

# Enderman End Loot Change (Disabled by default)
execute if score admin dt_emancity_loot matches 1.. if score admin dt_eman_de_loot matches 1.. as @a[predicate=drgn_twks:gained_elytra_advancement] at @s run execute as @e[type=enderman, tag=!ender_loot_changed,limit=1, sort=nearest] run data merge entity @s {DeathLootTable:"drgn_twks:enderman_de_and_end_city_gear"}
execute if score admin dt_emancity_loot matches 1.. if score admin dt_eman_de_loot matches 1.. as @a[predicate=drgn_twks:gained_elytra_advancement] at @s run execute as @e[type=enderman, tag=!ender_loot_changed,limit=1, sort=nearest] run tag @s add ender_loot_changed

execute if score admin dt_emancity_loot matches 1.. if score admin dt_eman_de_loot matches ..0 as @a[predicate=drgn_twks:gained_elytra_advancement] at @s run execute as @e[type=enderman, tag=!ender_loot_changed,limit=1, sort=nearest] run data merge entity @s {DeathLootTable:"drgn_twks:enderman_end_city_gear"}
execute if score admin dt_emancity_loot matches 1.. if score admin dt_eman_de_loot matches ..0 as @a[predicate=drgn_twks:gained_elytra_advancement] at @s run execute as @e[type=enderman, tag=!ender_loot_changed,limit=1, sort=nearest] run tag @s add ender_loot_changed

execute if score admin dt_emancity_loot matches ..0 if score admin dt_eman_de_loot matches 1.. as @a[predicate=drgn_twks:gained_elytra_advancement] at @s run execute as @e[type=enderman, tag=!ender_loot_changed,limit=1, sort=nearest] run data merge entity @s {DeathLootTable:"drgn_twks:enderman_dragon_egg"}
execute if score admin dt_emancity_loot matches ..0 if score admin dt_eman_de_loot matches 1.. as @a[predicate=drgn_twks:gained_elytra_advancement] at @s run execute as @e[type=enderman, tag=!ender_loot_changed,limit=1, sort=nearest] run tag @s add ender_loot_changed

# Bells Help Find Raids
execute if score admin dt_raider_finder matches 1.. as @a at @s if block ~ ~-1 ~ bell run effect give @e[nbt={CanJoinRaid:1b}, limit=1, sort=nearest] minecraft:glowing 1
execute if score admin dt_raider_finder matches 1.. as @a at @s if block ~ ~ ~ bell run effect give @e[nbt={CanJoinRaid:1b}, limit=1, sort=nearest] minecraft:glowing 1
execute if score admin dt_raider_finder matches 1.. as @a at @s if block ~ ~1 ~ bell run effect give @e[nbt={CanJoinRaid:1b}, limit=1, sort=nearest] minecraft:glowing 1
execute if score admin dt_raider_finder matches 1.. as @a at @s if block ~ ~2 ~ bell run effect give @e[nbt={CanJoinRaid:1b}, limit=1, sort=nearest] minecraft:glowing 1
execute if score admin dt_raider_finder matches 1.. as @a at @s if block ~1 ~ ~ bell run effect give @e[nbt={CanJoinRaid:1b}, limit=1, sort=nearest] minecraft:glowing 1
execute if score admin dt_raider_finder matches 1.. as @a at @s if block ~-1 ~ ~ bell run effect give @e[nbt={CanJoinRaid:1b}, limit=1, sort=nearest] minecraft:glowing 1
execute if score admin dt_raider_finder matches 1.. as @a at @s if block ~ ~ ~1 bell run effect give @e[nbt={CanJoinRaid:1b}, limit=1, sort=nearest] minecraft:glowing 1
execute if score admin dt_raider_finder matches 1.. as @a at @s if block ~ ~ ~-1 bell run effect give @e[nbt={CanJoinRaid:1b}, limit=1, sort=nearest] minecraft:glowing 1

execute if score admin dt_raider_finder matches 1.. as @a at @s if entity @e[nbt={CanJoinRaid:1b, ActiveEffects:[{Id:24b}]}, distance=..128] run summon area_effect_cloud ~ ~1 ~ {Duration:40,Tags:["ray"]}
