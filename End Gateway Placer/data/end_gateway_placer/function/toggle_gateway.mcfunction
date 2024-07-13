execute if dimension the_end run return run tellraw @s {"text": "You can't use this in The End.", "color": "red"}

execute if block ~ ~ ~ end_gateway run return run function end_gateway_placer:remove_gateway
function end_gateway_placer:place_gateway
