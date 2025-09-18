execute as @s[tag=netherite] run return run function netherite_protection:netherite

execute \
    unless entity @s[nbt={Item:{id:"minecraft:ancient_debris"}}] \
    unless entity @s[nbt={Item:{id:"minecraft:netherite_axe"}}] \
    unless entity @s[nbt={Item:{id:"minecraft:netherite_block"}}] \
    unless entity @s[nbt={Item:{id:"minecraft:netherite_boots"}}] \
    unless entity @s[nbt={Item:{id:"minecraft:netherite_chestplate"}}] \
    unless entity @s[nbt={Item:{id:"minecraft:netherite_helmet"}}] \
    unless entity @s[nbt={Item:{id:"minecraft:netherite_hoe"}}] \
    unless entity @s[nbt={Item:{id:"minecraft:netherite_ingot"}}] \
    unless entity @s[nbt={Item:{id:"minecraft:netherite_leggings"}}] \
    unless entity @s[nbt={Item:{id:"minecraft:netherite_pickaxe"}}] \
    unless entity @s[nbt={Item:{id:"minecraft:netherite_scrap"}}] \
    unless entity @s[nbt={Item:{id:"minecraft:netherite_shovel"}}] \
    unless entity @s[nbt={Item:{id:"minecraft:netherite_sword"}}] \
    unless entity @s[nbt={Item:{id:"minecraft:netherite_upgrade_smithing_template"}}] \
run return run tag @s add not_netherite

data merge entity @s {Invulnerable:1b, Age: -32768, Health: 32767s}
tag @s add netherite
function netherite_protection:netherite
