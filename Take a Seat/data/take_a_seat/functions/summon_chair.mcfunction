summon dolphin ~ ~-0.6 ~ {Invulnerable: true, NoAI: true, Tags:[chair, silenced], Silent:true, NoGravity: true, Tame:true, ActiveEffects:[{ShowParticles: false, Duration: -1, Id: 14b}], Attributes:[{Name:"minecraft:generic.max_health", Base:0}]}
data modify entity @e[type=dolphin, tag=chair, limit=1, sort=nearest] Rotation set from entity @s Rotation
ride @s mount @e[tag=chair, limit=1, sort=nearest]
scoreboard players set @s sit 0
