schedule function netherite_protection:tick 1t

execute as @e[type=item, tag=!not_netherite] run function netherite_protection:netherite_check
