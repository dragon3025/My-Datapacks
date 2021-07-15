# Timed Functions
scoreboard players add dummy hbsf_tick 1
execute if score dummy hbsf_tick matches 20.. run function horse_br_st_fx:loop_timed
execute if score dummy hbsf_tick matches 20.. run scoreboard players set dummy hbsf_tick 0
