scoreboard players add timer horse_tame_message_tick 1
execute if score timer horse_tame_message_tick matches 20.. run function horse_tame_message:loop_seconds
execute if score timer horse_tame_message_tick matches 20.. run scoreboard players set timer horse_tame_message_tick 0
