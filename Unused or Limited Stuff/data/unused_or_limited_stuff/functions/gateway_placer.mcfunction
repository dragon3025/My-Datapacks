execute as @s[nbt={Item:{tag:{display:{Name:'{"text":"place_gateway"}'}}}}] run tag @s add place_gateway
execute as @s[nbt={Item:{tag:{display:{Name:'{"text":"remove_gateway"}'}}}}] run tag @s add remove_gateway

execute as @s[tag=place_gateway] run setblock ~ ~ ~ minecraft:end_gateway{Age:200L}

execute as @s[tag=remove_gateway] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:end_gateway

execute as @s[tag=place_gateway] run kill @s
execute as @s[tag=remove_gateway] run kill @s
