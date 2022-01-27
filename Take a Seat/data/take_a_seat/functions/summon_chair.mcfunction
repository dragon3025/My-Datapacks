summon llama ~ ~-1.3 ~ {Invulnerable: true, NoAI: true, Tags:[chair, silenced], Silent:true, NoGravity: true, Tame:true, ActiveEffects:[{ShowParticles: false, Duration: 1, Id: 14b}], Attributes:[{Name:"minecraft:generic.max_health", Base:0}]}
data modify entity @e[type=llama, tag=chair, limit=1, sort=nearest] Rotation set from entity @s Rotation
scoreboard players set @s sit 0
