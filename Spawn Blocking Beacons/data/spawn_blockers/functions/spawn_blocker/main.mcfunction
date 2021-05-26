#Remove Spawn Blocker if Beacon Removed
execute unless block ~ ~-1 ~ beacon run tag @s add spawn_blocker_block_removed
execute as @s[tag=spawn_blocker_block_removed] run tellraw @p {"text": "Spawn Blocker Removed", "color": "red"}
execute as @s[tag=spawn_blocker_block_removed] run summon item ~ ~ ~ {Item:{id:"netherite_ingot", Count:1}}
execute as @s[tag=spawn_blocker_block_removed] run kill @s

#Keep Area Effect Cloud Alive
execute run data merge entity @s {Duration:1000000000}

#Despawn Mobs
    #General Hostile
execute positioned ~-50.5 ~-50.5 ~-50.5 as @e[type=#spawn_blockers:hostile, tag=!safe_from_spawn_blocker, dx=100, dy=384, dz=100] at @s if entity @s[y=-64, dy=384] run playsound entity.player.hurt hostile @a ~ ~ ~
execute positioned ~-50.5 ~-50.5 ~-50.5 as @e[type=#spawn_blockers:hostile, tag=!safe_from_spawn_blocker, dx=100, dy=384, dz=100] at @s if entity @s[y=-64, dy=384] run tp @s ~ -256 ~

#Figure if beacon detected
execute positioned ~-50.5 ~-50.5 ~-50.5 run tag @a[scores={spwn_blcker_find=40}, dx=100, dy=384, dz=100] add spawn_blocker_detected

execute if entity @a[scores={spwn_blcker_find=1..}] run particle dust 1 1 1 20 ~ ~ ~ 0.1 384 0.1 1 25 force
execute if entity @a[scores={spwn_blcker_find=1..}] run particle dust 0.5 1 1 20 ~ ~ ~ 0.1 384 0.1 1 25 force
execute if entity @a[scores={spwn_blcker_find=1..}] positioned ~-50.5 ~-50.5 ~-50.5 run function spawn_blockers:spawn_blocker/visual_box
