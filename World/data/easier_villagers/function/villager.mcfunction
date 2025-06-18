execute as @s[nbt={VillagerData:{profession:"minecraft:none"}}] run return fail
execute as @s[nbt={VillagerData:{profession:"minecraft:nitwit"}}] run return fail

execute as @s[nbt={CustomName:"reset"}] run return run function easier_villagers:reset
execute as @s[nbt={CustomName:"Reset"}] run return run function easier_villagers:reset
execute as @s[nbt={CustomName:"RESET"}] run return run function easier_villagers:reset

execute as @s[nbt=!{VillagerData:{level:5}}, nbt=!{Offers:{Recipes:[{buy:{id:"minecraft:emerald"}, sell:{id:"minecraft:emerald"}}]}}] run return run data modify entity @s Offers.Recipes prepend value {buy:{id:"emerald", count:1}, sell:{id:"emerald", count: 1}, maxUses:99, rewardExp:false, xp:63}

execute as @s[nbt={VillagerData:{level:5}, Offers:{Recipes:[{buy:{id:"minecraft:emerald"}, sell:{id:"minecraft:emerald"}}]}}] run data remove entity @s Offers.Recipes[0]
