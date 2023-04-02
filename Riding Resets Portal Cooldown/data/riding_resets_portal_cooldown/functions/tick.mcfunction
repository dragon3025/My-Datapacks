schedule function riding_resets_portal_cooldown:tick 1t

execute as @a on vehicle run data modify entity @s PortalCooldown set value 0
