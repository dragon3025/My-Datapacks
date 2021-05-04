execute unless entity @s[scores={light_lv_display=-2147483648..2147483647}] run scoreboard players set @s light_lv_display -1
scoreboard players operation @s light_lv_display *= variable -1
tag @s[scores={light_lv_display=1}] add display_light_lv
tellraw @s[scores={light_lv_display=1}] {"color": "yellow", "text": "Light Lv Display On"}
tag @s[scores={light_lv_display=-1}] remove display_light_lv
tellraw @s[scores={light_lv_display=-1}] {"color": "yellow", "text": "Light Lv Display Off"}