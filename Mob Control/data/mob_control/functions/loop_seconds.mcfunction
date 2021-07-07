# Make it easier to find Skeleton Traps
execute if score admin mob_ctrl_ske_trp matches 1.. as @e[type=minecraft:skeleton_horse, nbt={SkeletonTrap: true}] at @s run data merge entity @s {SkeletonTrapTime: 1}

# Send repelled mobs to the void
execute as @e[tag=repel_mob] at @s run tp @s ~ -80 ~

# Copy Horse stats to a Skeleton or Zombie Horse
execute as @a[scores={copy_horse_stats=1..}] at @s run execute as @e[type=minecraft:skeleton_horse,distance=..1,limit=1,sort=nearest] at @s if entity @e[type=horse,nbt={Tame:1b},distance=..8] run function mob_control:copy_horse_stats
execute as @a[scores={copy_horse_stats=1..}] at @s run execute as @e[type=minecraft:zombie_horse,distance=..1,limit=1,sort=nearest] at @s if entity @e[type=horse,nbt={Tame:1b},distance=..8] run function mob_control:copy_horse_stats
scoreboard players set @a[scores={copy_horse_stats=1..}] copy_horse_stats 0

# Curing Zombie Villagers is much faster now
execute as @e[type=zombie_villager] store result score @s z_vill_conv_time run data get entity @s ConversionTime
execute as @e[scores={z_vill_conv_time=2..}] run data merge entity @s {ConversionTime:1}
