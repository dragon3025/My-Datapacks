execute unless entity @e[type=block_display, tag=gateway_placement, distance=..4] run summon block_display ~ ~ ~ {Glowing:1b,billboard:"fixed",Tags:["gateway_placement"],block_state:{Name:"tinted_glass"}}

execute run tp @n[type=block_display, tag=gateway_placement, distance=..4] ~ ~ ~ 0.0 0.0

execute as @s[scores={toggle_decorative_gateway=1..}] run function end_gateway_placer:toggle_gateway

