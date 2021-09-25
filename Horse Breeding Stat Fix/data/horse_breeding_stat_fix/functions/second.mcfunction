#Run every second
schedule function horse_breeding_stat_fix:second 1s

#Boost baby horses spawned through breeding
execute as @e[type=horse, tag=!wild_horse_check] at @s if entity @e[type=horse, distance=..4, nbt={Tame:true}] run function horse_breeding_stat_fix:boost_baby_stats

#Prevent boosting the same horses twice
tag @e[type=horse] add wild_horse_check
