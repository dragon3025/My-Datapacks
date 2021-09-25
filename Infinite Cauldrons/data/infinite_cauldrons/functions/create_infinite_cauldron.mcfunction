summon area_effect_cloud ~ ~ ~ {Duration:1000000000, Tags:[infinite_cauldron]}
particle splash ~ ~0.5 ~ 0.1 0.1 0.1 1 10
playsound entity.player.splash block @a ~ ~ ~
kill @s
