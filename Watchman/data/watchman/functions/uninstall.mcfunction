schedule clear watchman:second

scoreboard objectives remove set_watchman
scoreboard objectives remove unset_watchman
scoreboard objectives remove watchman_search
scoreboard objectives remove watchman_cooldown

execute as @e[tag=watchman] at @s run function watchman:watchman/unset

function hostile_status:uninstall
