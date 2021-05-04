# Second Timer
scoreboard players add dummy dragon3025_tick 1
execute if score dummy dragon3025_tick matches 20.. run function drgn_twks:loop_seconds
execute if score dummy dragon3025_tick matches 20.. run scoreboard players set dummy dragon3025_tick 0

# Water Buckets in Item Frames will refil cauldrons 2 blocks in front of them.
execute if score admin dt_wbifr_caldron matches 1.. as @e[type=item_frame,nbt={Item:{id:"minecraft:water_bucket"}}] at @s run function drgn_twks:refill_cauldron

# Rabbits are immune to fall damage.
execute if score admin dt_rabt_imun_fdm matches 1.. as @e[type=rabbit] run data merge entity @s {FallDistance:0f}

# TNT breaks bedrock (except for above and y=1)
execute if score admin dt_tnt_break_br matches 1.. as @e[type=tnt,nbt={Fuse:1s}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace bedrock
execute if score admin dt_tnt_break_br matches 1.. as @e[type=tnt,nbt={Fuse:1s}] at @s if entity @s[y=2, dy=252] run fill ~ ~-1 ~ ~ ~-1 ~ air replace bedrock

# Bells Help Find Raids
execute if score admin dt_raider_finder matches 1.. as @e[nbt={CanJoinRaid:1b, ActiveEffects:[{Id:24b}]}] at @s run particle dust 1 0 0 1 ~ ~128 ~ 0.1 32 0.1 1 400 force

execute if score admin dt_raider_finder matches 1.. as @e[tag=ray] at @s if entity @e[nbt={CanJoinRaid:1b, ActiveEffects:[{Id:24b}]}] facing entity @e[nbt={CanJoinRaid:1b, ActiveEffects:[{Id:24b}]},limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.5
execute if score admin dt_raider_finder matches 1.. as @e[tag=ray] at @s run particle dust 1 0 0 1 ~ ~ ~ 0.1 0.1 0.1 1 10 force
execute if score admin dt_raider_finder matches 1.. as @e[tag=ray] at @s unless entity @p[distance=..64] run kill @s
