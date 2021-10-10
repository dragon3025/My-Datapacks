# Store the result into a score (multiplied for later division)
execute store result score @s horse_breeding_stat_fix_health run attribute @s generic.max_health get 35791394
execute store result score @s horse_breeding_stat_fix_speed run attribute @s generic.movement_speed get 3181457254
execute store result score @s horse_breeding_stat_fix_jump run attribute @s horse.jump_strength get 1073741823

# Add max attribute values (multiplied for later division)
scoreboard players add @s horse_breeding_stat_fix_health 1073741820
scoreboard players add @s horse_breeding_stat_fix_speed 1073741823
scoreboard players add @s horse_breeding_stat_fix_jump 1073741823

# Convert score into attribute while averaging and un-multiplying at the same time
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base float 0.00000001396983867 run scoreboard players get @s horse_breeding_stat_fix_health
execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base float 0.0000000001571606846 run scoreboard players get @s horse_breeding_stat_fix_speed
execute store result entity @s Attributes[{Name:"minecraft:horse.jump_strength"}].Base float 0.0000000004656612877 run scoreboard players get @s horse_breeding_stat_fix_jump

# Scores can rarely go over the max amount by a very tiny amount. Prevent them from doing so.
## Get amount
execute store result score @s horse_breeding_stat_fix_health run attribute @s generic.max_health get 1
execute store result score @s horse_breeding_stat_fix_speed run attribute @s generic.movement_speed get 10000
execute store result score @s horse_breeding_stat_fix_jump run attribute @s horse.jump_strength get 1
## Set to max if the amount is over
attribute @s[scores={horse_breeding_stat_fix_health=30..}] generic.max_health base set 30
attribute @s[scores={horse_breeding_stat_fix_speed=3375..}] generic.max_health base set 0.3375
attribute @s[scores={horse_breeding_stat_fix_jump=1..}] generic.max_health base set 1

# Remove scores that aren't needed anymore
scoreboard players reset @s horse_breeding_stat_fix_health
scoreboard players reset @s horse_breeding_stat_fix_speed
scoreboard players reset @s horse_breeding_stat_fix_jump
