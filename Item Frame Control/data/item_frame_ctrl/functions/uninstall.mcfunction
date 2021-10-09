scoreboard objectives remove frame_invisible
scoreboard objectives remove frame_fixed
scoreboard objectives remove frame_fixed_invisible

execute as @e[type=#item_frame_ctrl:item_frame] run data merge entity @s {Fixed:false, Invisible:false}
execute as @e[type=#item_frame_ctrl:item_frame] run data merge entity @s {Invisible:false}
tellraw @s {"text": "All item frames close enought to players to be loaded have been set to unfixed and visible. For all other item frames you'll have use a command near them: if this pack hasn't been removed yet, use this command; if it has been removed, use '/merge entity @e[type=<item_frame/glow_item_frame> {Fixed:false, Invisible:false}'.", "color": "red"}
