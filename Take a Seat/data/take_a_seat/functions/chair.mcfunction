execute if entity @p[nbt={RootVehicle:{Entity:{Tags:[chair]}}}, distance=..1] run tag @s add activated_seat

execute at @s[tag=activated_seat] unless entity @p[nbt={RootVehicle:{Entity:{Tags:[chair]}}}, distance=..1] run function take_a_seat:despawn_chair
execute at @s[tag=!activated_seat] unless entity @p[distance=..2] run function take_a_seat:despawn_chair
