execute as @e[type=horse, tag=!wild_horse_check] at @s if entity @e[type=horse, distance=..4, nbt={Tame:true}] run function horse_br_st_fx:boost_baby_stats

tag @e[type=horse] add wild_horse_check
