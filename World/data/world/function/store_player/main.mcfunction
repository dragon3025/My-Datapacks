scoreboard players set @s store_player 0

execute unless block ~ ~ ~ #air run return run tellraw @s {"color": "red", "text": "You head must be in an air block in order to use this."}

# Summon Displays
summon item_display ~-0.25 ~0.6 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,180f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},billboard:"vertical",item:{id:"minecraft:player_head",count:1}, Tags:["store_player_storage", "head"]}
summon text_display ~ ~1 ~ {billboard:"vertical", Tags:["store_player_storage", "name"]}
execute as @s[gamemode=survival] run summon text_display ~ ~0.70 ~ {billboard:"vertical", text:'"Survival"', Tags:["store_player_storage"]}
execute as @s[gamemode=creative] run summon text_display ~ ~0.70 ~ {billboard:"vertical", text:'"Creative"', Tags:["store_player_storage"]}
execute as @s[gamemode=adventure] run summon text_display ~ ~0.70 ~ {billboard:"vertical", text:'"Adventure"', Tags:["store_player_storage"]}
execute as @s[gamemode=spectator] run summon text_display ~ ~0.70 ~ {billboard:"vertical", text:'"Spector"', Tags:["store_player_storage"]}
summon item_display ~0.25 ~0.5 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},billboard:"vertical",width:0.5,height:0.5,item:{id:"minecraft:bundle",count:1}, Tags:["store_player_storage"]}

# Adjust Displays
setblock ~ ~ ~ chest
loot replace block ~ ~ ~ container.0 loot world:player_head
data modify entity @n[type=text_display, tag=store_player_storage, tag=name] text set from block ~ ~ ~ Items[0].components."minecraft:profile".name
data modify entity @n[type=item_display, tag=store_player_storage, tag=head] item set from block ~ ~ ~ Items[0]
setblock ~ ~ ~ air

# Interaction with Marker
summon interaction ~ ~ ~ {Tags:[store_player_storage], Passengers:[{id:"minecraft:marker", Tags:[store_player_storage, new_store_player_storage]}]}

scoreboard players operation @n[type=marker, tag=new_store_player_storage] store_player_id = @s store_player_id

data modify entity @n[type=marker, tag=new_store_player_storage] data.Inventory set from entity @s Inventory
data modify entity @n[type=marker, tag=new_store_player_storage] data.EnderItems set from entity @s EnderItems
execute store result score @n[type=marker, tag=new_store_player_storage] store_player_xp_lv run xp query @s levels
execute store result score @n[type=marker, tag=new_store_player_storage] store_player_xp run xp query @s points

tag @n[type=marker, tag=new_store_player_storage] remove new_store_player_storage

# Clear player stuff
xp set @s 0 levels
xp set @s 0 points
clear
item replace entity @s enderchest.0 with air
item replace entity @s enderchest.1 with air
item replace entity @s enderchest.2 with air
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
item replace entity @s enderchest.5 with air
item replace entity @s enderchest.6 with air
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air
item replace entity @s enderchest.9 with air
item replace entity @s enderchest.10 with air
item replace entity @s enderchest.11 with air
item replace entity @s enderchest.12 with air
item replace entity @s enderchest.13 with air
item replace entity @s enderchest.14 with air
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with air
item replace entity @s enderchest.18 with air
item replace entity @s enderchest.19 with air
item replace entity @s enderchest.20 with air
item replace entity @s enderchest.21 with air
item replace entity @s enderchest.22 with air
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air

tellraw @s {"color": "yellow", "text": "Stored Experience, Inventory, and Ender Chest"}
