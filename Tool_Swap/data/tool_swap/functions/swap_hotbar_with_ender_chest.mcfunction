summon chest_minecart ~ ~ ~ {Tags:["hotbar_ender_swap"]}

item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.0 from entity @s hotbar.0
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.1 from entity @s hotbar.1
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.2 from entity @s hotbar.2
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.3 from entity @s hotbar.3
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.4 from entity @s hotbar.4
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.5 from entity @s hotbar.5
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.6 from entity @s hotbar.6
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.7 from entity @s hotbar.7
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.8 from entity @s hotbar.8

item replace entity @s hotbar.0 from entity @s enderchest.0
item replace entity @s hotbar.1 from entity @s enderchest.1
item replace entity @s hotbar.2 from entity @s enderchest.2
item replace entity @s hotbar.3 from entity @s enderchest.3
item replace entity @s hotbar.4 from entity @s enderchest.4
item replace entity @s hotbar.5 from entity @s enderchest.5
item replace entity @s hotbar.6 from entity @s enderchest.6
item replace entity @s hotbar.7 from entity @s enderchest.7
item replace entity @s hotbar.8 from entity @s enderchest.8

item replace entity @s enderchest.0 from entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.0
item replace entity @s enderchest.1 from entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.1
item replace entity @s enderchest.2 from entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.2
item replace entity @s enderchest.3 from entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.3
item replace entity @s enderchest.4 from entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.4
item replace entity @s enderchest.5 from entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.5
item replace entity @s enderchest.6 from entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.6
item replace entity @s enderchest.7 from entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.7
item replace entity @s enderchest.8 from entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.8

item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.0 with air
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.1 with air
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.2 with air
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.3 with air
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.4 with air
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.5 with air
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.6 with air
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.7 with air
item replace entity @e[tag=hotbar_ender_swap,limit=1,sort=nearest] container.8 with air
kill @e[tag=hotbar_ender_swap,limit=1,sort=nearest]
