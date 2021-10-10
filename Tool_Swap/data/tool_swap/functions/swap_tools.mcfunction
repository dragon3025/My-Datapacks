summon chest_minecart ~ ~ ~ {Tags:["swap_tools"]}

execute as @s[nbt={SelectedItemSlot:0}] run item replace entity @e[tag=swap_tools,limit=1,sort=nearest] container.0 from entity @s hotbar.0
execute as @s[nbt={SelectedItemSlot:1}] run item replace entity @e[tag=swap_tools,limit=1,sort=nearest] container.0 from entity @s hotbar.1
execute as @s[nbt={SelectedItemSlot:2}] run item replace entity @e[tag=swap_tools,limit=1,sort=nearest] container.0 from entity @s hotbar.2
execute as @s[nbt={SelectedItemSlot:3}] run item replace entity @e[tag=swap_tools,limit=1,sort=nearest] container.0 from entity @s hotbar.3
execute as @s[nbt={SelectedItemSlot:4}] run item replace entity @e[tag=swap_tools,limit=1,sort=nearest] container.0 from entity @s hotbar.4
execute as @s[nbt={SelectedItemSlot:5}] run item replace entity @e[tag=swap_tools,limit=1,sort=nearest] container.0 from entity @s hotbar.5
execute as @s[nbt={SelectedItemSlot:6}] run item replace entity @e[tag=swap_tools,limit=1,sort=nearest] container.0 from entity @s hotbar.6
execute as @s[nbt={SelectedItemSlot:7}] run item replace entity @e[tag=swap_tools,limit=1,sort=nearest] container.0 from entity @s hotbar.7
execute as @s[nbt={SelectedItemSlot:8}] run item replace entity @e[tag=swap_tools,limit=1,sort=nearest] container.0 from entity @s hotbar.8

execute as @s[nbt={SelectedItemSlot:0}] run item replace entity @s hotbar.0 from entity @s enderchest.0
execute as @s[nbt={SelectedItemSlot:1}] run item replace entity @s hotbar.1 from entity @s enderchest.0
execute as @s[nbt={SelectedItemSlot:2}] run item replace entity @s hotbar.2 from entity @s enderchest.0
execute as @s[nbt={SelectedItemSlot:3}] run item replace entity @s hotbar.3 from entity @s enderchest.0
execute as @s[nbt={SelectedItemSlot:4}] run item replace entity @s hotbar.4 from entity @s enderchest.0
execute as @s[nbt={SelectedItemSlot:5}] run item replace entity @s hotbar.5 from entity @s enderchest.0
execute as @s[nbt={SelectedItemSlot:6}] run item replace entity @s hotbar.6 from entity @s enderchest.0
execute as @s[nbt={SelectedItemSlot:7}] run item replace entity @s hotbar.7 from entity @s enderchest.0
execute as @s[nbt={SelectedItemSlot:8}] run item replace entity @s hotbar.8 from entity @s enderchest.0

item replace entity @s enderchest.0 from entity @s enderchest.1
item replace entity @s enderchest.1 from entity @s enderchest.2
item replace entity @s enderchest.2 from entity @e[tag=swap_tools,limit=1,sort=nearest] container.0

item replace entity @e[tag=swap_tools,limit=1,sort=nearest] container.0 with air
kill @e[tag=swap_tools,limit=1,sort=nearest]
