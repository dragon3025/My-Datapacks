# Admin Objectives
scoreboard objectives add uls_end_gateway dummy "Unused Or Unlimited Stuff End Gateways"

execute unless score admin uls_end_gateway matches -2147483648..2147483647 run scoreboard players set admin uls_end_gateway 1

# Other Objectives
scoreboard objectives add killed_enderdrgn minecraft.killed:minecraft.ender_dragon "Killed Ender Dragon"
