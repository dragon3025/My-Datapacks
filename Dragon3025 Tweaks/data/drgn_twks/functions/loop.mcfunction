execute if score timer dragon3025_timer_tick matches 0 run function drgn_twks:loop_seconds

# Rabbits are immune to fall damage.
execute if score admin dt_rabt_imun_fdm matches 1.. as @e[type=rabbit] run data merge entity @s {FallDistance:0f}

# Bells Help Find Raid Joinable Mobs (vanilla bells will find Raid Joinable Mobs, not just Raiders)
execute if score admin dt_raider_finder matches 1.. as @e[nbt={CanJoinRaid:1b, ActiveEffects:[{Id:24b}]}] at @s run particle dust 1 0 0 1 ~ ~128 ~ 0.1 32 0.1 1 400 force

execute if score admin dt_raider_finder matches 1.. as @e[tag=ray] at @s if entity @e[nbt={CanJoinRaid:1b, ActiveEffects:[{Id:24b}]}] facing entity @e[nbt={CanJoinRaid:1b, ActiveEffects:[{Id:24b}]},limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.5
execute if score admin dt_raider_finder matches 1.. as @e[tag=ray] at @s run particle dust 1 0 0 1 ~ ~ ~ 0.1 0.1 0.1 1 10 force
execute if score admin dt_raider_finder matches 1.. as @e[tag=ray] at @s unless entity @p[distance=..64] run kill @s
