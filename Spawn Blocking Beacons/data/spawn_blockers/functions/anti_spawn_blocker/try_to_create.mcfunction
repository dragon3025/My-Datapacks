#Create Win/Fail Tags
execute if block ~ ~ ~ air run tag @s add anti_spawn_blocker_block_pass
execute if block ~ ~ ~ cave_air run tag @s add anti_spawn_blocker_block_pass
execute if block ~ ~ ~ water run tag @s add anti_spawn_blocker_block_pass
execute if entity @e[tag=anti_spawn_blocker, distance=..1] run tag @s add anti_spawn_blocker_already_there
#Give fail messages
execute as @s[tag=!anti_spawn_blocker_block_pass] run tellraw @s {"text": "Failed: You're feet must be in an air or water block.", "color": "red"}
execute as @s[tag=anti_spawn_blocker_block_pass, tag=anti_spawn_blocker_already_there] run tellraw @s {"text": "Failed: There's already Anti Spawn Blocker here.", "color": "red"}
#If win, then create despawner
execute as @s[tag=anti_spawn_blocker_block_pass, tag=!anti_spawn_blocker_already_there] run tellraw @p {"text": "Anti Spawn Blocker set", "color": "yellow"}
execute as @s[tag=anti_spawn_blocker_block_pass, tag=!anti_spawn_blocker_already_there] at @s align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Duration:1000000000, Invulnerable:true, Tags:[anti_spawn_blocker]}
#Remove Win/Fail Tags
tag @a remove anti_spawn_blocker_block_pass
tag @a remove anti_spawn_blocker_already_there
