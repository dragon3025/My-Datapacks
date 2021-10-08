# Store the result into a score (multiplied for later division)
execute store result score @s horse_breeding_stat_fix_health run attribute @s generic.max_health get 100000
execute store result score @s horse_breeding_stat_fix_speed run attribute @s generic.movement_speed get 100000
execute store result score @s horse_breeding_stat_fix_jump run attribute @s horse.jump_strength get 100000

# Add max attribute values (multiplied for later division)
scoreboard players add @s horse_breeding_stat_fix_health 3000000
scoreboard players add @s horse_breeding_stat_fix_speed 33750
scoreboard players add @s horse_breeding_stat_fix_jump 100000

# Convert score into attribute while averaging and un-multiplying at the same time
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base float 0.000005 run scoreboard players get @s horse_breeding_stat_fix_health
execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base float 0.000005 run scoreboard players get @s horse_breeding_stat_fix_speed
execute store result entity @s Attributes[{Name:"minecraft:horse.jump_strength"}].Base float 0.000005 run scoreboard players get @s horse_breeding_stat_fix_jump

# Remove scores that aren't needed anymore
scoreboard players reset @s horse_breeding_stat_fix_health
scoreboard players reset @s horse_breeding_stat_fix_speed
scoreboard players reset @s horse_breeding_stat_fix_jump
