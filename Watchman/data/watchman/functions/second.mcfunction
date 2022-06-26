schedule function watchman:second 1s

scoreboard players enable @a set_watchman

execute as @a[scores={set_watchman=1..}] at @s run function watchman:set_watchman
execute as @a[scores={set_watchman=-1}] at @s run function watchman:unset_watchman

execute as @e[tag=watchman] unless entity @s[scores={watchman_cooldown=1..}] at @s anchored eyes run function watchman:watchman_villager/main
scoreboard players remove @e[tag=watchman] watchman_cooldown 1
