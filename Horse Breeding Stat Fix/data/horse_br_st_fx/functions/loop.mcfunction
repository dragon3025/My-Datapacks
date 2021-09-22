# Timed Functions
scoreboard players add timer hbsf_tick 1
execute if score timer hbsf_tick matches 20.. run function horse_br_st_fx:loop_timed
execute if score timer hbsf_tick matches 20.. run scoreboard players set timer hbsf_tick 0
