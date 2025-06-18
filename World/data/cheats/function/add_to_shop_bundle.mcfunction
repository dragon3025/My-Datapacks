data modify entity @s Item.components."minecraft:bundle_contents" append from entity \
    @n[type=item, nbt=!{Item:{id:"minecraft:bundle"}}, distance=..2] Item
kill @n[type=item, nbt=!{Item:{id:"minecraft:bundle"}}, distance=..2]

execute if entity @n[type=item, nbt=!{Item:{id:"minecraft:bundle"}}, distance=..2] run function cheats:add_to_shop_bundle
