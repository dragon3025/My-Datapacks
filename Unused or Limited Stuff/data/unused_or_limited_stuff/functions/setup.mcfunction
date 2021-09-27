# Admin Objectives
scoreboard objectives add uls_dragon_egg dummy "Unused Or Unlimited Stuff Dragon Egg"
scoreboard objectives add uls_killer_bunny dummy "Unused Or Unlimited Stuff The Killer Bunny"
scoreboard objectives add uls_end_gateway dummy "Unused Or Unlimited Stuff End Gateways"

execute unless score admin uls_dragon_egg matches -2147483648..2147483647 run scoreboard players set admin uls_dragon_egg 1
execute unless score admin uls_killer_bunny matches -2147483648..2147483647 run scoreboard players set admin uls_killer_bunny 1
execute unless score admin uls_end_gateway matches -2147483648..2147483647 run scoreboard players set admin uls_end_gateway 1

# Trigger Objectives
scoreboard objectives add frame_invisible trigger "Set Frame Invisible"
scoreboard objectives add frame_fixed trigger "Set Frame Fixed"
scoreboard objectives add frame_fixd_invis trigger "Set Frame Fixed and Invisible"

# Other Objectives
scoreboard objectives add killed_enderdrgn minecraft.killed:minecraft.ender_dragon "Killed Ender Dragon"
