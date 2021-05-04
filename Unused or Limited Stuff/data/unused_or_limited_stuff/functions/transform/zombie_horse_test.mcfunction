execute unless entity @s[scores={zombiehorseticks=-2147483648..2147483647}] run particle heart ~ ~ ~ 1 1 1 1 100
execute unless entity @s[scores={zombiehorseticks=-2147483648..2147483647}] run scoreboard players set @s zombiehorseticks 200
execute as @s[scores={zombiehorseticks=1..}, nbt={HurtTime:10s}] at @s if entity @e[type=minecraft:player,distance=..6,nbt={SelectedItem: {id: "minecraft:rotten_flesh"}}] run function unused_or_limited_stuff:transform/zombie_horse
scoreboard players remove @s[scores={zombiehorseticks=1..}] zombiehorseticks 1
