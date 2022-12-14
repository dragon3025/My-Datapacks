execute if entity @e[tag=zombifyable_horse, distance=..1.5] run scoreboard players reset @s zombify_horse_skeleton_horse_detection
execute if entity @e[tag=zombifyable_horse, distance=..1.5] as @e[tag=zombifyable_horse, limit=1, sort=nearest] at @s run function zombify_horse:transform

execute unless entity @e[tag=zombifyable_horse, distance=..1.5] run scoreboard players add @s zombify_horse_skeleton_horse_detection 1
execute unless entity @e[tag=zombifyable_horse, distance=..1.5] unless score @s zombify_horse_skeleton_horse_detection matches 12.. positioned ^ ^ ^0.5 run function zombify_horse:detect_skeleton_horse/run
execute unless entity @e[tag=zombifyable_horse, distance=..1.5] if score @s zombify_horse_skeleton_horse_detection matches 12.. run scoreboard players reset @s zombify_horse_skeleton_horse_detection
