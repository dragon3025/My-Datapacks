#Set Admin Scores if not set yet
scoreboard objectives add mob_ctrl_copy_ho dummy "Mob Control Copy Horse Stats"
scoreboard objectives add mob_ctrl_e_guard dummy "Mob Control Elder_Guardian"
scoreboard objectives add mob_ctrl_ske_trp dummy "Mob Control Skeleton Traps"
scoreboard objectives add mob_ctrl_zomb_re dummy "Mob Control Zombie Reinforcements Follow Rules"

execute unless score admin mob_ctrl_copy_ho matches -2147483648..2147483647 run scoreboard players set admin mob_ctrl_copy_ho 1
execute unless score admin mob_ctrl_e_guard matches -2147483648..2147483647 run scoreboard players set admin mob_ctrl_e_guard 1
execute unless score admin mob_ctrl_ske_trp matches -2147483648..2147483647 run scoreboard players set admin mob_ctrl_ske_trp 1
execute unless score admin mob_ctrl_zomb_re matches -2147483648..2147483647 run scoreboard players set admin mob_ctrl_zomb_re 1

# Trigger Scores
scoreboard objectives add copy_horse_stats trigger "Copy Horse Stats to Skeleton or Zombie Horse"

# Misc Scores
scoreboard objectives add mob_control_tick dummy "Mob Control Tick"
scoreboard players add dummy mob_control_tick 0

scoreboard objectives add daytime dummy "Daytime"
scoreboard objectives add pos_y dummy "Position Y"
scoreboard objectives add pos_y_mod dummy "Position Y Modified"
scoreboard objectives add sleeptimer dummy "Sleep Timer"
scoreboard objectives add z_vill_conv_time dummy "Zombie Villager Conversion Time"
