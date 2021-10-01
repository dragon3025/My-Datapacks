schedule function copy_horse_stats:second 1s

# As soon as a horse is tamed, you have 1 minute to copy its stats
execute as @e[type=horse, nbt={Tame:true}] unless entity @s[scores={c_horse_stat_sec=61..}] run scoreboard players add @s c_horse_stat_sec 1

# Copy Horse stats to a Skeleton or Zombie Horse
execute as @a[scores={copy_horse_stats=1..}] at @s unless entity @e[type=horse, nbt={Tame:1b}, scores={c_horse_stat_sec=..60}, distance=..8] run tellraw @s {"text": "You need a Horse within 8 blocks that has been Tamed for 1 minute or less.", "color": "red"}
execute as @a[scores={copy_horse_stats=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:ender_pearl"}]}] run tellraw @s {"text": "This command cost 1 Ender Pearl.", "color": "red"}
execute as @a[scores={copy_horse_stats=1..}] at @s unless entity @e[type=#copy_horse_stats:undead_horse, distance=..1] run tellraw @p {"text": "You must ride the Skeleton or Zombie Horse that you wish to give the stats to."}

execute as @a[scores={copy_horse_stats=1..}, nbt={Inventory:[{id:"minecraft:ender_pearl"}]}] at @s run execute as @e[type=#copy_horse_stats:undead_horse,distance=..1,limit=1,sort=nearest] at @s if entity @e[type=horse, nbt={Tame:1b}, scores={c_horse_stat_sec=..60}, distance=..8] run function copy_horse_stats:copy_horse_stats
execute as @a[scores={copy_horse_stats=1..}, nbt={Inventory:[{id:"minecraft:ender_pearl"}]}] at @s if entity @e[type=horse, nbt={Tame:1b}, scores={c_horse_stat_sec=..60}, distance=..8] run clear @s ender_pearl 1

scoreboard players enable @a copy_horse_stats
