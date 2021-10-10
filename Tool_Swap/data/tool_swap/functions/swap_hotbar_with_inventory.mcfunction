summon chest_minecart ~ ~ ~ {Tags:["hotbar_inv_swap"]}

item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.0 from entity @s hotbar.0
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.1 from entity @s hotbar.1
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.2 from entity @s hotbar.2
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.3 from entity @s hotbar.3
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.4 from entity @s hotbar.4
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.5 from entity @s hotbar.5
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.6 from entity @s hotbar.6
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.7 from entity @s hotbar.7
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.8 from entity @s hotbar.8

item replace entity @s hotbar.0 from entity @s inventory.0
item replace entity @s hotbar.1 from entity @s inventory.1
item replace entity @s hotbar.2 from entity @s inventory.2
item replace entity @s hotbar.3 from entity @s inventory.3
item replace entity @s hotbar.4 from entity @s inventory.4
item replace entity @s hotbar.5 from entity @s inventory.5
item replace entity @s hotbar.6 from entity @s inventory.6
item replace entity @s hotbar.7 from entity @s inventory.7
item replace entity @s hotbar.8 from entity @s inventory.8

item replace entity @s inventory.0 from entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.0
item replace entity @s inventory.1 from entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.1
item replace entity @s inventory.2 from entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.2
item replace entity @s inventory.3 from entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.3
item replace entity @s inventory.4 from entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.4
item replace entity @s inventory.5 from entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.5
item replace entity @s inventory.6 from entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.6
item replace entity @s inventory.7 from entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.7
item replace entity @s inventory.8 from entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.8

item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.0 with air
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.1 with air
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.2 with air
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.3 with air
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.4 with air
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.5 with air
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.6 with air
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.7 with air
item replace entity @e[tag=hotbar_inv_swap,limit=1,sort=nearest] container.8 with air
kill @e[tag=hotbar_inv_swap,limit=1,sort=nearest]
