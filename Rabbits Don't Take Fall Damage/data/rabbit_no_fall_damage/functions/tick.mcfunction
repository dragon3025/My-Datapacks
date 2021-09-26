schedule function rabbit_no_fall_damage:tick 1t

# Rabbits are immune to fall damage.
execute as @e[type=rabbit] run data merge entity @s {FallDistance:0f}
