summon dolphin ~ ~-0.6 ~ {Invulnerable: true, NoAI: true, Tags:[chair], Silent:true, NoGravity: true, active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}], Attributes:[{Name:"minecraft:generic.max_health", Base:0}]}
data modify entity @n[type=dolphin, tag=chair] Rotation set from entity @s Rotation
ride @s mount @n[tag=chair]
scoreboard players set @s sit 0
