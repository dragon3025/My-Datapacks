scoreboard objectives add light_level_tick dummy "Light Level Display Tick Timer"
scoreboard objectives add light_lv_toggle trigger "Light Level Display Toggle"
scoreboard objectives add light_lv_display dummy "Light Level Display"

scoreboard objectives add -1 dummy "-1"
scoreboard players set variable -1 -1

scoreboard players add dummy light_level_tick 0
