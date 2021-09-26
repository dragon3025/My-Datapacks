#Run Every second
schedule function drgn_twks:second 1s

# Melt large areas of snow
execute if score admin dt_melt_snow matches 1.. as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:blaze_powder", tag:{display:{Name:'{"text":"melt_snow"}'}}}}] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 minecraft:air replace minecraft:snow
execute if score admin dt_melt_snow matches 1.. as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:blaze_powder", tag:{display:{Name:'{"text":"melt_snow"}'}}}}] run kill @s

# Dry Farmland
execute if score admin dt_dry_farmland matches 1.. as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:blaze_powder", tag:{display:{Name:'{"text":"dry_farmland"}'}}}}] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 minecraft:dirt replace minecraft:farmland
execute if score admin dt_dry_farmland matches 1.. as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:blaze_powder", tag:{display:{Name:'{"text":"dry_farmland"}'}}}}] run kill @s
