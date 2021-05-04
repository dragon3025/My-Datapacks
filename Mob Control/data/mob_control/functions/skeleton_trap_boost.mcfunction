execute unless entity @e[type=skeleton_horse, nbt={SkeletonTrap:1b, Tags:["skeleton_trap_boost"]}] unless entity @e[type=skeleton_horse,nbt={Passengers:[{id:"minecraft:skeleton"}]}] run tag @s add boost_skeleton_trap
execute as @s[tag=boost_skeleton_trap] run summon minecraft:skeleton_horse ~ ~ ~ {SkeletonTrap:1b, Tags:["skeleton_trap_boost"]}
execute as @s[tag=boost_skeleton_trap] run summon minecraft:skeleton_horse ~ ~ ~ {SkeletonTrap:1b, Tags:["skeleton_trap_boost"]}
execute as @s[tag=boost_skeleton_trap] run summon minecraft:skeleton_horse ~ ~ ~ {SkeletonTrap:1b, Tags:["skeleton_trap_boost"]}
execute as @s[tag=boost_skeleton_trap] run summon minecraft:skeleton_horse ~ ~ ~ {SkeletonTrap:1b, Tags:["skeleton_trap_boost"]}
execute as @s[tag=boost_skeleton_trap] run summon minecraft:skeleton_horse ~ ~ ~ {SkeletonTrap:1b, Tags:["skeleton_trap_boost"]}
execute as @s[tag=boost_skeleton_trap] run summon minecraft:skeleton_horse ~ ~ ~ {SkeletonTrap:1b, Tags:["skeleton_trap_boost"]}
execute as @s[tag=boost_skeleton_trap] run summon minecraft:skeleton_horse ~ ~ ~ {SkeletonTrap:1b, Tags:["skeleton_trap_boost"]}
execute as @s[tag=boost_skeleton_trap] run summon minecraft:skeleton_horse ~ ~ ~ {SkeletonTrap:1b, Tags:["skeleton_trap_boost"]}
execute as @s[tag=boost_skeleton_trap] run summon minecraft:skeleton_horse ~ ~ ~ {SkeletonTrap:1b, Tags:["skeleton_trap_boost"]}
execute as @s[tag=boost_skeleton_trap] run spreadplayers ~ ~ 1 160 false @e[tag=skeleton_trap_boost]
tag @s[tag=boost_skeleton_trap] add skeleton_trap_boost
