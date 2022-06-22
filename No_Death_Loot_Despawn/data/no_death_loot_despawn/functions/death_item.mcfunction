execute store result score @s death_item_age run data get entity @s Age 1
execute as @s[scores={death_item_age=5900..}] run data merge entity @s {Age:5900}
