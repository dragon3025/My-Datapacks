schedule function end_gateway_placer:second 1s

# End Gateway Placer
execute as @e[predicate=end_gateway_placer:gateway] at @s if block ~ ~ ~ #end_gateway_placer:air run function end_gateway_placer:gateway_placer
