scoreboard objectives remove spwn_blcker_tick
scoreboard objectives remove raider_wave_number
scoreboard objectives remove spawn_blocker_set
scoreboard objectives remove anti_spawn_blocker_set
scoreboard objectives remove spawn_blocker_detect
scoreboard objectives remove spawn_blocker_gui
scoreboard objectives remove spawn_blocker_menu

#It's best locate and manually remove these, but in case you missed one:
execute as @e[tag=spawn_blocker] at @s run summon item ~ ~ ~ {Item:{id:"netherite_ingot", Count:1}}
kill @e[tag=spawn_blocker]
kill @e[tag=anti_spawn_blocker]
