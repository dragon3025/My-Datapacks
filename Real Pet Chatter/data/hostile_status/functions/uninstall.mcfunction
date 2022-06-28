schedule clear hostile_status:10_seconds

tag @e remove persistent
tag @e remove hostile

# Reload in case another pack is using this namespace. In that case, the minecraft:load tag will automatically start this namespace back up.
reload
