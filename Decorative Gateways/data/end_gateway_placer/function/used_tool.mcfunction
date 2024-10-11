advancement revoke @s only end_gateway_placer:use

execute as @s[scores={gateway_tool_cooldown=1..}] run return run scoreboard players set @s gateway_tool_cooldown 2
scoreboard players set @s gateway_tool_cooldown 2

execute if dimension the_end run return run tellraw @s {"text": "You can't use this in The End.", "color": "red"}

execute anchored eyes positioned ^0 ^0 ^3 align xyz run function end_gateway_placer:toggle_gateway
