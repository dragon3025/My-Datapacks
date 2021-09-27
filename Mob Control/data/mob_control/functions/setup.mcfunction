#Set Admin Scores if not set yet
scoreboard objectives add mob_ctrl_copy_ho dummy "Mob Control Copy Horse Stats"

execute unless score admin mob_ctrl_copy_ho matches -2147483648..2147483647 run scoreboard players set admin mob_ctrl_copy_ho 1

# Trigger Scores
scoreboard objectives add copy_horse_stats trigger "Copy Horse Stats to Skeleton or Zombie Horse"

# Misc Scores
scoreboard objectives add z_vill_conv_time dummy "Zombie Villager Conversion Time"
scoreboard objectives add c_horse_stat_sec dummy "Copy Horse Stats Seconds"
