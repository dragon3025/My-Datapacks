scoreboard players set @s watchman_search 0
scoreboard players set @s watchman_cooldown 60
tag @s add found_mob
effect give @e[tag=watchman_hostile, tag=!persistent, limit=1, sort=nearest] glowing 10
