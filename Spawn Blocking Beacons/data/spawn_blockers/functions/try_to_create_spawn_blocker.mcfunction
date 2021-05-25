#Create Win/Fail Tags
execute if block ~ ~-1 ~ beacon run tag @s add spawn_blocker_blocks_pass
execute if entity @s[nbt={Inventory:[{id:"minecraft:netherite_ingot"}]}] run tag @s add spawn_blocker_items_pass
execute if entity @e[tag=spawn_blocker, distance=..1] run tag @s add spawn_blocker_already_there
#Give fail messages
execute as @s[tag=!spawn_blocker_blocks_pass] run tellraw @s {"text": "Failed: you must use this command while standing on a beacon.", "color": "red"}
execute as @s[tag=spawn_blocker_blocks_pass, tag=spawn_blocker_already_there] run tellraw @s {"text": "Failed: This beacon already despawns.", "color": "red"}
execute as @s[tag=spawn_blocker_blocks_pass, tag=!spawn_blocker_already_there, tag=spawn_blocker_items_pass] run tellraw @s {"text": "Failed: Using this command cost 1 Netherite Ingot.", "color": "red"}
#If win, then create despawner
execute as @s[tag=!spawn_blocker_already_there, tag=spawn_blocker_blocks_pass, tag=spawn_blocker_items_pass] run tellraw @p {"text": "Despawner set", "color": "yellow"}
execute as @s[tag=!spawn_blocker_already_there, tag=spawn_blocker_blocks_pass, tag=spawn_blocker_items_pass] run clear @s netherite_ingot 1
execute as @s[tag=!spawn_blocker_already_there, tag=spawn_blocker_blocks_pass, tag=spawn_blocker_items_pass] at @s align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Duration:1000000000, Invulnerable:true, Tags:[spawn_blocker]}

#Remove Win/Fail Tags
tag @a remove spawn_blocker_already_there
tag @a remove spawn_blocker_blocks_pass
