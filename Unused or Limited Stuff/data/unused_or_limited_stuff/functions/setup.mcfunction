# Admin Objectives
scoreboard objectives add uls_dragon_egg dummy "Unused Or Unlimited Stuff Dragon Egg"
scoreboard objectives add uls_illusioner dummy "Unused Or Unlimited Stuff Illusioner"
scoreboard objectives add uls_zombie_horse dummy "Unused Or Unlimited Stuff Zombie Horse"
scoreboard objectives add uls_killer_bunny dummy "Unused Or Unlimited Stuff The Killer Bunny"
scoreboard objectives add uls_end_gateway dummy "Unused Or Unlimited Stuff End Gateways"

execute unless score admin uls_dragon_egg matches -2147483648..2147483647 run scoreboard players set admin uls_dragon_egg 1
execute unless score admin uls_illusioner matches -2147483648..2147483647 run scoreboard players set admin uls_illusioner 1
execute unless score admin uls_zombie_horse matches -2147483648..2147483647 run scoreboard players set admin uls_zombie_horse 1
execute unless score admin uls_killer_bunny matches -2147483648..2147483647 run scoreboard players set admin uls_killer_bunny 1
execute unless score admin uls_end_gateway matches -2147483648..2147483647 run scoreboard players set admin uls_end_gateway 1

# Trigger Objectives
scoreboard objectives add set_frame_visibl trigger "Set Frame Visible"
scoreboard objectives add set_frame_invisi trigger "Set Frame Invisible"
scoreboard objectives add set_frame_fixed trigger "Set Frame Fixed"
scoreboard objectives add set_frame_nonfix trigger "Set Frame Non-Fixed"
scoreboard objectives add set_frame_fixinv trigger "Set Frame Fixed and Invisible"

# Other Objectives
scoreboard objectives add killed_enderdrgn minecraft.killed:minecraft.ender_dragon "Killed Ender Dragon"
scoreboard objectives add zombiehorseticks dummy "Zombie Horse Ticks"

scoreboard objectives add uls_tick dummy "Unused or Limited Stuff Tick"
scoreboard players add dummy uls_tick 0
