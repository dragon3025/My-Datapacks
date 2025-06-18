say reset

summon villager ~ ~ ~ {VillagerData:{profession:"minecraft:none"}, Tags:[reset_villager]}
data modify entity @n[type=villager, tag=reset_villager] VillagerData.type set from entity @s VillagerData.type
tag @n[type=villager, tag=reset_villager] remove reset_villager

tp @s ~ -1000 ~
kill @s
