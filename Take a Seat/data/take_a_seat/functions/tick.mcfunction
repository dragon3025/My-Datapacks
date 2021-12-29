schedule function take_a_seat:tick 1t

scoreboard players enable @a sit
scoreboard players enable @a stand

execute as @a[scores={sit=1..}] at @s run summon llama ~ ~-1.3 ~ {Invulnerable: true, NoAI: true, Tags:[chair, silenced], Silent:true, NoGravity: true, Tame:true, ActiveEffects:[{ShowParticles: false, Duration: 999999999, Id: 14b}], Attributes:[{Name:"minecraft:generic.max_health", Base:0}]}
execute as @a[scores={sit=1..}] at @s run data modify entity @e[tag=chair, limit=1, sort=nearest] Rotation set from entity @s Rotation

scoreboard players set @a[scores={sit=1..}] sit 0

execute as @e[tag=chair] at @s unless entity @p[distance=..2] run data merge entity @s {Tags:[chair, silenced], Silent:true, ActiveEffects:[{ShowParticles: false, Duration: 999999999, Id: 14b}]}

execute as @e[tag=chair, tag=!activated_chair] at @s if entity @p[nbt={RootVehicle:{Entity:{Tags:[chair]}}}, distance=..1] run tag @s add activated_chair

execute as @e[tag=chair, tag=!activated_chair] at @s unless entity @p[distance=..2] run tag @s add kill_chair
execute as @e[tag=activated_chair] at @s unless entity @p[nbt={RootVehicle:{Entity:{Tags:[chair]}}}, distance=..1] run tag @s add kill_chair
execute as @e[tag=activated_chair] at @s unless entity @p[nbt={RootVehicle:{Entity:{Tags:[chair]}}}, distance=..1] run say hi
execute as @e[tag=activated_chair] at @s unless entity @p[nbt={RootVehicle:{Entity:{Tags:[chair]}}}, distance=..1] run tp @p[limit=1, sort=nearest] ~ ~1.5 ~

tp @e[tag=kill_chair] ~ -128 ~
kill @e[tag=kill_chair]

