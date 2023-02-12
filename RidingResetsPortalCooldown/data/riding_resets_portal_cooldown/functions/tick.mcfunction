schedule function riding_resets_portal_cooldown:tick 1t

execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] at @s as @e[type=boat, distance=..2, limit=1, sort=nearest] run data modify entity @s PortalCooldown set value 0
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:donkey"}}}] at @s as @e[type=donkey, distance=..2, limit=1, sort=nearest] run data modify entity @s PortalCooldown set value 0
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] at @s as @e[type=horse, distance=..2, nbt={Tame:true}, limit=1, sort=nearest] run data modify entity @s PortalCooldown set value 0
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:llama"}}}] at @s as @e[type=llama, distance=..2, limit=1, sort=nearest] run data modify entity @s PortalCooldown set value 0
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] at @s as @e[type=minecart, distance=..2, limit=1, sort=nearest] run data modify entity @s PortalCooldown set value 0
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:mule"}}}] at @s as @e[type=mule, distance=..2, limit=1, sort=nearest] run data modify entity @s PortalCooldown set value 0
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] at @s as @e[type=pig, distance=..2, nbt={Tame:true}, limit=1, sort=nearest] run data modify entity @s PortalCooldown set value 0
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:strider"}}}] at @s as @e[type=strider, distance=..2, nbt={Tame:true}, limit=1, sort=nearest] run data modify entity @s PortalCooldown set value 0
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:skeleton_horse"}}}] at @s as @e[type=skeleton_horse, distance=..2, limit=1, sort=nearest] run data modify entity @s PortalCooldown set value 0
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:trader_llama"}}}] at @s as @e[type=trader_llama, distance=..2, limit=1, sort=nearest] run data modify entity @s PortalCooldown set value 0
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:zombie_horse"}}}] at @s as @e[type=zombie_horse, distance=..2, limit=1, sort=nearest] run data modify entity @s PortalCooldown set value 0
