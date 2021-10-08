schedule clear spawn_blockers:tick
schedule clear spawn_blockers:5_ticks

scoreboard objectives remove raider_wave_number

scoreboard objectives remove spawn_blocker_set
scoreboard objectives remove anti_spawn_blocker_set
scoreboard objectives remove spawn_blocker_detect
scoreboard objectives remove spawn_blocker_gui

scoreboard objectives remove spawn_blocker_menu

kill @e[tag=spawn_blocker]
kill @e[tag=anti_spawn_blocker]

tag @e remove spawn_blocker
tag @e remove anti_spawn_blocker
