schedule function end_gateway_placer:second 1s

scoreboard players enable @a place_gateway
scoreboard players enable @a remove_gateway

execute as @a[scores={place_gateway=1..}] at @s run function end_gateway_placer:place_gateway
execute as @a[scores={remove_gateway=1..}] at @s run function end_gateway_placer:remove_gateway
