execute store result score @s hbsf_health run attribute @s generic.max_health get 100000
execute store result score @s hbsf_speed run attribute @s generic.movement_speed get 100000
execute store result score @s hbsf_jump run attribute @s horse.jump_strength get 100000

scoreboard players add @s hbsf_health 3000000
scoreboard players add @s hbsf_speed 33750
scoreboard players add @s hbsf_jump 100000

execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base float 0.000005 run scoreboard players get @s hbsf_health
execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base float 0.000005 run scoreboard players get @s hbsf_speed
execute store result entity @s Attributes[{Name:"minecraft:horse.jump_strength"}].Base float 0.000005 run scoreboard players get @s hbsf_jump
