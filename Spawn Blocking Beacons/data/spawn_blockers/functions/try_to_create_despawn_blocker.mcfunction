#Create Win/Fail Tags
execute if block ~ ~-1 ~ warped_wart_block run tag @s add dspn_beacon_blocker_blocks_pass
execute if entity @e[tag=despawning_beacon_blocker, distance=..1] run tag @s add dspn_beacon_blocker_already_there
#Give fail messages
execute as @s[tag=!dspn_beacon_blocker_blocks_pass] run tellraw @s {"text": "Failed: you must use this command while standing on a Warped Wart Block.", "color": "red"}
execute as @s[tag=dspn_beacon_blocker_blocks_pass, tag=dspn_beacon_blocker_already_there] run tellraw @s {"text": "Failed: this beacon already despawns.", "color": "red"}
#If win, then create despawner
execute as @s[tag=!dspn_beacon_blocker_already_there, tag=dspn_beacon_blocker_blocks_pass] run tellraw @p {"text": "Despawn Blocker set", "color": "yellow"}
execute as @s[tag=!dspn_beacon_blocker_already_there, tag=dspn_beacon_blocker_blocks_pass] at @s align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Duration:1000000000, Invulnerable:true, Tags:[despawning_beacon_blocker]}
#Remove Win/Fail Tags
tag @a remove dspn_beacon_blocker_already_there
tag @a remove dspn_beacon_blocker_blocks_pass
